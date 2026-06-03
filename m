Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6juUI72oH2oXogAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 06:08:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54C96341B9
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 06:08:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nE3EODBO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2884010F801;
	Wed,  3 Jun 2026 04:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB8F410F808;
 Wed,  3 Jun 2026 04:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780459705; x=1811995705;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jgfCBlfcyQBkaYMSmSOek/17kN663+EQzCWswYB3LVw=;
 b=nE3EODBO7cVt+lIxVleUqwYr6xwQG7F/LntAY8pufCI6dnNmuHVyL8fM
 uZrEAMcot+TeShG0aQxqkLK1plnByIcymHxkJ1+B21zAVF9g2N8pNrZFZ
 huFSvp/mCHXOziM2dczWnHna41JNTKrnh2NpUYQY8U44xvR2tgkkyRG4f
 Jh5nDj0xSu/zQJ8ikBmSPXOygm2azSDHRuJStYZJMpYg2Vt5DQOA6pi34
 eFATdgH/ZNONtEp6YBFMY27m6rfkq04eee9xWqpkPTIf5e6LQ7bR9C5WF
 2YrfhbQcInP4mIFzQCg6f33F2RrnsniaW4lsoCecQkaGbNPUX2Ua9LhDB A==;
X-CSE-ConnectionGUID: 17j/yfkpSO+E7isDqGyU5g==
X-CSE-MsgGUID: LvXCr4Z3RmKNLWbT/MYGMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="91941867"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="91941867"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 21:08:24 -0700
X-CSE-ConnectionGUID: SMLU5f/eR4yyQKb/27fRTw==
X-CSE-MsgGUID: XD77ASzYQ1iUP2ZgLW9tsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="241614161"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 21:08:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 21:08:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 21:08:23 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.34) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 21:08:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yCEPNjaZZjWmhCx4PVQ8hnt2UK8y6zHK1taz+o+cgqcV9ml8+fJstuMh89kDEss8JcrssLeSVmWtJMFDX/9rdJ+14BVQjEq0N2qdjU7XD/FsWbpDL3/3fH4ruNUTy2XzpT7IbZHR2YYLlMDIyly/8enAvDepuhz3ulinhfJ1FPhpbvnmaXalc1xOJpBJEpaZAKHj7wHgT+JIcs4ZElpc7kPaFJD2kboZDLo8CVBM2hKwVjHcWVamB7651LBbzdZqQUCVMj7M+TfZ5BJXPKidwTvCIblCRPu7QlHnd3FqSN3DisSmRr4kiuTFbu+jes8e6tgk6yBZmqUz5ljYkcXbCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jgfCBlfcyQBkaYMSmSOek/17kN663+EQzCWswYB3LVw=;
 b=UkQ+39DQiLL9BEzrKsEaHFvvoRBrx1FD9yPBalw17D8J4WxWOOeLNW8MVYl0kJi7PpXE+Wx9Wb9aRPrXfDlp3OPWYi04+o9rhS9vEwLWVvYdP3IkZ9oOWwnrd+RuRloU3kMWcHMkboDxcvBWH+BLbjwqVI4yM7XG7r0v27ywY1B+of0qX0LUIP+vLTC9KVdQvtHGVIyyclgdloyZVPm56VQU7F9UNsgUKQpz9TOMQgn1AzblcDBQ0dVg0i2Hh4W1kbu3T7+kZ90SV8ATK5m9sj0SUK8jO9K75LeH61p9bAVoCp9PNtE516xDlHexxvUO18ufRwmXlGd62+NvasmudA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFE26A71A1E.namprd11.prod.outlook.com
 (2603:10b6:518:1::d58) by MN0PR11MB6256.namprd11.prod.outlook.com
 (2603:10b6:208:3c3::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 04:08:15 +0000
Received: from PH3PPFE26A71A1E.namprd11.prod.outlook.com
 ([fe80::8a7e:ce56:bf6c:4636]) by PH3PPFE26A71A1E.namprd11.prod.outlook.com
 ([fe80::8a7e:ce56:bf6c:4636%8]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 04:08:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v5 2/8] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Thread-Topic: [PATCH v5 2/8] drm/i915/bios: store VBT #57's metadata in
 intel_vbt_data
Thread-Index: AQHc8rFyO6Yx2y34w06fvD5cNI9vYbYsNxqg
Date: Wed, 3 Jun 2026 04:08:09 +0000
Message-ID: <PH3PPFE26A71A1E4DC8DBCC80C029631B11E3132@PH3PPFE26A71A1E.namprd11.prod.outlook.com>
References: <20260602170031.1163205-1-michal.grzelak@intel.com>
 <20260602170031.1163205-3-michal.grzelak@intel.com>
In-Reply-To: <20260602170031.1163205-3-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFE26A71A1E:EE_|MN0PR11MB6256:EE_
x-ms-office365-filtering-correlation-id: 415d6bb6-3bdf-495d-886c-08dec125b8f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|3023799007|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: Buu9X5HQ64ZJIDo3c8u2SIYEKpugnNEn4oCGjoBChYO3wLByzbY7isAr9hNIOA2toDUyiNdEGWY9t+MIZ4qPRS6px5wEyZmCgoMKWDyd908ZFET4qCylnCJtzQiU6qdWJJxxF9fDcEpYMn1OIMdb2EN2NtFwicS4Pc5I9bCvn2475fOmrsftrvjn3HBj9D7i6F5rr+dmUskes82qVtVWM4lC8bEmG34HRkRSHmnYHxyoic7XRpqeIXOfUjUhLqFo09MqWv5qFiIJ/1hka9APJ2dcR2rmPYaBT+NbUuUltsb5hpoj96EoE1+dfMQ7KsJ4x97EbjEzTLt1U89/SdOltenxw0sew8QDVZV/yetWWTgCQ0Ilh7vTKDsmabWDSU1EmzE3nbOhDfvvRAx+ztRgow99wX3Llnz+BDWVCsgyBceNFyqZFzQo/jOQ0ehvnl1jsfFs+5VrdE7azXZ1q212zEZm+WrHBlpax0j0dDZA05cYRf0m4epwgr7ZHLO2s6On+Z9AXFlyxaGmlC2JeqGphDrejtwiBKh+cPnK7Il11ZGuyiWptxJOta2WMSO8OUGDpT2mxskiIWLXrLQeIQJIzBw0B19cGTJPlcjyBHRKcIx9qhZWDPEh6ipG+KIs/9inXlkHm1k8x7YKDZn911wLCXpweYrk6qo12TiCuhj043qChir4VwYuOI/3MGRM/X/i9IyhUqKuzD9xTbx2PCLfW1TEgRyJZ2MOlyki3IVkJ+HJmnSvy9C1zCFMAx/Mr2TS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFE26A71A1E.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(3023799007)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2pCMTd0VXA3akxWaEdVcnkyaGFkVmJ4L0JSeTNPdnI3L0Y0cy9IV0tqYk0x?=
 =?utf-8?B?dDZySTh3UTl4TTJzN2RnWTI5dFhnSE44Wllic203M0E2ODc3OUxORmdiTXZt?=
 =?utf-8?B?aW5PNVNkMEZkcWlCcEtlbzhMS1RpWE5sYklkSHRiancvU21qc0pYYkxjdXFW?=
 =?utf-8?B?RVR5SUJOa0x4MnlPWEtmUmxQcERCT3RSMkpvNzdBNWg5c0s2SXduaitHbXB0?=
 =?utf-8?B?S0JMSnBVNGM5TFhXR05wRUhIU1NmMnN3NVgyL0xOK1pJT2tSMzhGTFlYbFNr?=
 =?utf-8?B?L3VyUTVRZG9jL2VoYVhyUlhTZ0ZZektUMVVnVXByNVRoV2RpYkV6ZTdSekZr?=
 =?utf-8?B?R0RRZXA3QUpZdnJhbDFnQi9wL0xseHNLRTVXdTFUSDlTWENXMHY4b2NNUytZ?=
 =?utf-8?B?cldESGdZNmpvQ2xoL04rZGdGalUwUFNFQTBtYWlwcGYzUE9lSHZVMmRCZVFQ?=
 =?utf-8?B?a3R6STc5TlQwbnMyTjBPV3kxaUtScTRJSEVUWVFyOG5oNUVqaDdXOWh6eGgv?=
 =?utf-8?B?dkdkd3NFbjNZOHFkY3JyWEkySlhmZHBUb2RjVC9GM3ZlZXlpV1ZtSDlNUWhl?=
 =?utf-8?B?ajlGckNDYXpJTFNUSnQ5L0NqUXFkbytrV3ROZURwTWI3bnpxSXZPZU1XT1p2?=
 =?utf-8?B?aTRPQXF4WGt0NC9XTFJYZDd1bHVpOEZEcHVvTjlCVklpMGwyM05qSWo2NjBj?=
 =?utf-8?B?QnByVzNIdzVydllhaHNCdXRURnM3TnZoM1Z5VGFwdzNTNUZtMmtrSm1STllh?=
 =?utf-8?B?K3NHVEg0R2hUeUlGbm1SbVBCYjdmU0sxU2I0NkRrZ1NqS0dFc1dVaDZrM0Jj?=
 =?utf-8?B?WTZSM0RPK1VPRVhvREU4cmxWMVVpclBvV0RaMVhoY3RDVVI1M0V6Rkl4UkNz?=
 =?utf-8?B?K3hRREZnNEhRakRUYytaU0FPYVZFOEZZVkdHS1VyRDNhcmxYRzE2am1CcWkw?=
 =?utf-8?B?VkM2L1hZdlJZa1JpSHNUaHpMMW1sQjlxaEwvN1lNeUVvRDFnUjNMZEZDSTRN?=
 =?utf-8?B?VGM2YTlxTHpVL1RrYmNhbmpZSE53QUlRc3h0dXprRUxpdlBNamdpMmNFc1Zz?=
 =?utf-8?B?L0VKMVp5bHRIM3VxZjZGZGdBZi9HRmdpS0U0ekE3ZGFIRUd3MkxSVytua2gv?=
 =?utf-8?B?RXI3d214dUV3N0dJb3kwUnhlczRBSmRLaUZScTcrRjYzNEIydmtQa3B0anlR?=
 =?utf-8?B?Y2J6WEJ5UnltZmRqdlFyS2h5TGZKNytjUHZjbkRVYW1ZZDVwdTk0YmloWndi?=
 =?utf-8?B?ekluRG9Obkw0TTBjZTR3UEI4d1o1MHNHNzJuUFJ5NXJaMElRMThzTVVyR0JH?=
 =?utf-8?B?SHJmbWd5QmpYajkrREJHTERWOHBrTWpmbU5yczllbW5PSFdkTlhVN2twaTkr?=
 =?utf-8?B?TnM1WWpoNTFtYkhSa2t3MHBIdVcrWVNXRkdlWjlWcUEzWWtsVXJ5QzB2aElo?=
 =?utf-8?B?ejlVeFZFNGU5Yi9ObS9hNFBZTDZWNFpybTNudVM3YlIvaEZOZ3dYaWRaMEFH?=
 =?utf-8?B?S0grR09ETVNMZk00K3RnN3dzcEY1Zk5qSjN2VzJRZTJmcjV4WVlOd1BFbDNx?=
 =?utf-8?B?L0ZpZ0JlTTdQYmVmRmNDZDRYRXB1UVdKWVlsalg3aVdKTlpFNy9JaTg4YmU2?=
 =?utf-8?B?UWthV0txQi83bWNQUktjcWdwdHJCUVA0TUJOamdmRzVoK0tMUm50NGd2T3gv?=
 =?utf-8?B?TU1DcGZOeU1tc052Nko4S1duR2loTTUya242dDBLRE9Vc0pVN0JrNTNNdDZE?=
 =?utf-8?B?QUswS0lCSzhZNmgza2dDbUY5dk94NFk1bkh5VHN3ZS90VkVXN2JIY25uUGpF?=
 =?utf-8?B?NnlCUEtFTXVBQ3pOVk5xRFpzZVYxMXFVL3dwcTlWN0dWcDhkYkRqaTVaMy9k?=
 =?utf-8?B?cVYrQk1vZ3haczRUdklYSmFpZG9MZEhOZzlrZWhqYjJYdjVHL1BLdHFraGIr?=
 =?utf-8?B?WjRrL3p5MU0yRTU4WXVQbkpzajNyWldZbm5GdEV3L0tqRmZkMVFHK1U0TGlD?=
 =?utf-8?B?RThJcU5GbzRTUmVVWGhEVlRUS1VTYU40MmdQQ0tnNGtPVzlKUStNMzRVaU9l?=
 =?utf-8?B?MmxSdW5lQWhYcERhc1hZdWJaS2FMMEJ3Q1R0bXdBdURISC9GSG16Z0p1RXhp?=
 =?utf-8?B?NkxKc2RBV0c1aW5RUEZ4bExLUEI1MUpyclQ2ajhtVWlTUWM1ZzdoYkhheFFD?=
 =?utf-8?B?clZDMS92RkxPZVpmQklrZHdmQ0x5NGlXeDhDRTFEc0FuLzZPbzNGZm5HbzlO?=
 =?utf-8?B?SWs5Zk1Vc3FieE5FZGJZamd3ZVNHMmIvaUMrUURXNy9jQkpTMUZERVpOTjBo?=
 =?utf-8?B?NUo4bGRSdGkxejhkSHhtQmNtQTJiNHRkRDFIUjFDUFVrWDEvOUUyQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UMxJicGswU+w+Nq/XwekcoMFqBcPOMr1AKJmi649k+/Gpk4Ijxj1Q/68/5px+0iwpHghDszva777dS+gZ7GaB209K4r8NtHJnURh8IeUzZYxyK1G1CYQvwNer69S9Gp6YLw2mEVzD8I199PjkvOl/Qemu4J7BniZwkmoNZAsq+MdllD4h0VSk8hN0WuyOq1v/GHjGMA966MKu/fL1bq+3JQsqiMRfgm3qeZunojIyBR94zSGkYg5nZx3itwYGbqPS7LtXhtsTw/Sq3jCd3/WO9PI48TxCBin5t0x2Db+konyzMY9FFFTXZvl9OEXT3tAVtNYpzh/bDA6P2X5gMBc/Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFE26A71A1E.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 415d6bb6-3bdf-495d-886c-08dec125b8f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2026 04:08:09.4156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IO2umPQpY+7OZ/1h1zt1DMO+/YAsRW/EF1k0F8KuO8IUBlJZq/q3vXT6ByUBSQKjF/Gp7RTe7LnBE63c1/seJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6256
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,PH3PPFE26A71A1E.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:from_mime,intel.com:email];
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
X-Rspamd-Queue-Id: E54C96341B9

