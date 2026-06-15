Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v0E/LsqHL2ouCAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:04:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF03B683608
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:04:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="J5lNNa/5";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED4410E19C;
	Mon, 15 Jun 2026 05:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F79510E19C;
 Mon, 15 Jun 2026 05:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781499846; x=1813035846;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z2RVI2c7uJ61y4iD93AE5h9BV4RXd9U3aBg2IaAOAhY=;
 b=J5lNNa/5y/iPXSb2wa6Ivd0yAMf8SWJGQaOqyhzk1Muq55geuGzjsBog
 AILaA0t9Z6h2MxzIbo4c/W5ZDZ4Ajju7I6zRKaKFN194MAFEKPx20GLrD
 Vbd6YN3PzkaI3m20nKqjVdMDCJCzLntSmlEbv0lZLqqJOZ8//zMDlIMYg
 bfQ2oPD0rQLq8vfq03qeRVRRsYjh9GSwKpWsh6dz7cSzbXoDNwAPgLGOf
 VlQsgtAfDOgfZ01sXoErvl8jzs3qMmKDNiPKe3ad2FuiE49wECf2FULao
 h/++pTnlom0CUFHLl7dhmYhJyd75XmorgQsQUAroU/P0XzkwS6uyZkSMO A==;
X-CSE-ConnectionGUID: QtaCN07wT7GI8Lp76FIjEw==
X-CSE-MsgGUID: 3bISUaaYRQGkIRTuOBs27Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93619025"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="93619025"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:03:56 -0700
X-CSE-ConnectionGUID: 9xJOBw1XSBWCHm38wbYYtg==
X-CSE-MsgGUID: 4WkA8525SmK0Dzgwb4mWQg==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:03:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:03:56 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 22:03:56 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.11) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:03:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cD1dYM81OhYgr1fUvl2H0ILwrwa3XxzZzMC+E9NMPNflHtpkdVZo53mKut/Wdbr6Lg3Aw3aqejQt2Tw57JpggN4Mc0YH3IwsoTXC/ZlZyASXw8uTa3sB2/gVVNZmHM9gsC2T3MjfMP/zXS5t76pihKsNGumqWZzTe11kF91tWPuvJGTgF+HkEBnhkcC6ubCqDcp3lSjXqQ2y6AZcimy2opluQ/qO9zt/myGByfppgvZ3E+4mWmlCq6ZfGJypaNh9wIopSJBG3gCfdBBGCrgP6I1GU4L428ro5vOMcQgTh3ufrlgW/XN2EupBrbjKpe0XtZ4papQ2MQsZn4EM+erVFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z2RVI2c7uJ61y4iD93AE5h9BV4RXd9U3aBg2IaAOAhY=;
 b=hpisUsBZhzgFH19eMXlFor7V6BPlKt4k+0otFYTu8W4s+s/MPl0E025XA7afj551xMfD33v3X2G2Y7oNoARyZcyHmVcEPBVRUKYHjCRVwErliaKWpFCmImW2xMrqwA+38xhMPkO+5a1HMnXHovtCAAIZT/qiXH2D0ovOH2Zc4YoJKttWwnB4jTdNP9xFNFet3cO1T04784plIsc0xNeuFuK8iVxN7+uMBu9Y9AxY0D7SCU5ZBXnVo2cmCkmFEUtBdVPZw+HLx/feDHrUuri9s2gh/D2MN/BZUEjlgxNIoj29cOeV5gG90RgjI4/LFqzxwdPlOxajJWc+eV0belBrCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DS7PR11MB6128.namprd11.prod.outlook.com
 (2603:10b6:8:9c::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 05:03:54 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 05:03:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 5/8] drm/i915: override Snps's VS/PE when requested
Thread-Topic: [PATCH v7 5/8] drm/i915: override Snps's VS/PE when requested
Thread-Index: AQHc930ENW49sjMUyE2328Llh0rNCrY/E4dggAAF90A=
Date: Mon, 15 Jun 2026 05:03:53 +0000
Message-ID: <DS4PPFE901A304FC6AABC8D3D5262E54D49E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
 <20260608192821.3414590-6-michal.grzelak@intel.com>
 <DS4PPFE901A304F558E4AAFD937F7AD21A4E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304F558E4AAFD937F7AD21A4E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DS7PR11MB6128:EE_
