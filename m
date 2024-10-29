Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D8A9B42CA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 08:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5803310E5B1;
	Tue, 29 Oct 2024 07:05:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SBoClLGk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1106910E5B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 07:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730185552; x=1761721552;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=tfUim93Lwy1wPk/zd3GHWplQSxjkJPtI1f9xv8hyrag=;
 b=SBoClLGkJ6r2hbhXZ5qy3t2L7ZugLVYMNHoCWqEkCXEzp7taDGtxG+Ud
 LdHmgpwEyvhmR+pXejULECYJCby/Ry9m9lDaXvG0VKO05VwEEzZVjfDZw
 ytREvKv3bVP9UmsKox1btQWevQPGtSdxk1ZDS/rG9PK36stcttdjMW3dM
 507pm1W743zPbhVdw4F8a8VKrI6KNWIIb3oUuGCTuDnv7uv1WMwYY05GV
 TEcOOJOoRz9weKhuUJxvlTB2RDZqMyeZxHkTinuXcT1On09DUr0v4vTwt
 jU23A9rQy93iFIe8qlyOyq/MJjMTNbQQQlDxldXO/oAwBqrVK96VOsxsE Q==;
X-CSE-ConnectionGUID: AwoLWi7bRdelEwcUzOKGbg==
X-CSE-MsgGUID: 0kwWsR0qQkqT147R/nArOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29667166"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29667166"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 00:05:52 -0700
X-CSE-ConnectionGUID: SUOta0ggQS66qsXkqdb4SQ==
X-CSE-MsgGUID: nsb7auQQQXyM2P1GbgtHuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86618995"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 00:05:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 00:05:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 00:05:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 00:05:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tQ83To4zyIiv7dbX5pdw4B0SAJwf45pr0zLbNomxzD27fzbFZBkNy9wijrW0s95zbMoP4QDaFo7GHMifThWzJ2B7I5Tro662Wq390y3vt55xS71yNxj87MqhuStXGy1H/9HZZyVoIVnGxx02mFn1wLQN2+1iOywxs/i+XKkRig0E6jQ1QFLzzXlBeOimi2o0WnJH3lqAsjopWT5CUY9cl4jh9lkUzZhEW4AKdYbHuICLPYBSyG4dUtUTFLB6Oh4XTZaRmeGF8apLHs8IVCdT1rlXljeTe1reBBtQ1xGlEL67ohP+1Jv6M9Tnaeez5WPUdQD9agd/U1SclxHvhp5v1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tfUim93Lwy1wPk/zd3GHWplQSxjkJPtI1f9xv8hyrag=;
 b=RY6BlYT1dGdh8TKpclJcNy7jR8YObhhJ5rQk1DOjveLNw4wkm58NIvH5YJq/wtXih/+w1Z2wTpa4exQ69TRGq7f9B2PeP3VRmLT0lldZKS8vg2WX/kKbmXWLcm/wVYYAK6iENvYeeTPok5fbRBGr289nbKwTK50iUATUJAqdo3QJY8nXyg1D9hBK2w6ybUdcxOw/VjHBUfN7J28XraqlRcmPE84gmQ1GlJvGSmv6Wpa9BnPyuTEr8DsD64L21gDczvZAnc3/XStzLU7+hfV8c9HQ54TSLQ5hLmrHJqs6rAxil5DuHOjHnQaR0VsHnF05QWaBjvYS9fLEBLxxgtU6oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6268.namprd11.prod.outlook.com (2603:10b6:208:3e4::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.25; Tue, 29 Oct 2024 07:05:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.023; Tue, 29 Oct 2024
 07:05:42 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Topic: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Index: AQHbKcIxiEvSYiEd/02AbDqsn0QcW7KdTmmA
Date: Tue, 29 Oct 2024 07:05:42 +0000
Message-ID: <508923e7afba69dbd57c9ca8c9867c03160f26db.camel@intel.com>
References: <20241029050030.1413662-1-animesh.manna@intel.com>
In-Reply-To: <20241029050030.1413662-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6268:EE_
x-ms-office365-filtering-correlation-id: a6773eff-577b-477a-20b3-08dcf7e81a66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bkJEZW41TC83Ym5VOFdYSkgwVGJETGRYcm84bC96UTJRSHhYdTUyTHZ4dlg1?=
 =?utf-8?B?Qm05cUI4TFFxYnlhN21jaE55QW5zditocTNZMmhPc1R1T1BMdHJ6MTd1dmN2?=
 =?utf-8?B?RkFscE0yamJGQW4yVVhMai9JZjdSNWlORmxzdUdxclZNVlNyTnpsNkx6MFJJ?=
 =?utf-8?B?Z2RPczE4TURlWjV1d1RvS0ZvL1RGVlZJYUl1M01vTDMrMEQwU2tTWlh0eGdF?=
 =?utf-8?B?Qk4wS1BUMnVvdFV4SVpZQTREVWRsL3g3dUxDamExd01xVUlLM2lEVHVrdFJP?=
 =?utf-8?B?MVVURHVYbmJPUmNWTDEvanlkc1UzNHBkbjZwRXBFdnpqWlBiOWVZdDAzZEZV?=
 =?utf-8?B?WWw3UUNvOW9jSmprOXptWlk3amsvV0FGeHpMbWJ2MEMxcTlzZ2xmWDFyZmo1?=
 =?utf-8?B?clJrRjFJdmN3MDM4ZERza2MyVXBCNlA3RW1EQU9YWHptVUdUd0UxTEw5VDVD?=
 =?utf-8?B?RXppdUx1SWxTNDJ3QjhzaEcvd29QVktkRWpjUnc4a0M0QnRtdUVSQmNka04v?=
 =?utf-8?B?dGZqMVd1YjEzY0l6clJJY2lUUnVDM2d1bnVhL01kUDQ1Y2ZBUzJ2VUtYRjRL?=
 =?utf-8?B?dWlQQXhPdHFlUmlPUGs0YklnQjVZK2syQzNaZUE4MHlQTHlJOWpzdm02UWhB?=
 =?utf-8?B?bzZ6L21zaUQvUHpGNTZ5eFRpWEVnaEtUSEQwM21vREJoc2MyZWVyM0hzSTZu?=
 =?utf-8?B?OHNxT3MrbzA5azMzOWRoU0VpK3hhTVorOTBXc3FQeW85ZndSVlh1V0Ywd29W?=
 =?utf-8?B?QWZxUkxtdDVBeEVZV1luMllNa0x0ZWd6QnVaUXFGOVJyMTZETWx4dnZKVWE1?=
 =?utf-8?B?d0tDV0VsdGo3MnM2VTY3NDVjQkpOUGtXRmxwK3ErdVp5dHlWL3BHYVkzWWJm?=
 =?utf-8?B?VmtyMGZ0NjNlMDZwOWoyZmpON2lKcG5lQ3dxL1M5QmIySjlIUU9KMXVUWXBI?=
 =?utf-8?B?TzAvL2p2QXBzMjJNcXpFdlZ5bmVPZ0dDdElibkZZVEpDK3psNEF1dTducVFH?=
 =?utf-8?B?WVVuQjJCWGZwcjM5Q0VtMk1nUXhiK0YrZHVCa2lTNTdmM1hZZlRodnlyZnJj?=
 =?utf-8?B?ek5Ma3o5NWFPN1dnZmdKQWpZaWtxTW9PRFNaa2RqdkVveXpnQzFMZHkwL2Y5?=
 =?utf-8?B?QlJMUUxYM3YxN2RrMkRoNUpWY09BejVwdjNFSDdDS0h2b3BJNmNTSUFDUXFs?=
 =?utf-8?B?a3VVazFoSmxlMUQvL3pRMWdGcHU3YUthdDFoSzdQeXZuSGtvK1NJalVTWm9w?=
 =?utf-8?B?cjc1RGJ3NUtLOWtDSlRpbGpqSHp0djk3dmNpdzc4YmF6dzA2d1JnakFFWndr?=
 =?utf-8?B?dk5EYXhLRlptWWFoL1ZZSGZoaTBwek9tc2JmeDV3UjN1QXpJZ09waG1wQStH?=
 =?utf-8?B?MGxEaldMajVINk85OThnc3NiNXN2NmphV2NKdWpWYjU0NjBIN2lzOGo5Wmti?=
 =?utf-8?B?My8wMnp4UDg4UkkxcmZlZ2o2U3FTamFSYW5BbGtDOFNVa25raTNxT2dpWTE2?=
 =?utf-8?B?OXhjQ3FBeWtvVlk3S2VFWWFKY2pFZ29DbUYwTHprT0FneGhVMmRPSzc2R3Jz?=
 =?utf-8?B?T0VFYTdJcTFYcmpld1drSnd6eFNHeVU3U3U3V3NuZTlZeElQeGpNYVIrMDcr?=
 =?utf-8?B?OGtTejlrRjhQNy9CSGtWV2grbzdZa0R4OGhCQXh3dUdwbERZZHNOaWlCQ1Iy?=
 =?utf-8?B?cGZNQlBqRVBka2taNVJESlRtWEVrOGhSeEErN0hrek9SRzc0Z3ExMElHVCs0?=
 =?utf-8?B?WmZETU9VS24wNHBOdHIzS2dyRzAzWTVBSUVYL0pkYldEZ29oZDBQREpzbVRH?=
 =?utf-8?Q?H1Ur7JGsWNN/ILKQlFlgzlkdpQA6lQRlJ8fZg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0F1MVEyekJqNHI4T3ZmSkpsZlcxR2txcyswNFJkZXZWcjROcFM1TWhrM3Ir?=
 =?utf-8?B?M2cvWGNsVXROZCtQVVVsUWZzNFo0MFh1WGNMa3BnUnZtRDlGUkxVYXRzTlhm?=
 =?utf-8?B?RWZsMVE1bG9uZ3Myc3dyRk1kaFU3R0FhRG9tbkkvZlEvOUVXUXYrSENlVXY5?=
 =?utf-8?B?QnpmeDlvNTI5RFFwdUZVNWRST0pZKzZtL3RkbWtIZWtFK3RsSGxyT0RKZVZD?=
 =?utf-8?B?YkJ2VzNKMTZEbFNURVlyTkQ3NU9CWG1XUWxDU0NERzM0MzhHWnRzcUtpWDZI?=
 =?utf-8?B?OWR5bW1na2R3NVJDVkEwWi96azgwTERhZlF2ZCt5dDBLd2tQS3BWV3gxSlVR?=
 =?utf-8?B?M0RvWVVUaEt1UGNoYmQrWlVkWkwybGprYUZPK0YvMEtTSmpCeFZtdllhSXVT?=
 =?utf-8?B?R3c3ZU1hdTZoYTlxM3dnNWV2bUIvOXlic21zbjF4b3VPeTFHWUxTdWt6VHB6?=
 =?utf-8?B?NTI5NWRIa2s3T3lPVW1mS2VVaTM3OThzaUhCY3p3VnA3WmJjdnRjaTNHZjlk?=
 =?utf-8?B?N1FZL09mY0NuK2pFOTd3M0ZsYlZ3SjNsOVpvMXljTFFvRzRzalhkN1lEdjBU?=
 =?utf-8?B?Y3M4RmdvMWdHSDJHYU9xWVpWd04ydDk2QmY3bStxekdhc1VWSHJKbW40RFp6?=
 =?utf-8?B?RGE4MXBlN3JCUThoNHZST1pQY2x5R1pQSjhoUm5CTmxRZUsvTXdGTTlGYkFs?=
 =?utf-8?B?NncvZitzaEhrMHFrOGRlWlVjNTZuUnZ0cDRBMDBDSWVvaEFVWk1nc2g3Q2xi?=
 =?utf-8?B?Ym5lTkdiY1JuK0JrcUlzU0l3K1dKZGR2UEV4K0YwSnpxVzgxWTh4QzBxc2VM?=
 =?utf-8?B?N29QS1JBVFd5MkZVdEd5U2FCY3F4cGJDZWs3dGhFWHFNVFVINDFmdmNzN3Bs?=
 =?utf-8?B?VFI5SjkyTncrWm9mMi95WHVSTXdDbjE1cEpFQXNHWXRSS0E1NzQ1UGo2K2tP?=
 =?utf-8?B?Z0VJS1dNU3pDK2NMSVltVlNwWmxZUm44ODk3OXh5WHJBeVpobUJJdzNvcDBl?=
 =?utf-8?B?SjB0LzRYd0V6b2lyT1g2dDA5UCszTGdKdmo1QnpxMkFXQ3RJQUtLNHdLSitL?=
 =?utf-8?B?dGNtRi95RUhnY290OXhvc1lsUDBBODB3L1F3aUduNUdlRjZUcVhLeStyVkRq?=
 =?utf-8?B?TmpWMHovUXFDR0ZERjBsTHZBR242ZjVSUDA3YUEwRW80dFBUdHIxRm5LNXFq?=
 =?utf-8?B?SGdRSXB6cVZOL0RDWmFMUit6RmRFc00zcGZBY1FKU0ZucU5SYi9wUWdNYUVh?=
 =?utf-8?B?emRJckcyalRDY0RDcVVXVGtLSW9mNEh4L1R3Umw1cExFdk1ZUFEvMWpPYSs5?=
 =?utf-8?B?MmVoTXVmdkdqNGRabGZSUHpSakw1UU4rUCtGRW11dlZ5MHhhblZ5K3VPb3Ru?=
 =?utf-8?B?MW1JcndjOW91Tm9VQjh6dzA3NHQ3dXRIMDNrSXNERlJWN2Q2T0FDTjNFU3Rk?=
 =?utf-8?B?WnQ3dkpQUEJla01PUW1FMVVOaHg0QkdVWnNyM1pYMXR4MHJiSFFnMEErdjFT?=
 =?utf-8?B?L29SZmhRcVZuZ0t2SFpEaWVzZVF3M0dWZE81enhkVGFueGZWZEJOeDZGWXZL?=
 =?utf-8?B?SVJ3TjU5b0wvVUpvY0hsVms4TTZ1czdzNC82Q1hGWDRCZkM1ZGF5VzNtRHhx?=
 =?utf-8?B?OStOSUlVU2pCbEVkZWkyNGV1b0xKWkFYeXpYL0hJRkFNQW5WM3FNekFBNWNZ?=
 =?utf-8?B?eGEwRkM3cEo0ZXhPcHlIa1o5dmVScjJjTTJ3QkY1RmR2akM0M3pRejFUSEZz?=
 =?utf-8?B?bUI3M1lkcGdBN3FLeTdSTjhsZ3lhTFdRQnZuUWNweGZnaFRIODlJdkJvRlo4?=
 =?utf-8?B?M3VteDBmaklmSjNQMnFoYTBQK3ZCTU9WcFY1YS96TG1OTTM2UldaV2o3RTF3?=
 =?utf-8?B?TmE0Z2pKSHhTNG9pWjBaOVVvR1psQ1FaTUtYVFFsYWxDOVlLa1pkQW14NFUr?=
 =?utf-8?B?QnduWUxVSHFkWWNaeTBUWXk4Z0NlMGtDbEVybzh4dXNWLy9mSXZlSHY4cFlx?=
 =?utf-8?B?SUJGbkE4dk5zTlVURk50SzJmcDNIWXY3RzE4UGI0bkRwOUx0N3BjeGlVRmNh?=
 =?utf-8?B?OVROTHUxRDdISERYTlY3OEJGOXN1L3RBdkREbjY2Y21EanRIU25zOWZkc3FX?=
 =?utf-8?B?VXYvVVVOYWoxbmxONVpNNmc1UUh1V3dUeUxPTHEvYzV4K0swRk1SN3FHc1lI?=
 =?utf-8?B?K1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F2CEC64119231B40B7B43C0DC729AF5B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6773eff-577b-477a-20b3-08dcf7e81a66
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 07:05:42.7098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5+ast0rtF9J2dFJU/lD9GbUzssaMsBzTPr4UpW+r+4qPq1FU6/Y9xbJynfzLiWmotjmn81c1bpfqVGjZnEV/Oc/QNpf4Gc0uMLbf/7bGpnM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6268
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

T24gVHVlLCAyMDI0LTEwLTI5IGF0IDEwOjMwICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+
IElzc3VlIGlzIHNlZW4gd2hlbiBQU1IgZW5hYmxlZCB3aXRoIHNldHVwIGZyYW1lcyBhbmQgd2hl
biB0cnkgdG8KPiBkaXNhYmxlCj4gUFNSIGF0IFNSRE9OQUNLIFN0YXRlICgweDEpLiBQU1IgRlNN
IGlzIHN0dWNrIGF0IFNSRE9OQUNLKDB4MSkgZm9yCj4gbW9yZQo+IHRoYW4gNSBzZWNvbmRzLiBJ
c3N1ZSBub3Qgc2VlbiB3aXRoIFNldHVwIGZyYW1lcyBkaXNhYmxlZC4gQ3VycmVudGx5Cj4gZGlz
YWJsZSBwc3IxIGlmIHNldHVwdGltZSA+IHZibGFuayB0byB3b3JrYXJvdW5kIHRoZSBhYm92ZSBp
c3N1ZS4KPiAKPiBIU0Q6IDE2MDI0NTk0Njc0Cj4gCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBN
YW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTMgKysrKysrKysrKysrKwo+IMKgMSBmaWxlIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYwo+IGluZGV4IDQxNzYxNjNlYzE5YS4uODg3ZmE4YThmODc4IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gQEAgLTE2NDAsNiArMTY0
MCwxNSBAQCBfcGFuZWxfcmVwbGF5X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcAo+ICpp
bnRlbF9kcCwKPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7Cj4gwqB9Cj4gwqAKPiArc3Rh
dGljIGJvb2wgaW50ZWxfcHNyX25lZWRzX3dhXzE4MDM3ODE4ODc2KHN0cnVjdCBpbnRlbF9kcAo+
ICppbnRlbF9kcCwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQo+ICpjcnRjX3N0YXRlKQo+ICt7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgcmV0dXJuICgoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjApICYmIGludGVs
X2RwLQo+ID5wc3IuZW50cnlfc2V0dXBfZnJhbWVzID4gMCAmJgo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAhY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpOwo+ICt9Cj4gKwo+IMKg
dm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9j
b25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCj4gQEAgLTE2ODYsNiArMTY5NSwxMCBAQCB2b2lk
IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHAsCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47Cj4gwqAKPiDCoMKgwqDCoMKg
wqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgPQo+IGludGVsX3NlbF91cGRhdGVfY29u
ZmlnX3ZhbGlkKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgLyog
V2FfMTgwMzc4MTg4NzYgKi8KPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfcHNyX25lZWRzX3dh
XzE4MDM3ODE4ODc2KGludGVsX2RwLCBjcnRjX3N0YXRlKSkKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3BzciA9IGZhbHNlOwo+IMKgfQoKUGF0Y2ggbG9v
a3Mgb2sgdG8gbWUuIE1heWJlIHNvbWUgZGVidWcgcHJpbnRvdXQgd291bGQgbWFrZSBzZW5zZT8K
CkJSLAoKSm91bmkgSMO2Z2FuZGVyCj4gwqAKPiDCoHZvaWQgaW50ZWxfcHNyX2dldF9jb25maWco
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCgo=
