Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHWIDpv9C2qrTAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:05:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA31577B58
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 115C010EA60;
	Tue, 19 May 2026 06:05:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YjH6bQZc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1229910EA5E;
 Tue, 19 May 2026 06:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779170713; x=1810706713;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wkrxFP+nptYERAGxvuUeVKTARUScBsRjaPnmfP4AkII=;
 b=YjH6bQZcvJBVTUN0hYuhSZjovJwuhLM58365wQwtxlNlJRhr6hsGxPkY
 /6YJScbRGvXb8JPPEu+6ZZ0d3AA4s81uVBrNBqQa0H8vay1Mg/nb56b5k
 AYO2QlJodQlREjk6avyGTWtAu3IZQDZf1Ij/z2++gWPW/Y8F9a8KYfCig
 rkyh+vbyC5LN2kuH93YRl61ePXXbigbbjFbbh3wBPAhprdSvNlb/UiuUi
 EDjywroL39BVv7Ybjt+8DnhcMh+SxA3hV2GYnlX2W/Xnfq223C/isC/Gd
 EqVekstwBle3+P8OTYHyk4mnh5JQgd9Tnqiz66B8kL3wTxpzWckMug/Vq w==;
X-CSE-ConnectionGUID: TfPeyUbAS+KPaRKw3Fxa0A==
X-CSE-MsgGUID: 9pNiunbYTYecW+mxOChAQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80017988"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80017988"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:05:12 -0700
X-CSE-ConnectionGUID: /0ACrWvQS3OJ6aQvJzgyxQ==
X-CSE-MsgGUID: dF6SV1P0S9mU+L02Z9o1iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="236658302"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:05:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:05:11 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 23:05:11 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.49)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:05:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OKPuA88+iofBtftjilIdxtmqm5cdajZMC16UUCKFDjsycGami2/Yc0SWw2ybHQXlJ+s2jauLX0yxZZ4IJLy9Tt7EP+TqXrPn5OqoPGu4rVMhglRCagB9byla/LgyIZsb9pp4FnO3yM7f+AosMbCe51YG1SquW8f32WCDgiMt2BoloxtxudvWWJ9QdML3fLxOEKAA82lHkUTdi7jhODK9VSZ4ERiiDXCFNL3AbXOquk5HIVGN6PYglarWkQRcgzKZB0jiuZawXXUP1mVEGNq6KPqLEMFfAmN/uCQP8+QFxVgCiuCNajgW4pKXmHM5JgsKgSL/ayMf1mfvsrnLfxmT0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wkrxFP+nptYERAGxvuUeVKTARUScBsRjaPnmfP4AkII=;
 b=OMfqQr7FgMh4XYBtryxm61AnsvgxxmWJXe7bZV56/RY9Rbs0CU/+n+FtOyFkE48Q6xDI8YHjPVOj2CqlCpPM8k3YxrCHmeFOlEz0cqGpmMefUSgmwbcKRnRLHzzxZlsML1+MWIqOxzOIM6JG+6hg7rLzGxZ7h9EptQUdhMNptQD+fd0sRZ+eJym6VxMJWislGwn61eLj8d9E7CT3YsgOBfjEWVrdySImHTp0+Vxh2tYBRxgLitTLYvw+UGtNNkO7K0kRXHrDD3ikGovtr3luNfFP23qKF0xa3j8xzYFxR0X2hO3ie/cslyMr2w9tlC3sGAbvGPVJzvIFRBmOrQaZqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 06:05:08 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 06:05:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 14/31] drm/i915/buf_trans: abstract VS/PE-O index
 computation
Thread-Topic: [PATCH v3 14/31] drm/i915/buf_trans: abstract VS/PE-O index
 computation