x-ms-office365-filtering-correlation-id: 53dec976-85d2-4725-1e41-08deca9b7f62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|38070700021|3023799007|6133799003|4143699003|11063799006|56012099006|22082099003|18002099003;
x-microsoft-antispam-message-info: +V6/2khd84kj77ckG0c7u5BlbwY7iGxsf50Be3ej99IFJcYJ8hRjOix2En8p/wXmJgv2TI1jTIEEOxruO6FjWLkfANsIfhF5RI4CpkTDezsiPJd183LYRy34M2PjCWpMpNbPW14XUEgfzddUXo2rxtNSTvOd5gbFTCjm7tk+HaMTmc+Go9f3Mzav/lIq8vOOxcSQzQ10stWUf9+K/jXXj7c2DH7JhZS6hyfLtE+u2pePsXgYjxwXc9Jc9dexBIysQi3qqYZog7ucfAZ656t21LlMWsJnA7FHzKs9JommnwBvnrjD+GIXZ8qmiKY/PbAtYn/sLpEowkxDr42PjxFRaCKvDT93EWR9K3caw/nmdCxHlfg4e9LVzazVXO5OtDGcZK2lYJ4DjYdZahX+svt02JdxfldUNwsnQ0l9kO4UCX4f/kUEyY0KGsfuTqlh+ljO4NpO6rHfwpvPvx+/XZp0q2iKAVv8S3zj9h4nAT4vo18qh1s2a3a7UO1lg958X6ptktR+KxB3/1eKF8b+khF46RG4zDw8Hcw3TrJCAJq11JDLnctKOLnN+t162O9Hngvn8QzD2omaApoXxTsPhoh5mx97bOJbHFkqMsU2EI4DZfLq9NdqKYucVGWmsphKhgWqgDEQSdbAkN4DAlIrMYyKUnTtSOpj/nI9Tqrs076y4iFsADz59ufJ3/h+O4D+92RlTKQf5KI58v6neku5Y/ltnF+wiFDP9Btiupj/dXabAZZecXCDXTOehh4iZ4npBsSs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(38070700021)(3023799007)(6133799003)(4143699003)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YjA5a3RzTWd1alBPUUo5ekJ4T2NMWGRWSU5wUGliYTlrbzc1ZjAwZi9SRmN2?=
 =?utf-8?B?eFJkbmlxR3lUc1ZyWXdOWWxPMGF2MWFkMjZ4cVh2djhlanRDQWFYQlJiT0V4?=
 =?utf-8?B?WEpmWmg0U3pES1VCOFZWVlR3dFFXMDZzTjlzL2NkRWJpZXp5NjA5aFE5blZl?=
 =?utf-8?B?K3pSVDliNlFoVGFEeXhrczEyQzM5TE5jSjNJQlZUUFNYR3VJRkJ1RHRtZDl2?=
 =?utf-8?B?cUdzSEEvRzF3WVNPLzhLVmxjWjRvOGVlaCtPOFVDczl0c1VnazZXZ0lvNlp4?=
 =?utf-8?B?dERwM1YvdlN1aE8xYk1Odk1PZWFUSGZHSVVnYXBUZERHK0JxQXIrWU9JZ0tx?=
 =?utf-8?B?eEttdjgrWFNDWTRhSlJMS0lpUS9sNHRGajM4SmJmNVBFYTNZcXJRVjFaU3l6?=
 =?utf-8?B?Wk4xSGJtaldqWGpyaEZLOEt3eHFuRVd0aXpUV3FRVHZCd0s3T3lwWlprRHJH?=
 =?utf-8?B?ejFzT1JZQjcrK0FpanpTMEpFeXFGRGRGTWYvQXAvVDlnZ3crNGorNGZFU0Fq?=
 =?utf-8?B?cFRMajZ3RjE2L25pR1NmQllXd0FPV1BQNXdtd1p5UjVoVy83bm5IZndRQklk?=
 =?utf-8?B?N3hMZnhYdmE3UHhRTTN2ZVl6d21uKzlzQWMvSHk1eVNEU1QxQVVoT2U4RGFZ?=
 =?utf-8?B?OWxuNWs0ajk0SEZRNEltNkVTMGlJcWxSRTY2aXVyMGkwZXJzV1c5RE5MNjVT?=
 =?utf-8?B?SytyNGQ3WG5xSXljaDdBazBobzB4REoyQ1cvdEVSdTVqMmNwNUdqSHZRS28z?=
 =?utf-8?B?VTV1YWErKzlnakNuTEZrbEhubkZvbXZteUEwTHAwOVhMN1VIQ29GY0Y2b1Bw?=
 =?utf-8?B?b0hUc3VDc3lLUjY2Z1FGUW8yb0tUMExZVXROV3NQYXh6VzRERXNqc0R1TGl0?=
 =?utf-8?B?ckdhcjdFSEt1c0IvdWFwdEFYeGt0czZ6QUlQZytYT2MxTG5KN3M1UDkxZnEr?=
 =?utf-8?B?NDdIRlNpZEtkb2NjQ09ib01tOXoxTFJoaVhGNXB6elhZazc3enhpNWxYWGZX?=
 =?utf-8?B?d01vd2lpSk1ZbzFBazRodjRRV1hZNlZkdWU2NWxIaVZQNlVjVkQ3ZlJjSk5M?=
 =?utf-8?B?L1hTbE1CaVNvMzJFSFFqTC84WmgybmVRRFRVTnl5NXdlZWNoejZ4b1dOR3BM?=
 =?utf-8?B?U1kwQjYrRWE3RkwyeFQ2RmdYeUozZWl5b09EV3dsQUtWa055c2dqL2p3MkhQ?=
 =?utf-8?B?bGZPL0YwdU5SWU9zU2pDUTZCd3czbnRWSnQ1RWxUMVM3TzhPS1RsbnJtOUhZ?=
 =?utf-8?B?V3ZEOEg5UUlmU3crZlRqaUNzYTZwbjFnT1h2bXRyRTcvUjlrMmdnREZvVXYz?=
 =?utf-8?B?RnZMaVV1Ny96WjNYU09zUmROTGRSd05TaThvYlJyNnlZaVh2d1dsdmNNeWZl?=
 =?utf-8?B?N3BvemtHbm9kd1MxY3YzV2R3RGFKbG45alM4d0ZGTDIzUk8xWng0WWo0VVVN?=
 =?utf-8?B?VTM4dllJLzZ4YTBxK0ZCTEl5QXJLcWNUOEMralo4YnVBdUpqN25VaWtSODY3?=
 =?utf-8?B?OU1pdHhIdUJLMjQvSmRVcTU3clRTY0tyeDlRWGRRUUFUQmtCQ1dXY2k3aGhs?=
 =?utf-8?B?SU9UTTk2UGxjSUw5NTRKTDNSN1cxNGJYSzNPWWFqdHUwV0FLcXFxS3pJNzZT?=
 =?utf-8?B?VlJqdGVwcWMxZVF4K2tJVXl4cXdTR1E0dXVJL1g4dmN0WTNWSXdjTTB4ZEhU?=
 =?utf-8?B?TUJyeDl1c3lRUk0rSnRBM0FJWmdmb3ZqNmNJMVpoT0J0S3NIaklPUEVHL3Ja?=
 =?utf-8?B?bGo4a3NSMjlCMlArZXVlay9nNi96clZhbS9ERVlzUThucktKcS9pSE9PbEJV?=
 =?utf-8?B?WUhzb29hU1hvNXlKVnIzTlJZVm52SUxKQmE0d2phUnplRFYzdEFNT0g0MzB3?=
 =?utf-8?B?bjlYamxnbDdpbmpiSUptMGdNTkpRb3NySlhGMjk2U1o0dStQK2oyeTZET0RI?=
 =?utf-8?B?bzQzaHBpRldJbG9ab2FiWW1kYjkrNkJKQ2lEYUJEZkpZY1FjZEZrQUNiK1hY?=
 =?utf-8?B?SjAwOGRiOFcwUTVCY0pYZFNqYS9vN0d2dmpESTZiKzd1VnB1T3hZTGM3ODlJ?=
 =?utf-8?B?U0llMytpY2ljalB4R0NLOWtrOGhZVXpOSFliZU83RzFJREpneGdmUUoyRlRG?=
 =?utf-8?B?aDN2RU12aGhuMFRJajJ6WHlMVE5nZ0dsc28yUnJaV2wxSEF0elVaK1E4QkdV?=
 =?utf-8?B?a1JoUjYvWUphc25MbjlDOVQ1ZVNJNmpTVU9ZVE5wNDR1ekdkWEsrblg1TGxE?=
 =?utf-8?B?eE5DcUZVUmdZazhnV2MrREZoT2RnTWROcXlNZWdKWmlpc0cyaXc5NW41RnpZ?=
 =?utf-8?B?SzV4VTBISzgyZ2h1UEIrRzNwdXVHeTRVeGxSditEZkZPOXhFd09Sdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VSQieAX8Tgn2IObPLqVAE3k3l+flcUCaOrJ4E140TLo0+WZ/mzyhZMGrYuiS8yK78WR03Sktlm1FKH5UDhH1O3PoTCwXspLq4l3MPQIioeJmdMOxXr6SGXLnCvdL5r9VJFdTpJEG3K4WXF96d+AEJS/yE0INDJJ8UhKHyhYXyYcgBT4hhc3rpm+s1cw1/qRe4WT3hbF+UNIlIo1j29CUW/n41WoYwWKmLrFMGG16Ip8NBrzAcBm8NI1/++8qiUrWwMxzr94BRa8EqYWu8cSUVBSKwadpC6zs1x70LkK0R7sKzsKXeWcQ5XxzoE0e3XHRPdmeNw8h0MakjrfdkWuDwQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53dec976-85d2-4725-1e41-08deca9b7f62
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 05:03:53.7998 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sTYqtwrgQkMV5BEP3Qd6uZdjGZN0ZbMdyavkCAejAjoYwxY/2EuKRt+E0QJgBPCntIXS8UpKgFSk+vKQQnOrZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6128
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS4PPFE901A304F.namprd11.prod.outlook.com:mid,lists.freedesktop.org:from_smtp];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF03B683608