PiBTdWJqZWN0OiBbUEFUQ0ggdjUgMi84XSBkcm0vaTkxNS9iaW9zOiBzdG9yZSBWQlQgIzU3J3Mg
bWV0YWRhdGEgaW4NCj4gaW50ZWxfdmJ0X2RhdGENCj4gDQo+IFN0b3JlIHRhYmxlcywgbnVtYmVy
IG9mIHRhYmxlcywgbnVtYmVyIG9mIHJvd3MgYW5kIG51bWJlciBvZiBjb2x1bW5zIGluDQo+IGlu
dGVsX3ZidF9kYXRhIHdoZW4gc2VhcmNoIGZvciB0aGUgVkJUICM1NyBoYXMgc3VjY2VlZGVkLiBT
dHJ1Y3R1cml6ZSBhbGwNCj4gVlMvUEUtTyByZWxldmFudCBtZXRhZGF0YSBpbnNpZGUgYW5vbnlt
b3VzIHN0cnVjdCBuYW1lZCBhcyB2c3Blby4NCj4gDQo+IERpc3BsYXkgdmVyc2lvbiBkZXRlcm1p
bmVzIG51bWJlciBvZiByb3dzIHByZXNlbnQgaW4gZWFjaCB0YWJsZS4gcHJlLU1UTA0KPiBwbGF0
Zm9ybXMgc2hvdWxkIGhhdmUgMTAgcm93cyB3aGlsZSBNVEwrIHNob3VsZCBoYXZlIDE2IHJvd3Mu
DQo+IA0KPiB2My0+djQNCj4gLSByZW1vdmUgdW5uZWNlc3NhcnkgaW5pdCBvZiBWUy9QRS1PIG1l
dGFkYXRhIChTdXJhaikNCj4gLSBhZGQgaGVscGVyIGZvciBjb21wdXRpbmcgbnVtYmVyIG9mIHJv
d3MgKFN1cmFqKQ0KPiAtIGZpeCBudW1fcm93cydzIHR5cGUgKEphbmksIFN1cmFqKQ0KPiAtIGRl
Y2xhcmUgbnVtX3Jvd3MgKFN1cmFqKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnpl
bGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgICAgICB8IDEwICsrKysrKysrKy0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmggfCAgNyArKysr
KysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGlu
ZGV4IDQyMGIwOWI0ZDAxZWYuLmQwNzFmMGU1ZDQzODAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IEBAIC0yMTg1LDYgKzIxODUsMTEgQEAgcGFy
c2VfY29tcHJlc3Npb25fcGFyYW1ldGVycyhzdHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSkNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3RhdGljIGludCB2c3dpbmdfcHJlZW1waF9udW1fcm93
cyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgew0KPiArCXJldHVybiBESVNQTEFZX1ZF
UihkaXNwbGF5KSA+PSAxNCA/IDE2IDogMTA7IH0NCj4gKw0KDQpCc3BlYzogNjg5NjMNClRlbGxz
IG1lIHRoYXQgbm8gb2Ygcm93cyBpcyBub3QgZGlzcGxheSB2ZXJzaW9uIGRlcGVuZGVudCByYXRo
ZXIgaXQgY2FyZXMgaWYgd2UNCkFyZSB1c2luZyBVSEJSIG9yIG5vdC4gRFAgMS40IGJlaW5nIDEw
IGFuZCBEUCAyLjEgYmVpbmcgMTYNCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiAgc3Rh
dGljIHZvaWQNCj4gIHBhcnNlX3Zzd2luZ19wcmVlbXBoX292ZXJyaWRlKHN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5KSAgeyBAQCAtMjE5OSw3DQo+ICsyMjA0LDEwIEBAIHBhcnNlX3Zzd2lu
Z19wcmVlbXBoX292ZXJyaWRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiAgCWlm
ICghYmxvY2spDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJt
LCAidmFsaWQgVlMvUEUtTyByZXF1ZXN0IGJ1dCBub3QgeWV0DQo+IHN1cHBvcnRlZFxuIik7DQo+
ICsJZGlzcGxheS0+dmJ0LnZzcGVvLnRhYmxlcyA9IGJsb2NrLT50YWJsZXM7DQo+ICsJZGlzcGxh
eS0+dmJ0LnZzcGVvLm51bV90YWJsZXMgPSBibG9jay0+bnVtX3RhYmxlczsNCj4gKwlkaXNwbGF5
LT52YnQudnNwZW8ubnVtX2NvbHVtbnMgPSBibG9jay0+bnVtX2NvbHVtbnM7DQo+ICsJZGlzcGxh
eS0+dmJ0LnZzcGVvLm51bV9yb3dzID0gdnN3aW5nX3ByZWVtcGhfbnVtX3Jvd3MoZGlzcGxheSk7
DQo+ICB9DQo+IA0KPiAgc3RhdGljIHU4IHRyYW5zbGF0ZV9pYm9vc3Qoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksIHU4IHZhbCkgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IGluZGV4IDA5Y2UyNWE2ZDRiMTEuLjA2
MWJmNDc5NDU4ZjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBAQCAtMjQyLDYgKzI0MiwxMyBAQCBzdHJ1Y3QgaW50
ZWxfdmJ0X2RhdGEgew0KPiAgCXN0cnVjdCBsaXN0X2hlYWQgZGlzcGxheV9kZXZpY2VzOw0KPiAg
CXN0cnVjdCBsaXN0X2hlYWQgYmRiX2Jsb2NrczsNCj4gDQo+ICsJc3RydWN0IHsNCj4gKwkJY29u
c3QgdTMyICp0YWJsZXM7DQo+ICsJCWludCBudW1fdGFibGVzOw0KPiArCQlpbnQgbnVtX2NvbHVt
bnM7DQo+ICsJCWludCBudW1fcm93czsNCj4gKwl9IHZzcGVvOw0KPiArDQo+ICAJc3RydWN0IHNk
dm9fZGV2aWNlX21hcHBpbmcgew0KPiAgCQl1OCBpbml0aWFsaXplZDsNCj4gIAkJdTggZHZvX3Bv
cnQ7DQo+IC0tDQo+IDIuNDUuMg0KDQo=