Thread-Index: AQHc3cFYim/vHopPP0KWfaxV5Bn/q7YU7oEg
Date: Tue, 19 May 2026 06:05:08 +0000
Message-ID: <DM3PPF208195D8DFE3273B1A5FAD6294020E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-15-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-15-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB6974:EE_
x-ms-office365-filtering-correlation-id: 3f7a8e34-d23a-4008-015f-08deb56c9483
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003|4143699003|11063799003;
x-microsoft-antispam-message-info: qf0PMQkGD3Q7GtybmdSr9yjahF7IBcq4Cyiiwf5PMXOLRvCxML3Vtk4RSTjwTcTlsaRCWYkOBQigJYroDA+q43haehVanHcgTHM6uM/Sxw4udRIitgk2Ur8yUbydn/+DyjMLldmZTRv7IsTBQDRzk15If8B+Mxe89UY96L9AsGHsrPzM3I6c8PwaPzBm4wNvbcPAtTYSTaieMGubzA8CQnruBduB4zE5JDfVSxoy6ivG9evkihVtHJ1m+MFYaTtBrlGvoE41YThleY5XR0jertcrAchArvMy6DAMr25lAsueWRJphBXqU0A62yOoVpdaNgFMmXyDf28chJofworzxHCJYBWdKGKwLMc33IlEIo5TvU3g/WAb6XEKPJlfir+9uawW4DIKhnxry0TkZcqfleRdCSIlWRTTxIJI86dYQkMtYjonVYHyLyu67lqMIFlPjPH6KZ8T4bjV93lBi93A/+yD/iG+dBzQQtVPWZ9tAcOcqS3djO8D7luIjgUuZYd67rT2NoDJ6+trEm1vs4LhpT8ucRAa2d/WhfTKw5xdHgpdrFWvA9QXdMjv4TYzeek3PEcEHs2VcpkczYgbP7BIBCClgWZvhtle14V0+sgbf/gDzS3Co/UX9Bz1EzmBPMzF9wHvMuhdiHbtCLWO09wkFe1yjbMTrQGqEeZEGTbzsWT0WmMUdlfwFuNMwkcgaqNizI8TBQHRjc50TyHQMH8B5MIIGDhgRLSyfVZxfn0h7nsSKU+gS7MHpf1RP4CVNgsL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmN6YXVJeEt2amNYZGY1U3AyWVVINEJ6Mjc1TlZIQXE3ME9HcjB5MExRUm1C?=
 =?utf-8?B?QlVyVFg0RUhNS0VsTnFrRmM4OEhsY1Z1aVB6Ukc0VE1xc0NSZjk2aUZ5amhh?=
 =?utf-8?B?YXltOW1YMHNmTjVlRENxYlJYVG5jbit6cWdrZy9DTitoTzFFMXJHYk42WEpi?=
 =?utf-8?B?em8zSGhPa1FlR0h5dmZYckVDK29KT3FmVWtMKzRYeDB2a1FUSGZFQTJBVDdS?=
 =?utf-8?B?YXYzNStrNFNMSlRYWGdQTlZHcTRaZS9NU1YxU2xLWXcwdWEyaEJzaXZUSDVW?=
 =?utf-8?B?RU83SXpZSUZsbENQRzVHTW5oZVRiUTFkc0RmaUNBd3UraWpIck92aWlKYjhs?=
 =?utf-8?B?ZVF1QmFhbjNuN0FtN3VPdW1HZE53ZlAyclJSem5SUGpWOUZseXA4QkRHdE5R?=
 =?utf-8?B?UDR0UFgrOWJXWDhScWtia2w3UTVXaHlRZVNsWTZ6SjZUZSsycWxpNGZ5d2hn?=
 =?utf-8?B?THI4UjRVMDZoQTkwcG0yTDdFZ0V3eFFheGNJSFM1WFJlOTdmYjVSaFFFNVZ4?=
 =?utf-8?B?Qy9nYVpPRDNXdXFFbmxKeFJrR01IQUxnS2w3TUFzMzNTaEFpY3U3ZjVaUHdj?=
 =?utf-8?B?N1hOdHJJd3FaWGN3MkYrVGRpaHczdTIxYVB5ZnRwdjJSUFg5dExQekZISDkr?=
 =?utf-8?B?SlZ0aEJEWGtKbDVIVFQyTWpnQTFPQS9OcjdKQVNoQWVleW9POHNqZlkzOGZD?=
 =?utf-8?B?Rzg0VyszUVJqSFQ0TXRaeERGbTAyTVZ1b0dFTFM0M3FRWEFwR3pCQi9NZzdu?=
 =?utf-8?B?aEQ2emtKY3gya2lOT1kwYXpFNXNnU1BrT0VhYytFRWFMTUpyVEdwaFRHa3Qz?=
 =?utf-8?B?c3BRS0FydmMrSFdmMm40dS8yRXNlRWhYRzA1YkFTb1Nma2laQnIrb0pzWmtP?=
 =?utf-8?B?aUM3TkFRWm1xQTExdXJoSmRIWXVGN1IyMXpQdTV1QnJwOFBjb3FGZ1NjRFJW?=
 =?utf-8?B?dWN6a3o1S2kxNU1hYnltN0VNNE9wWnJjejM4Q0pRa0gveXpZY2FDNVBPaDhp?=
 =?utf-8?B?Mng5NVdIWE03bFp6a0NmN0dCa1RhekFBSWtxVDVmODFDQVk3bkhGT3UyZy9x?=
 =?utf-8?B?RnlHaW1YTEdyeGhCRE1VZlRtckJmbkoyUndsYkVqeTEwTlRUSU1wU2RaNSs4?=
 =?utf-8?B?NCtYSHpodDNLUkJrd2szUEVZcFZpaldIbGxZL2wyQ2NMb0s1ZXN5YnAxdnE3?=
 =?utf-8?B?ZDNmT2Z2ZWc0MzA5d2tOK3VtRU8yVUliVFhkcmN1bHhZL0R1STJiOWxLZllV?=
 =?utf-8?B?K2NPQURPaU9NSEE2d1d6dXdxbUxlYWFTdGlsTzYzbjhuMGJNdVVDWmZhRWJj?=
 =?utf-8?B?S3cvNmNHMlZhZlVyRzV3Nm1oaTZaSVF3QmxETUJ0amVwYzhTWVJheFErOGNt?=
 =?utf-8?B?VG1reVR4VVdwYWV1c29rbzV0aThQTjhUL3UzejJtVWQvMTMwRzRKdUxMeXY5?=
 =?utf-8?B?eDJNdjBrVzVxVUpCbkk1eHlmVkNpNEpKUDlLQlBndnJENmNtSHpmRjZDdE85?=
 =?utf-8?B?Wlo4VG1lYkpMV0dKSXVBNHJVeVMrSVpJUWk0b1hPMjFhbHdNK0R2aGhRTDYw?=
 =?utf-8?B?VnlXUWZMRmNUWHZ3VzRxMDliWkxnNTBCdFhQQnhYWW1aOG9HczJaODVlSWNi?=
 =?utf-8?B?Q3RwbCsrcHBza3AvV1hqYXVwaTVZZmVKc2hFYlNNMmtIWFgvRE5aUTZSa0JV?=
 =?utf-8?B?MURRMk9Ycy9FYndmUVdadVdaMHBJMERvb2o0dS9jNGdacGxuMWl5OXE5dm11?=
 =?utf-8?B?c0RRRWd3ais3NkhMR0RxeGcvUVArUDVpM3VRUVN6S2cxRWF6M1hUT2R2UTFi?=
 =?utf-8?B?Nlh3TCsrNVV1MG5OQmxiZUEza0t3YmlmOVZqanQ1Q3RjelYwZHBOSVJqSzZ1?=
 =?utf-8?B?bUwwWGZDTmZ1M0lMMnI2YWVYSHhrTXV2TGJHb1dydjJFbTRRR01xZVhvLzJM?=
 =?utf-8?B?NzhROFRmd2JtalgyN3FSRWVrWWZGR2VCWmJGeURUM0lFZVBibTdNalVxMW1U?=
 =?utf-8?B?NVlOTFZWdkR5RTFCSE1PSU1UWkNqa0liNTFWeFB6U2hYOGtGbzNCTVNPVmEv?=
 =?utf-8?B?WUVSVTJXVElUV3Exa0VKYVI0dm9RQVdoalpsaENqcDBsS3ExMUpYYTJNU2Fi?=
 =?utf-8?B?c3JiUzRkS3p5ZGhFVk9rU0ZjUVk4UTdjNjlBM3llVUVEZDlZTjJoekg2RXVD?=
 =?utf-8?B?QitTWitZRnJzVURJOWVGTzFpTlo2SjF1c1N1cmJ6NkZNczAxdGUzMGhjaUxw?=
 =?utf-8?B?WUdqWWhTTWMyblQ0VmZWMDliNllkRlBZUlM4MDFKdmhnWk5mb2I2d1RiN2Vp?=
 =?utf-8?B?VmNpNS9hQWNhK3d3b0hkMDVCUUN4b0N2S2d1WVVScEdOdTVrR3FlUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lUE/m8hdxLf6YxK4kFv+A+8VKqDVryMYWujen4ALQ3IsaNBUJBNyUFL86gMNrzbh5SysF+NtcwtXnNYDWYQXGkP1ZohgTBl3x8D8GPM0d1VpOfhfNuWS1lrayMhXYZv+UxyQe2Q1BbxfRqUiDPSVSHl3lvfT6axP7W8EdmYfsjMKm4jZli1Ulv0yr+VUkMYEFNuuIeHORo/dBvJEwhxI5TaoChCDvbF4re70f7FIJMPAKmJZIpss5LvkAoi51lsAbRYxdKEn0VFOZWGFRDfH6HdJA4iKYfl0etDGxylSkYfqopNyn1gc8hx1Rwqh+SLHw7pmTYYFS3Es2HQFvRK/lw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f7a8e34-d23a-4008-015f-08deb56c9483
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 06:05:08.5812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vWj739706DGE5+MGjg7Yd8zdMyWtVW3ZgBhZTRryh6+MvJ11xzT7kNHj1RMVUYdCxT2s4gBFz/cPFhnSfTB8og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6974
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8CA31577B58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMTQvMzFdIGRybS9pOTE1L2J1Zl90cmFuczogYWJzdHJhY3Qg
VlMvUEUtTyBpbmRleA0KPiBjb21wdXRhdGlvbg0KPiANCj4gTW92ZSBpbmRleCBjb21wdXRhdGlv
biBmb3IgbW9zdCBhcHByb3ByaWF0ZSBWUy9QRS1PIHRhYmxlIGludG8gc2VwYXJhdGUNCj4gZnVu
Y3Rpb24uDQo+IA0KPiBVbmxpa2UgVlMvUEUtTyB0YWJsZXMnIHBhcnNpbmcsIGluZGV4IGNvbXB1
dGF0aW9uIGNhbm5vdCBoYXBwZW4gZHVyaW5nIERESQ0KPiBwb3J0cyBwYXJzaW5nLiBJdCBpcyBi
ZWNhdXNlIGNvbXB1dGF0aW9uIGRlcGVuZHMgb24gbGluaydzIHBvcnQgY2xvY2ssIHdoaWNoDQo+
IGNhbiBjaGFuZ2Ugd2l0aCBldmVyeSBtb2Rlc2V0LiBUaHVzIGluZGV4IGNvbXB1dGF0aW9uIG11
c3QgYmUgZGVmZXJyZWQgdG8NCj4gb2NjdXIgZHVyaW5nIGludGVsX2RkaV9idWZfdHJhbnNfZ2V0
KCksIGFmdGVyIHRhYmxlcycNCj4gcGFyc2luZyBoYXMgY29tcGxldGVkLg0KPiANCj4gdjItPnYz
DQo+IC0gYnJlYWsgbG9nZ2luZyBpbnRvIHR3byBsaW5lcw0KPiAtIHJldHVybiAtRUlOVkFMIGlu
c3RlYWQgb2YgLTEgKFN1cmFqKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFr
IDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYyAgIHwgMTYgKysrKysrKysrKysrKy0tLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3Ry
YW5zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJh
bnMuYw0KPiBpbmRleCAzOGYyYTAzMGMwMThkLi45YWU3YTc4MGE3NjM5IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYw0K
PiBAQCAtMTc4Niw2ICsxNzg2LDE1IEBAIHhlM3BscGRfZ2V0X2x0X2J1Zl90cmFucyhzdHJ1Y3Qg
aW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkJcmV0dXJuIGludGVsX2dldF9idWZfdHJh
bnMoJnhlM3BscGRfbHRfdHJhbnNfZHAxNCwNCj4gbl9lbnRyaWVzKTsgIH0NCj4gDQo+ICtzdGF0
aWMgaW50DQo+ICt2c3Blb19jb21wdXRlX2luZGV4KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyKSB7DQoNCllvdSBjaGFuZ2UgdGhlIGFyZ3VtZW50IGxhdGVyIGluIHBhdGNoZXMuIHRyeSB0
byBkZWZpbmUgZnVuY3Rpb25zIGluIHN1Y2ggYSB3YXkgaW4gdGhlIGVhcmxpZXIgcGF0Y2hlcyB0
aGF0IG9ubHkgbWluaW1hbCBjaGFuZ2VzIGFyZSBuZWVkZWQNCkluIHRoZSBsYXRlciBvbmVzLg0K
DQo+ICsJZHJtX2RiZ19rbXModG9faW50ZWxfZGlzcGxheShlbmNvZGVyKS0+ZHJtLA0KDQpObyBp
bmxpbmUgZnVuY3Rpb24gY2FsbHMgbGlrZSB0aGlzIHBsZWFzZS4NCg0KQWxzbyBsZXQgYXZvaWQg
d3JpbmcgZGVidWcgbWVzc2FnZSB3aGljaCB3aWxsIGJlIHJlbW92ZSBieSBlbmQgb2Ygc2VyaWVz
DQoNCj4gKwkJICAgICJWUy9QRS1PIHVuc3VwcG9ydGVkLCB1c2luZyBkZWZhdWx0IFZTL1BFIHRh
YmxlcyIpOw0KDQpNaXNzaW5nIFxuDQoNCj4gKw0KPiArCXJldHVybiAtRUlOVkFMOw0KPiArfQ0K
PiArDQo+ICB2b2lkIGludGVsX2RkaV9idWZfdHJhbnNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoZW5jb2Rlcik7IEBAIC0xODU5LDkNCj4gKzE4NjgsMTAgQEAgY29uc3Qgc3Ry
dWN0IGludGVsX2RkaV9idWZfdHJhbnMgKmludGVsX2RkaV9idWZfdHJhbnNfZ2V0KHN0cnVjdA0K
PiBpbnRlbF9lbmNvZGVyICoNCj4gIAkJCQkJCQkgIGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCQkJCQkJCSAgaW50ICpuX2VudHJpZXMpDQo+ICB7DQo+
IC0JaWYgKGVuY29kZXItPnZzcGVvKQ0KPiAtCQlkcm1fZGJnX2ttcyh0b19pbnRlbF9kaXNwbGF5
KGVuY29kZXIpLT5kcm0sDQo+IC0JCQkgICAgIlZTL1BFLU8gdW5zdXBwb3J0ZWQsIHVzaW5nIGRl
ZmF1bHQgVlMvUEUgdGFibGVzIik7DQo+ICsJaWYgKCFlbmNvZGVyLT52c3BlbykNCj4gKwkJcmV0
dXJuIGVuY29kZXItPmdldF9idWZfdHJhbnMoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbl9lbnRyaWVz
KTsNCg0KV2h5IHdlIGFyZSBzdGlsbCBjYWxsaW5nIGVuY29kZXItPmdldF9idWZfdHJhbnMoKSBk
dXJpbmcgcmV0dXJuDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gKw0KPiArCXZzcGVv
X2NvbXB1dGVfaW5kZXgoZW5jb2Rlcik7DQo+IA0KPiAgCXJldHVybiBlbmNvZGVyLT5nZXRfYnVm
X3RyYW5zKGVuY29kZXIsIGNydGNfc3RhdGUsIG5fZW50cmllcyk7ICB9DQo+IC0tDQo+IDIuNDUu
Mg0KDQo=