PiBTdWJqZWN0OiBSRTogW1BBVENIIHY3IDUvOF0gZHJtL2k5MTU6IG92ZXJyaWRlIFNucHMncyBW
Uy9QRSB3aGVuIHJlcXVlc3RlZA0KPiANCj4gDQo+ID4gU3ViamVjdDogW1BBVENIIHY3IDUvOF0g
ZHJtL2k5MTU6IG92ZXJyaWRlIFNucHMncyBWUy9QRSB3aGVuIHJlcXVlc3RlZA0KPiA+DQo+ID4g
QWRkIGFjY2Vzc29yIGZ1bmN0aW9uIGZvciBTbnBzIHRvIHJlYWQgcmVxdWVzdGVkIHRhYmxlIGZy
b20gVkJUICM1Ny4NCj4gPiBQYXJzZSB0aGUgcmVxdWVzdGVkIHRhYmxlIGFuZCB0cmFuc2Zvcm0g
ZGF0YSBpbnRvIHBvcnQncyBidWZmZXIuDQo+ID4NCj4gPiBDaG9vc2UgYXBwcm9wcmlhdGUgYWNj
ZXNzb3IgZnVuY3Rpb24gaW4gaW50ZWxfZGRpX2J1Zl90cmFuc19nZXQoKQ0KPiA+IGJhc2luZyBv
bg0KPiANCj4gKiBiYXNlZA0KPiANCj4gPiBkaXNwbGF5IHZlcnNpb24gYW5kIFBIWSB0eXBlLg0K
PiA+DQo+ID4gRm9yIEMyMCwgdXNlIDZ0aCB0YWJsZSBpZiBlbmNvZGVyIHN1cHBvcnRzIERQIDIu
MCBvciBoaWdoZXIuIE90aGVyd2lzZQ0KPiA+IHVzZSA1dGggdGFibGUgZm9yIERQLg0KPiA+DQo+
ID4gRm9yIEMyMCwgdGFibGVzIDEtNCBhcmUgbm90IHVzZWQgYXQgYWxsIGFuZCBhcmUgbW9zdCBs
aWtlbHkgdG8gYmUNCj4gPiB6ZXJvZWQuIDV0aCB0YWJsZSBpcyB1c2VkIGZvciBhbnkgbW9kZSBi
ZWxvdyBEUCAyLjAgKGV4Y2x1c2l2ZSkuIDZ0aA0KPiA+IHRhYmxlIGlzIHVzZWQgZm9yIGFueSBt
b2RlIGFib3ZlIERQIDIuMCAoaW5jbHVzaXZlKS4NCj4gPg0KPiA+IEZvciBDMTAsIHVzZSAybmQg
dGFibGUgZm9yIGV4dGVybmFsIERQIGlmIGVuY29kZXIgc3VwcG9ydHMgYW55IG1vZGUNCj4gPiBi
ZXlvbmQgb3IgaW5jbHVkaW5nIEhCUjIuIFVzZSAxc3QgdGFibGUgaWYgZXh0ZXJuYWwgRFAgZW5j
b2Rlcg0KPiA+IHN1cHBvcnRzIGFueXRoaW5nIGxvd2VyIHRoYW4gSEJSMi4gRm9yIGVEUCwgdXNl
IDR0aCB0YWJsZSBpZiBlbmNvZGVyDQo+ID4gc3VwcG9ydHMgSEJSMy4gT3RoZXJ3aXNlIHVzZSAz
cmQgdGFibGUgZm9yIGVEUC4NCj4gPg0KPiA+IEZvciBDMTAsIDFzdCB0YWJsZSBpcyB1c2VkIGZv
ciBleHRlcm5hbCBEUCB3aXRoIG1vZGVzIGJlbG93IEhCUjINCj4gKGV4Y2x1c2l2ZSkuDQo+ID4g
MXN0IHRhYmxlIGlzIGFsc28gdXNlZCBhcyBhIGZhbGxiYWNrIGZvciBub24tRFBzLiAybmQgdGFi
bGUgaXMgdXNlZA0KPiA+IGZvciBleHRlcm5hbCBEUCB3aXRoIG1vZGVzIGhpZ2hlciB0aGFuIEhC
UjIgKGluY2x1c2l2ZSkuDQo+ID4gM3JkIHRhYmxlIGlzIHVzZWQgZm9yIGVEUCB3aXRoIG1vZGVz
IGxvd2VyIHRoYW4gSEJSMyAoZXhjbHVzaXZlKS4gNHRoDQo+ID4gdGFibGUgaXMgdXNlZCBmb3Ig
ZURQIHdpdGggbW9kZXMgaGlnaGVyIHRoYW4gSEJSMyAoaW5jbHVzaXZlKS4NCj4gPg0KPiA+IElu
ZGljZXMgZm9yIG90aGVyIHRhYmxlcyBoYXZlIG5vdCB5ZXQgYmVlbiBvYnNlcnZlZCB0byBiZSB1
c2VkIGFzIG9mIG5vdy4NCj4gPg0KPiA+IFRoZXJlIGFyZSBubyBjaGFuZ2VzIHRvIGludGVsX2Rk
aV9kcF9sZXZlbCgpIHNpbmNlIHNlbGVjdGlvbiBvZg0KPiA+IGNvcnJlY3Qgcm93IG9mIGludGVs
X2RkaV9idWZfdHJhbnNfZW50cnkgaXMgc2FtZSBhcyB3aGVuIG5vIG92ZXJyaWRlDQo+ID4gcmVx
dWVzdCBoYXMgYmVlbiBkb25lLg0KPiA+DQo+ID4gdjYtPnY3DQo+ID4gLSBoYW5kbGUgVlMvUEUt
TydzIFZCVCBkZXRhaWxzIGluIGludGVsX2Jpb3NfKiBmdW5jdGlvbnMgKEphbmkpDQo+ID4gLSBy
ZW1vdmUgdnNwZW8ncyBjYXN0IHRvICh2b2lkICopIChKYW5pKQ0KPiA+IC0gY2hlY2sgZGV2ZGF0
YS0+dnNwZW8gaWYgVlMvUEUtTyB3YXMgcmVxdWVzdGVkDQo+ID4gLSBjYWxsIGVuY29kZXItPmdl
dF9idWZfdHJhbnMoKSBvbmNlIChKYW5pKQ0KPiA+IC0gcmV0dXJuIE5VTEwgZnJvbSBpbnRlbF9i
aW9zX2dldF8qIHdoZW4gdXNpbmcgZGVmYXVsdCAoSmFuaSkNCj4gPiAtIHZhbGlkYXRlIFZTL1BF
LU8gaW4gaW50ZWxfYmlvcy5jIChKYW5pKQ0KPiA+IC0gaW5saW5lIG10bF97YzEwLGMyMH1fZ2V0
X3ZzcGVvX2J1Zl90cmFucygpDQo+ID4gLSByZW1vdmUgdGVtcG9yYXJpbHkgTFQNCj4gPg0KPiA+
IHY0LT52NQ0KPiA+IC0gYmxlbmQgaW5kZXggY29tcHV0YXRpb24gd2l0aCB0YWJsZSBwYXJzaW5n
DQo+ID4gLSByZW1vdmUgZW51bXMgZW50aXJlbHkNCj4gPiAtIGNoYW5nZSBmdW5jcyBwcmVmaXgg
ZnJvbSBzbnBzXyB0byBtdGxfIChTdXJhaikNCj4gPiAtIGFkZCBzcGFjZXMgYXJvdW5kIG9wZXJh
dG9ycyAoU3VyYWopDQo+ID4gLSByZW1vdmUgc3BhY2VzIGFmdGVyIHR5cGUgY2FzdGluZyAoU3Vy
YWopDQo+ID4gLSByZW1vdmUgSU5URUxfRElTUExBWV9TVEFURV9XQVJOIChTdXJhaikNCj4gPg0K
PiA+IHYzLT52NA0KPiA+IC0gc3RpY2sgdG8gc29sZWx5IGNoYW5naW5nIFZCVCBkYXRhIGludG8g
Y3VycmVudCBzdHJ1Y3R1cmVzIChKYW5pKQ0KPiA+IC0gbW92ZSBpdGVyYXRvciBkZWNsYXJhdGlv
biB0byBkZWNsYXJhdGlvbiBibG9jayAoU3VyYWopDQo+ID4NCj4gPiB2Mi0+djMNCj4gPiAtIHJl
bW92ZSB1bm5lY2Vzc2FyeSBicmFjZXMgZnJvbSBpZiBibG9jayAoU3VyYWopDQo+ID4gLSByZXR1
cm4gLUVJTlZBTCBpbnN0ZWFkIG9mIC0xIChTdXJhaikNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAxMDAgKysr
KysrKysrKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5oICAgICB8ICAgNyArKw0KPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlf
YnVmX3RyYW5zLmMgICAgfCAgMjEgKysrKw0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDEyOCBpbnNl
cnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jDQo+ID4gaW5kZXggM2Q4ODY0Mzc0Y2FjLi41OWZmYjViYzg4NDggMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+IEBAIC0z
ODYxLDYgKzM4NjEsMTA2IEBAIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX3RidChj
b25zdA0KPiA+IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGENCj4gPiAgCXJl
dHVybiBkZXZkYXRhLT5kaXNwbGF5LT52YnQudmVyc2lvbiA+PSAyMDkgJiYgZGV2ZGF0YS0+Y2hp
bGQudGJ0Ow0KPiA+IH0NCj4gPg0KPiA+ICtzdGF0aWMgYm9vbA0KPiA+ICt2YWxpZGF0ZV92c3Bl
byhjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEsIGJvb2wNCj4g
PiAraGFzX2RwKSB7DQo+IA0KPiBBaGggb2hrYXkgc28geW91IGRlYWwgd2l0aCB0aGF0IGFsbG9j
YXRpb24gcHJvYmxlbSB0aGlzIHdheS4gVGhpcyBzZWVtcyBnb29kDQo+IHRvby4NCj4gDQo+IA0K
PiA+ICsJc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKnZzcGVvOw0KPiA+ICsNCj4gPiArCWlm
ICghZGV2ZGF0YSkNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICsJLyogaWYgdnNw
ZW8gaXMgYWxsb2NhdGVkIHRoZW4gVlMvUEUtTyB3YXMgcmVxdWVzdGVkICovDQo+ID4gKwl2c3Bl
byA9IGRldmRhdGEtPnZzcGVvOw0KPiA+ICsJaWYgKCF2c3BlbykNCj4gPiArCQlyZXR1cm4gZmFs
c2U7DQo+ID4gKw0KPiA+ICsJLyogaWYgY3J0Y19zdGF0ZSBoYXMgZURQIGl0IGFsc28gaGFzIERQ
ICovDQo+ID4gKwlpZiAoIWhhc19kcCkNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+
ICsJcmV0dXJuIHRydWU7DQo+ID4gK30NCj4gPiArDQo+ID4gK2NvbnN0IHN0cnVjdCBpbnRlbF9k
ZGlfYnVmX3RyYW5zICoNCj4gPiAraW50ZWxfYmlvc19nZXRfYzIwX3ZzcGVvKGNvbnN0IHN0cnVj
dCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSwNCj4gPiArCQkJIGJvb2wgaGFzX2Rw
LCBib29sIGlzX3VoYnIpDQo+ID4gK3sNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5Ow0KPiA+ICsJdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSAqZW50cmllczsNCj4g
PiArCWludCBudW1fY29sdW1ucywgbnVtX3Jvd3MsIGxldmVsLCBpZHg7DQo+ID4gKwlzdHJ1Y3Qg
aW50ZWxfZGRpX2J1Zl90cmFucyAqdnNwZW87DQo+ID4gKwljb25zdCB1MzIgKnRhYmxlczsNCj4g
PiArCXNpemVfdCBvZmZzZXQgPSAwOw0KPiA+ICsNCj4gPiArCWlmICghdmFsaWRhdGVfdnNwZW8o
ZGV2ZGF0YSwgaGFzX2RwKSkNCj4gPiArCQlyZXR1cm4gTlVMTDsNCj4gPiArDQo+ID4gKwlkaXNw
bGF5ID0gZGV2ZGF0YS0+ZGlzcGxheTsNCj4gPiArCWVudHJpZXMgPSAodm9pZCAqKXZzcGVvLT5l
bnRyaWVzOw0KPiA+ICsJdGFibGVzID0gZGlzcGxheS0+dmJ0LnZzcGVvLnRhYmxlczsNCj4gPiAr
CW51bV9jb2x1bW5zID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9jb2x1bW5zOw0KPiA+ICsJbnVt
X3Jvd3MgPSBkaXNwbGF5LT52YnQudnNwZW8ubnVtX3Jvd3M7DQo+ID4gKwlpZHggPSBpc191aGJy
ID8gNSA6IDQ7DQo+ID4gKw0KPiA+ICsJb2Zmc2V0ICs9IGlkeCAqIG51bV9yb3dzICogbnVtX2Nv
bHVtbnM7DQo+ID4gKw0KPiA+ICsJZm9yIChsZXZlbCA9IDA7IGxldmVsIDwgbnVtX3Jvd3M7IGxl
dmVsKyspIHsNCj4gPiArCQl1MzIgdnN3aW5nID0gdGFibGVzW29mZnNldF07DQo+ID4gKwkJdTMy
IHByZV9jdXJzb3IgPSB0YWJsZXNbb2Zmc2V0ICsgMV07DQo+ID4gKwkJdTMyIHBvc3RfY3Vyc29y
ID0gdGFibGVzW29mZnNldCArIDJdOw0KPiA+ICsNCj4gPiArCQllbnRyaWVzW2xldmVsXS5zbnBz
LnZzd2luZyA9IHZzd2luZzsNCj4gPiArCQllbnRyaWVzW2xldmVsXS5zbnBzLnByZV9jdXJzb3Ig
PSBwcmVfY3Vyc29yOw0KPiA+ICsJCWVudHJpZXNbbGV2ZWxdLnNucHMucG9zdF9jdXJzb3IgPSBw
b3N0X2N1cnNvcjsNCj4gPiArDQo+ID4gKwkJb2Zmc2V0ICs9IG51bV9jb2x1bW5zOw0KPiA+ICsJ
fQ0KPiA+ICsNCj4gPiArCXJldHVybiB2c3BlbzsNCj4gPiArfQ0KPiA+ICsNCj4gPiArY29uc3Qg
c3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKg0KPiA+ICtpbnRlbF9iaW9zX2dldF9jMTBfdnNw
ZW8oY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0KPiA+ICsJ
CQkgYm9vbCBoYXNfZHAsIGludCBwb3J0X2Nsb2NrLCBib29sIGhhc19lZHApIHsNCj4gPiArCXN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5Ow0KPiA+ICsJdW5pb24gaW50ZWxfZGRpX2J1Zl90
cmFuc19lbnRyeSAqZW50cmllczsNCj4gPiArCWludCBudW1fY29sdW1ucywgbnVtX3Jvd3MsIGxl
dmVsLCBpZHg7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqdnNwZW87DQo+ID4g
Kwljb25zdCB1MzIgKnRhYmxlczsNCj4gPiArCXNpemVfdCBvZmZzZXQgPSAwOw0KPiA+ICsNCj4g
PiArCWlmICghdmFsaWRhdGVfdnNwZW8oZGV2ZGF0YSwgaGFzX2RwKSkNCj4gPiArCQlyZXR1cm4g
TlVMTDsNCj4gPiArDQo+ID4gKwlkaXNwbGF5ID0gZGV2ZGF0YS0+ZGlzcGxheTsNCj4gPiArCXZz
cGVvID0gZGV2ZGF0YS0+dnNwZW87DQo+ID4gKwllbnRyaWVzID0gKHZvaWQgKil2c3Blby0+ZW50
cmllczsNCj4gPiArCXRhYmxlcyA9IGRpc3BsYXktPnZidC52c3Blby50YWJsZXM7DQo+ID4gKwlu
dW1fY29sdW1ucyA9IGRpc3BsYXktPnZidC52c3Blby5udW1fY29sdW1uczsNCj4gPiArCW51bV9y
b3dzID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9yb3dzOw0KPiA+ICsNCj4gPiArCWlkeCA9IHBv
cnRfY2xvY2sgPiAyNzAwMDAgPyAxIDogMDsNCj4gPiArCWlmIChoYXNfZWRwKQ0KPiA+ICsJCWlk
eCA9IHBvcnRfY2xvY2sgPiA1NDAwMDAgPyAzIDogMjsNCj4gPiArDQo+ID4gKwlvZmZzZXQgKz0g
aWR4ICogbnVtX3Jvd3MgKiBudW1fY29sdW1uczsNCj4gPiArDQo+ID4gKwlmb3IgKGxldmVsID0g
MDsgbGV2ZWwgPCBudW1fcm93czsgbGV2ZWwrKykgew0KPiA+ICsJCXUzMiB2c3dpbmcgPSB0YWJs
ZXNbb2Zmc2V0XTsNCj4gPiArCQl1MzIgcHJlX2N1cnNvciA9IHRhYmxlc1tvZmZzZXQgKyAxXTsN
Cj4gPiArCQl1MzIgcG9zdF9jdXJzb3IgPSB0YWJsZXNbb2Zmc2V0ICsgMl07DQo+ID4gKw0KPiA+
ICsJCWVudHJpZXNbbGV2ZWxdLnNucHMudnN3aW5nID0gdnN3aW5nOw0KPiA+ICsJCWVudHJpZXNb
bGV2ZWxdLnNucHMucHJlX2N1cnNvciA9IHByZV9jdXJzb3I7DQo+ID4gKwkJZW50cmllc1tsZXZl
bF0uc25wcy5wb3N0X2N1cnNvciA9IHBvc3RfY3Vyc29yOw0KPiA+ICsNCj4gPiArCQlvZmZzZXQg
Kz0gbnVtX2NvbHVtbnM7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJcmV0dXJuIHZzcGVvOw0KPiA+
ICt9DQo+ID4gKw0KPiA+ICBib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9pc19kZWRpY2F0ZWRfZXh0
ZXJuYWwoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEp
ICB7DQo+ID4gIAlyZXR1cm4gZGV2ZGF0YS0+ZGlzcGxheS0+dmJ0LnZlcnNpb24gPj0gMjY0ICYm
IGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiA+
IGluZGV4IDdhNTBhMjcyY2QyNy4uNDlhY2Y4YzQwNWUyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gPiBAQCAtNzMsNiArNzMsMTMgQEAg
Ym9vbCBpbnRlbF9iaW9zX2dldF9kc2NfcGFyYW1zKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4g
KmVuY29kZXIsICBjb25zdCBzdHJ1Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKg0KPiA+IGlu
dGVsX2Jpb3NfZW5jb2Rlcl9kYXRhX2xvb2t1cChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSwgZW51bQ0KPiA+IHBvcnQgcG9ydCk7DQo+ID4NCj4gPiArY29uc3Qgc3RydWN0IGludGVsX2Rk
aV9idWZfdHJhbnMgKg0KPiA+ICtpbnRlbF9iaW9zX2dldF9jMjBfdnNwZW8oY29uc3Qgc3RydWN0
IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhLA0KPiA+ICsJCQkgYm9vbCBoYXNfZHAs
IGJvb2wgaXNfdWhicik7DQo+ID4gK2NvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoN
Cj4gPiAraW50ZWxfYmlvc19nZXRfYzEwX3ZzcGVvKGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2Vu
Y29kZXJfZGF0YSAqZGV2ZGF0YSwNCj4gPiArCQkJIGJvb2wgaGFzX2RwLCBpbnQgcG9ydF9jbG9j
aywgYm9vbCBoYXNfZWRwKTsNCj4gPiArDQo+ID4gIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX3Jl
cXVlc3RzX3ZzcGVvKGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpk
ZXZkYXRhKTsgIGJvb2wNCj4gPiBpbnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfZHZpKGNvbnN0
IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YQ0KPiA+ICpkZXZkYXRhKTsgIGJvb2wgaW50
ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX2hkbWkoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfYmlv
c19lbmNvZGVyX2RhdGEgKmRldmRhdGEpOyBkaWZmIC0tZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4gPiBpbmRleCA0Y2QxZTRk
NzZjN2EuLmI0MTIwYjljNDliMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jDQo+ID4gQEAgLTE4NTcsNSArMTg1
NywyNiBAQCBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucw0KPiA+ICppbnRlbF9kZGlf
YnVmX3RyYW5zX2dldChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqDQo+ID4gIAkJCQkJCQkgIGNvbnN0
IHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gIAkJCQkJCQkg
IGludCAqbl9lbnRyaWVzKQ0KPiA+ICB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ID4gKwljb25zdCBzdHJ1Y3QgaW50
ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEgPSBlbmNvZGVyLT5kZXZkYXRhOw0KPiA+ICsJ
Y29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKmJ1Zl90cmFucyA9IE5VTEw7DQo+ID4g
Kwlib29sIGhhc19lZHAsIGhhc19kcCwgaXNfdWhicjsNCj4gPiArCWludCBwb3J0X2Nsb2NrOw0K
PiA+ICsNCj4gPiArDQo+ID4gKwlpc191aGJyID0gaW50ZWxfZHBfaXNfdWhicihjcnRjX3N0YXRl
KTsNCj4gPiArCXBvcnRfY2xvY2sgPSBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrOw0KPiANCj4gV2Ug
ZG9uJ3QgbmVlZCBhIHNlcGFyYXRlIHBvcnRfY2xvY2sgdmFyaWFibGUgaXRzIGp1c3QgY2FsbGVk
IGF0IG9uZSBwbGFjZSBqdXN0DQo+IGRpcmVjdGx5IHVzZSBjcnRjX3N0YXRlLT5wb3J0X2Nsb2Nr
Lg0KPiANCj4gPiArDQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpIHsNCj4g
DQo+IFRoaXMgbmVlZHMgdG8gdXNlID49IDE0ICYmIDwgMzUgc28gdGhhdCB0aGlzIGRvZXMgbm90
IHNwaWxsIGludG8gTFQgUEhZIHRlcnJpdG9yeQ0KPiANCj4gPiArCQlpZiAoaW50ZWxfZW5jb2Rl
cl9pc19jMTBwaHkoZW5jb2RlcikpDQo+ID4gKwkJCWJ1Zl90cmFucyA9IGludGVsX2Jpb3NfZ2V0
X2MxMF92c3BlbyhkZXZkYXRhLA0KPiA+IGhhc19kcCwgcG9ydF9jbG9jaywgaGFzX2VkcCk7DQo+
ID4gKwkJZWxzZQ0KPiA+ICsJCQlidWZfdHJhbnMgPSBpbnRlbF9iaW9zX2dldF9jMjBfdnNwZW8o
ZGV2ZGF0YSwNCj4gPiBoYXNfZHAsIGlzX3VoYnIpOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlm
IChidWZfdHJhbnMpDQo+ID4gKwkJcmV0dXJuIGludGVsX2dldF9idWZfdHJhbnMoYnVmX3RyYW5z
LCBuX2VudHJpZXMpOw0KPiANCj4gSSB0aGluayB0aGlzIGNvZGUgYmxvY2sgYmVsb25ncyBpbnNp
ZGUgdGhlIGFib3ZlIGlmIGJsb2NrIGd1YXJkZWQgYnkNCj4gRElTUExBWV9WRVIgY2hlY2sNCg0K
T3IgbWF5YmUgbm90IHNpbmNlIHRoaXMgbGF0ZXIgYmVjb21lcyBhIGVsc2UgaWYgbGFkZGVyIHlv
dSBjYW4gaWdub3JlIHRoaXMgY29tbWVudC4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0K
PiANCj4gUmVnYXJkcywNCj4gU3VyYWogS2FuZHBhbA0KPiANCj4gPiArDQo+ID4gIAlyZXR1cm4g
ZW5jb2Rlci0+Z2V0X2J1Zl90cmFucyhlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMpOyAg
fQ0KPiA+IC0tDQo+ID4gMi40NS4yDQoNCg==
