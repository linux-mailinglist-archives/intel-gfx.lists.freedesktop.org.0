Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yG7XGfXlgmnNeQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 07:23:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C513FE24A8
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 07:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00AA210E196;
	Wed,  4 Feb 2026 06:23:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pr5nurV+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3EB610E16D;
 Wed,  4 Feb 2026 06:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770186225; x=1801722225;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jeFOv25pMf/nP+WTyiQHq+uDsGOQQmEPcw4ed75Qj3E=;
 b=Pr5nurV+XRiBDNhCSoGblDPVY/0zpdCeRDI8xtJXf+tEldoXzwYM3mDm
 kHtWRuUc60NYgYxzojxyuyvNfrKxgKN1N8ioAOrMpYKy5ZigsnAIfiWJc
 4PBeeHl4weBg/P9yFoR8HD0FvZSwIczbql5GX7v5HP2GSvjLWzfvHMI8G
 cnel456qltPmPKmz0zkXQd36Ebz0EMxeYSaEQjpyTolsYzRoa1sQZbPVT
 nd9rARHDHCyMdcfpxt8IU+ZjGv1IuNi6ec6TBOx+4OJ3fq3bni8LBPFXk
 PNmXRaHnZ4elJ/bazWa09M91fgU1Au6JICYKEh+Xet3gUnWeWwMdRfDdk w==;
X-CSE-ConnectionGUID: mICQgie9QXeqqYLXbjy7Dg==
X-CSE-MsgGUID: mt8/mBn6SqWgnvCienQl3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71091690"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="71091690"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 22:23:45 -0800
X-CSE-ConnectionGUID: 1dsPJB58TA6+rsb01AUHzw==
X-CSE-MsgGUID: wpM98JydSaeB9zSniRpwUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="247669602"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 22:23:45 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 22:23:44 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 22:23:44 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 22:23:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JNAg8Zk48+10azsiKasySrVsyySngBefTwIl4eKa3d4NeOZoFuys+mwklDS5/+IRkTcLUvcRLsAQwO7ZwbVCVwt5mncuoKAW2nmxYUT4b1lub+syor3vqbmSbOcblsc3nX9UMCeVTVNGzcLNKHoCcB0rMU8tGMjzSdgRjKRV02EdOqj4HdWYjNKTXdEDf40RIQXMyC+KhTmGcK1tJU7gWSuMB/9gPbZL9fw/QYUMRaNxjdRgGzSVUZI3H4CdLD62zElfJp/mIFRy9YA5wPvmuC66iLQkeIbvgQLW+zVMljFRCZzBhLhDN6zB1xYlrcC2A0ctWOIVJfu/E4LD4HWtxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jeFOv25pMf/nP+WTyiQHq+uDsGOQQmEPcw4ed75Qj3E=;
 b=hnI6+o3LhIfYXVs2rAxFlpnN4m1zaQc6DcBzjFEVhZZBdFwyzb80lE5lI2I4PO51RFAyO1VfVeQXx03g4C54gBzR+d8giBP7a3fuzmPXO23hC+Gli7ma/OAKlK61XEX19lCudkq1WTJdLopNeBTPsQmiqQpfMa4FP9S1zEhWr6k8eO/goNT1gqA+jfkHAGLHl13Afq/rbXDFzS11+KlrXS8v0ew64+zZYBJOn9q3UZEl3uqBG4QB1zLQGYwpxrYJamhuYB8POtxzJGGev0GYus4Xjp/01WiQB1G57GjnxG5uLbfYGiCk8L8j85W53nAvauNPVKPcaFHAR9qwdMeFVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB5797.namprd11.prod.outlook.com (2603:10b6:303:184::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Wed, 4 Feb
 2026 06:23:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%2]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 06:23:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Thread-Topic: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
Thread-Index: AQHcWV12jdNbH6FUt0qwyEnRVQQX87Ul+nGAgEyQbAA=
Date: Wed, 4 Feb 2026 06:23:40 +0000
Message-ID: <91a5e75f2fba743ad6df4cf1c186238103676e73.camel@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-2-ankit.k.nautiyal@intel.com>
 <dffd1c790c9c391c9b3c9afcaffd7ae04436528d.camel@intel.com>
In-Reply-To: <dffd1c790c9c391c9b3c9afcaffd7ae04436528d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB5797:EE_
x-ms-office365-filtering-correlation-id: 697fa8cd-25bb-4b81-4e98-08de63b5f092
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ZndwMDlTekM0ejF2dnBxRGg0L0pLRStQdTQvMHdJN252bks1Q3hpZ3JjZkJX?=
 =?utf-8?B?eUZXbFVVemdlUTV4ZlM4Y1Z1ejlDbi8wTXpzTVhGcDdQd2pjaUJ4QXBIakdT?=
 =?utf-8?B?TTlEQ2hjWEkweHR3SFZORFhhUGxaTWFDL00vQXkyVnIzeFhoWjZVTlhBbTBm?=
 =?utf-8?B?Q25GRDZMWWNKT0ZZcUpwSnhhVUxKM1hzZFcrOS9kcnBLc0d2L01FQmxEQ2s5?=
 =?utf-8?B?dGdIYlpBWFlla0FBWHdmWExnNGJ4d2RJdk5VRTVhNk5zTHhndmNGUlRXdjVh?=
 =?utf-8?B?ZkFLdFhxQWJ1SjVzQzk0WFdvKzBORXBCUm5BbkdPSzIyQkhGUE9URHJsMnhD?=
 =?utf-8?B?VzdrY0wrcldyRjBuU3pZWG5Ob0Rod0hIdytnT0NyRlZlTmlVMzMvazBjQWEr?=
 =?utf-8?B?cjVjWklGbTYyUTh0RXl5ZkhuVGRzT3BCcTNWZVhDNzFpUEgzOXZaM3hmT0U2?=
 =?utf-8?B?U05UallKaDE2VjE3Z1hFdC9xWW5kelE5bXNuUDRlVWJQQU5QQUE4VXhpYks2?=
 =?utf-8?B?dndESGNiYmlPMVpGWHNwR2JGdVp4UFpiRlFZb2J3elpsemJZbElFVVBmSG9i?=
 =?utf-8?B?ZU15SFJjREFXT0ZiZy9nd0p2RTBwVi9ZcjJrdmgrM2o4WWtGaW9aK2xNL0lu?=
 =?utf-8?B?TlFNbzh1SEpWalplZGVDcmpmYndrZDB5Y3BPUGorMVA1QlJ2Q3BJT2NZdkhI?=
 =?utf-8?B?TGZKSVdqQmFUdXJKVW84SmxFa1l4YzY3bkVHaDFaZFFSM0VpZHpCSmFLWldy?=
 =?utf-8?B?WlZWbm91K1JvY3cxZEVmTDQ0RDBHWG9wYXQ4OG5hNHJlOEJaUmNpeWc1OVJW?=
 =?utf-8?B?eTQ0d2lyY3FQVHFYV0txWDRyRStvMVB5b0o4VU1PNUZzVWtvNzN0alZSTGpy?=
 =?utf-8?B?TFlnWUhUSVh1bmVpQml3NDQwb0dvak5PZXFJVEh2Snc2SXcvaDNUN3h1Y1Vp?=
 =?utf-8?B?MVhsRktaWDZ0SEx0cTIvZ3kwWCt5R0Y5akZwZXNqc3dWQkhsWlV5ZGdseE5Z?=
 =?utf-8?B?QTM5TnRjVUNlVEFSdDFrNW03WkkxTUZEZUVRV211RnZ4RzdyWUV4czVlcW9G?=
 =?utf-8?B?dHZLbTg1cFAwMTYyVmFCUnNlYWNMMVFvWjJ6L1BJMUtVQm95cGI4TEN1RnRs?=
 =?utf-8?B?Nk1WVFBMRWcyQjVONHNHa0dMRWxmcmR1R0o3SjNWWkRQQTBzOVZhc3FZNEFX?=
 =?utf-8?B?c0E2Z3ZQOUs1U2x5dGpyUUV0QTNFbmxWZThHVW9oYmxpc1hJZVlPa1R0VGlL?=
 =?utf-8?B?MEJGWU5yUWV5V2xJcHdQWE5yODZuQUk5bzZMREpiU2FSY0gzSGZGMDNkYzNC?=
 =?utf-8?B?MWdlNW1YZjFsejJpNVNQVHJQcStEZ0ZpK0F2alZ5bW1xK1dVeldKVjI0Z05k?=
 =?utf-8?B?V1F6d1lxSVc3dXZQNDhXeVRqUllSQ1BlUXpLays3VHlnK2FIT0ttNzhacE9Q?=
 =?utf-8?B?TXErNmRRcXlwRFMvMWRram9uRSs3ZkJ2d0Y4azZFd3E0anltN3p3NlBvVUF1?=
 =?utf-8?B?ZXl4REg4MzVVZUx3ZkEzRC9rQVRkK1kyU1dTN3VqU3Y0cE02c2pQVktKUmJx?=
 =?utf-8?B?eXRDaytIQ1VRSlJ3TXQ5VExVNDBKeVNnTzVVcXMwK0RLYk9vMG9EVnk0c0kr?=
 =?utf-8?B?RW4rN1ZJM0RsWHhVWHk3Y09jMllwUTV5OUc2bGNtSVdSbFZseWNEZTJxQldI?=
 =?utf-8?B?WnlVMmdyZWNzd2haOVltR2h1WGhUcTJDUXJIR3NwY2t6UlVsQ1ZOVVlYT2tZ?=
 =?utf-8?B?RGREUmJIMGVTTjhoQmh5TzJsOU5lT2VEL2lKNjRpRGhlc1R2UlBaLzNKazc4?=
 =?utf-8?B?Szc1WDJBNnBiSkdwOFVGNGMyVloxaFlyMi9IK2dHMWJQckN6SThTK3p3UkxR?=
 =?utf-8?B?NlpYZEVLcWpQUXVyUGpIdlJPOUdGVDNXWS9YOUlJSU5GRERIa3RQNmtIRWt1?=
 =?utf-8?B?UW9qamwxWC9Ba0lzMkkwRjV3eC9BMlBncXpsYlp6RlJnUngvbHhmOGlMcmlL?=
 =?utf-8?B?aVR4SU1xcWtMZkg1VldlK2VEd0VxRzhXdmhYdWIyQlc2cTBXOTRKRHFLdWlQ?=
 =?utf-8?B?c25CUm9hV3VhVTVPOXRvME5haE5tVFNicGlGbWlYWWtET3VudnNUWGV6WTRk?=
 =?utf-8?B?TXlhZms0UnR4bEwyUDdhaXE4S3NPNVdxd05hbzZaaTV4WS9EcUNnUHJobkZr?=
 =?utf-8?Q?RLkimWC6eLVwuEt4AXE0GO4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWhRbmN3MzE2WjhrMVBLTGduck5WNTkvM2FyRnRzMnZCUHd4UjhpcjgvVHNt?=
 =?utf-8?B?U1lZdzd6YnZNaG92NGYyUk5lNXJSSDVtdG1ENUt4V3BONjBtWm50bE1LZjhH?=
 =?utf-8?B?ZTRva3N6cWVRaldvSW5GY3dJNjZNN28yck1jR0xVYnZ1N2pETjVLbWxNT05I?=
 =?utf-8?B?WnllMTJmbE5sMEg2MnQ1Z2Y5SHh1d2ZSUllueHRQM2JFTnFwc2o5d2dlZEFs?=
 =?utf-8?B?T2NFckFLY2lOYWpzS0EyVys3bllOVUM3Mzl2Z0lrbGhwdFdoU3V1NjdhRjVC?=
 =?utf-8?B?RzJyVEZFRDBScVBwcUFxMWxmWXExMjBBQXBHVGRuUFRyRHBsRkplL2VRNllI?=
 =?utf-8?B?d0t4OVpwYVlUMzdpaThJeTlycWMyZlN4cSsxOWsyc0gzTTdwNXc1N2F3TmM4?=
 =?utf-8?B?UWVHZkVjQnB3OG5ZbG5TS0pzdWFzcUR5U0VTK3BvRHEvQTBRSy9YQXVhdU8v?=
 =?utf-8?B?MWtrRnpkOUgyeDRkRXNiTlFYNHJnNE5sSXhBMVMvU3NUVFhKYnpGK3dkR2hJ?=
 =?utf-8?B?UEhFcTVKSXpPTzVEeW1uMVdqRFhvNWpaU0E5RWF0bGMyWC9FT2xxM0VYaHE0?=
 =?utf-8?B?SU9USnB5NGxVNEdOc2gwVlYwRU1JUjZrdVRpZ2xPTUt4Vy93Q2dMd0s2NG56?=
 =?utf-8?B?QXNpOUV0UVV0cFg3YXRtc1lLTGNLeHUrY0Z6VWNiTUxjblpGd2pubXdMK1ls?=
 =?utf-8?B?dlowaHQ5NkFXb292QUVQd0NZNkhzbzJaZVVrRGlNRGxsWmg0dHVqUHRzOG9o?=
 =?utf-8?B?UWNLck5DK3Zldk9vUmRLK296d1BDVTByWStmdGo4T2NSNUUyNnUxekdDMXVq?=
 =?utf-8?B?YktSQW54aHZHdTVsbFFITE1sYmFhQW9jR1dpUFNXcFhpVWEzMkU0WjJVRVNo?=
 =?utf-8?B?bTZoaVVXdFpKWi94dW93S2svZkdCbTNXc3N2bUFrcXZpNUlSaTNDdFVybUpK?=
 =?utf-8?B?cTZJTVEybnNhUG1lY3d0M21tNlp6cW1NWVR1U1p1cnowVlVidU83N0Q1Nkt0?=
 =?utf-8?B?T2VMd2xnMHlpaEtBbDMrTlF0SGRKZjVKSVlJQnFML1FjcU5Ua0RENy9nd0hy?=
 =?utf-8?B?a1NlRE55Y3hBam5SSW5zSkFvRG1QTGJyN01Rc2t2Qzc0STBUaHRvZEtBWjIv?=
 =?utf-8?B?SFljT2Z6VlRoM2p3aHMwV3hib3F6K2NuNVlXUTBIMlB4RVFwTHptQmx3Ukpp?=
 =?utf-8?B?dnI4VnpQQUQzWFVlRk9oUElWL0JNMXVBazhkb1M5ZUtndWJEWEMxVS80cDVN?=
 =?utf-8?B?akdFS2xidlkyQTcwazhLeVFUMGxvaStqWVRvdnl2ZmJCbnh4RGx6eHpjdTFZ?=
 =?utf-8?B?U0ZkOVNleFJtYkc5ZEdOOTJlZ1ZmZHEwMWdUWngrd0VuQzRtaEdXMnhaOG9E?=
 =?utf-8?B?RE5YRzZnYzFteGxpZXg4QVJWYUhudktBT1pUSFcyN2U2WnhxRlczUXNaN0Uy?=
 =?utf-8?B?QU5JWUlPSVpjbkdVMDVLWWw2UCtpVjdwVW8rZ2t5dVpTYkIvMDNEU2NTUmJQ?=
 =?utf-8?B?Smlqa3FVR0NUVWNJRmk5c3pxYUJWOHpVRklQTXlIeWdyYklxbU8vemtERE5K?=
 =?utf-8?B?NUNUL1VDcVR3Qm1QWGdzRHBxWjlWQzQveGJTL2lOeEZDZ1dGNXBrcWd1R2o3?=
 =?utf-8?B?SzJLODVJY0ZoRjNSNjRmZm9JSnJPUnhGTWZWckVlcmhtUVBUWVZOMnQ4b0lr?=
 =?utf-8?B?bnM1Sjc0aXZPc2dGZ003SHY5dkVCTUduVHJBS2ZOZWtIVGxUSDB2bTJ2VWdR?=
 =?utf-8?B?b1FFbW1VbHo1YnZkckFMUkE3V2VrYnlPbUo4SXoyV2M3YzRKUFBLL0l2dS8z?=
 =?utf-8?B?TEV0VE5lMW1kVjJGM2pON28zQXZxVkxDTDlGZndHeWlPM0g3eFkrbURvRDE1?=
 =?utf-8?B?MG84OUx4bTQwUlYzZCtPSG1UUW5hY290U1FRN3dKK2pWbzZSdmZiNTJRWHYy?=
 =?utf-8?B?VmRadytaTW1vdE5HdzIvSEpITWZheEpkaVQxNjE5RjFZSUkwWldtR2NQbEFy?=
 =?utf-8?B?NVZnYUU4UEtKczVYSGc5SDJiMWltczkyOEZYT2sxeVg4TG9oOXBzeSsySGRi?=
 =?utf-8?B?bjRVbVN5Q3Y0VnVaSW1sRVU3OUo4Z3JCWmRPSVJZclJudmdrZWlMTlZaQVAr?=
 =?utf-8?B?UlBkSDRCdXZmS1ZFb044cjZTcGd0MUxobisxRnVsQVd2UWprem1OUHBNREZJ?=
 =?utf-8?B?MUEzRkgvenhQK0ZTb1c0ZEJNbHcrWmtDMVVQVTVEYURjLzh6Z0gvS1QrRDRG?=
 =?utf-8?B?RWc2eFQyd3Uxb1BjWUpUZG9jZUR3dzJLRENNU2RaUWNSR25QVUttNmYxU2U3?=
 =?utf-8?B?YW5XY3VRdkE4WGZOTzdEQnZmNzNXNFhxRHZjWTZUQVBVUnd6UkZLeTJnb2RG?=
 =?utf-8?Q?tFakGobEdbiiQ/kC548mZ6yf3tXov91BBHZ1X7PQ+d5Ci?=
x-ms-exchange-antispam-messagedata-1: rLB9a+D31wiNOsgQhEXei7Pwb4osbeIQ1Yk=
Content-Type: text/plain; charset="utf-8"
Content-ID: <48939BB005353B4DA79D8FD28E67B93D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 697fa8cd-25bb-4b81-4e98-08de63b5f092
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2026 06:23:40.9084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oj6ne4CtSkmtFMYnVhu5o47nMbzcIxIh5+RREF3EC5zbt48Ct0J4qrxVKLxt2pLDiZ0uIDaQNdVWzgGoSrSa+xf07sAeB06+rkOcKPlq20w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5797
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C513FE24A8
X-Rspamd-Action: no action

T24gV2VkLCAyMDI1LTEyLTE3IGF0IDE1OjEwICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyNS0xMS0xOSBhdCAxOToyMSArMDUzMCwgQW5raXQgTmF1dGl5YWwgd3Jv
dGU6DQo+ID4gQ3VycmVudGx5IGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZygpIHRyaWVz
IHRvIGFjY291bnQgZm9yDQo+ID4gZ3VhcmRiYW5kICtTQ0wgcmVxdWlyZW1lbnRzIGR1cmluZyBl
bmNvZGVyLT5jb21wdXRlX2NvbmZpZygpIHBoYXNlLA0KPiA+IGV2ZW4gYmVmb3JlIGd1YXJkYmFu
ZCBpcyBjb21wdXRlZC4NCj4gPiBBbHNvLCBMT0JGIGRlcGVuZHMgb24gY3J0Y19zdGF0ZS0+aGFz
X3BzciB3aGljaCBjYW4gYmUgbW9kaWZpZWQgaW4NCj4gPiBlbmNvZGVyLT5jb21wdXRlX2NvbmZp
Z19sYXRlKCkuDQo+ID4gDQo+ID4gQWNjb3VudCBmb3IgbG9iZiByZXF1aXJlbWVudHMgd2hpbGUg
b3B0aW1pemluZyB0aGUgZ3VhcmRiYW5kIGFuZA0KPiA+IGFkZA0KPiA+IGNoZWNrcyBmb3IgZmlu
YWwgZ3VhcmRiYW5kIGluIGVuY29kZXItPmNvbXB1dGVfY29uZmlnX2xhdGUoKSBwaGFzZQ0KPiA+
IGFmdGVyDQo+ID4gdGhlIGd1YXJkYmFuZCBhbmQgdGhlIGZpbmFsIHN0YXRlIG9mIGNydGNfc3Rh
dGUtPmhhc19wc3IgYXJlDQo+ID4gYWxyZWFkeQ0KPiA+IGNvbXB1dGVkLg0KPiA+IA0KPiA+IFVz
ZSBjcnRjX3N0YXRlLT52cnIuZ3VhcmRiYW5kIGFuZCBjcnRjX3N0YXRlLT5zZXRfY29udGV4dF9s
YXRlbmN5DQo+ID4gZm9yDQo+ID4gdGhlIGNvbXB1dGF0aW9uIGFuZCBhZGQgbW9yZSBkb2N1bWVu
dGF0aW9uIGZvciB0aGUgZGVwZW5kZW5jeSBvZg0KPiA+IGZpcnN0DQo+ID4gc2RwIHBvc2l0aW9u
LCBndWFyZGJhbmQsIHNldCBjb250ZXh0IGxhdGVuY3kgYW5kIHdha2UgbGluZXMuDQo+ID4gDQo+
ID4gdjI6IEFkZCBoZWxwZXIgdG8gdXNlIG1pbiBndWFyZGJhbmQgcmVxdWlyZWQgZm9yIGxvYmYu
DQo+ID4gDQo+ID4gQnNwZWM6NzEwNDENCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmtpdCBOYXV0aXlh
bCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoCB8IDYzICsrKysrKysrKysrKysr
KysrLQ0KPiA+IC0tDQo+ID4gLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5owqAgfMKgIDMgKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuY8KgwqDCoCB8wqAgMiArDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ludGVsLmMgfMKgIDANCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdnJyLmPCoMKgIHzCoCAyICsNCj4gPiDCoDUgZmlsZXMgY2hhbmdlZCwgNTYg
aW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+ID4gwqBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9pbnRlbC5jDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGluZGV4IDYz
NzJmNTMzZjY1Yi4uOThjYmY1ZGRlNzNiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBAQCAtMTUsNiArMTUsNyBAQA0KPiA+IMKgI2lu
Y2x1ZGUgImludGVsX2RwX2F1eC5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX3Bzci5oIg0KPiA+
IMKgI2luY2x1ZGUgImludGVsX3Bzcl9yZWdzLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF92cnIu
aCINCj4gPiDCoA0KPiA+IMKgI2RlZmluZSBTSUxFTkNFX1BFUklPRF9NSU5fVElNRQk4MA0KPiA+
IMKgI2RlZmluZSBTSUxFTkNFX1BFUklPRF9NQVhfVElNRQkxODANCj4gPiBAQCAtMjQ4LDE0ICsy
NDksNTggQEAgYm9vbCBpbnRlbF9hbHBtX2NvbXB1dGVfcGFyYW1zKHN0cnVjdA0KPiA+IGludGVs
X2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgCXJldHVybiB0cnVlOw0KPiA+IMKgfQ0KPiA+IMKg
DQo+ID4gK2ludCBpbnRlbF9hbHBtX2xvYmZfbWluX2d1YXJkYmFuZChzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX2Rpc3Bs
YXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+ID4gaHcuYWRqdXN0ZWRf
bW9kZTsNCj4gPiArCWludCBmaXJzdF9zZHBfcG9zaXRpb24gPSBhZGp1c3RlZF9tb2RlLT5jcnRj
X3Z0b3RhbCAtDQo+ID4gKwkJCQkgYWRqdXN0ZWRfbW9kZS0+Y3J0Y192c3luY19zdGFydDsNCj4g
PiArCWludCB3YWtldGltZV9pbl9saW5lcyA9IG1heChjcnRjX3N0YXRlLQ0KPiA+ID4gYWxwbV9z
dGF0ZS5pb193YWtlX2xpbmVzLA0KPiA+ICsJCQkJwqDCoMKgIGNydGNfc3RhdGUtDQo+ID4gPiBh
bHBtX3N0YXRlLmF1eF9sZXNzX3dha2VfbGluZXMpOw0KPiANCj4gSSB0aGluayB3ZSBzaG91bGQg
Zml4IHRoaXMgdG8gdXNlIHByb3BlciB2YWx1ZSBpbnN0ZWFkIG9mIGp1c3QgbWF4Lg0KPiBBdA0K
PiB0aGlzIHBvaW50IEZJWE1FIHdvdWxkIGJlIGVub3VnaC4NCj4gDQo+ID4gKw0KPiA+ICsJaWYg
KCFjcnRjX3N0YXRlLT5oYXNfbG9iZikNCj4gPiArCQlyZXR1cm4gMDsNCj4gPiArDQo+ID4gKwly
ZXR1cm4gZmlyc3Rfc2RwX3Bvc2l0aW9uICsgd2FrZXRpbWVfaW5fbGluZXMgKw0KPiA+IGNydGNf
c3RhdGUtDQo+ID4gPiBzZXRfY29udGV4dF9sYXRlbmN5Ow0KPiA+ICt9DQo+ID4gKw0KPiA+ICt2
b2lkIGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcA0K
PiA+ICppbnRlbF9kcCwNCj4gPiArCQkJCQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAq
Y3J0Y19zdGF0ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVz
dGVkX21vZGUgPSAmY3J0Y19zdGF0ZS0NCj4gPiA+IGh3LmFkanVzdGVkX21vZGU7DQo+ID4gKwlp
bnQgd2FrZXRpbWVfaW5fbGluZXMsIGZpcnN0X3NkcF9wb3NpdGlvbjsNCj4gPiArDQo+ID4gKwlp
ZiAoIWNydGNfc3RhdGUtPmhhc19sb2JmKQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwkv
Kg0KPiA+ICsJICogTE9CRiBjYW4gb25seSBiZSBlbmFibGVkIGlmIHRoZSB0aW1lIGZyb20gdGhl
IHN0YXJ0IG9mDQo+ID4gdGhlIFNDTCtHdWFyZGJhbmQNCj4gPiArCSAqIHdpbmRvdyB0byB0aGUg
cG9zaXRpb24gb2YgdGhlIGZpcnN0IFNEUCBpcyBncmVhdGVyIHRoYW4NCj4gPiB0aGUgdGltZSBp
dCB0YWtlcw0KPiA+ICsJICogdG8gd2FrZSB0aGUgbWFpbiBsaW5rLg0KPiA+ICsJICoNCj4gPiAr
CSAqIFBvc2l0aW9uIG9mIGZpcnN0IHNkcCA6IHZzeW5jX3N0YXJ0DQo+ID4gKwkgKiBzdGFydCBv
ZiBzY2wgKyBndWFyZGJhbmQgOiB2dG90YWwgLSAoc2NsICsgZ3VhcmRiYW5kKQ0KPiA+ICsJICog
dGltZSBpbiBsaW5lcyB0byB3YWtlIG1haW4gbGluayA6IHdha2V0aW1lX2luX2xpbmVzDQo+ID4g
KwkgKg0KPiA+ICsJICogUG9zaXRpb24gb2YgZmlyc3Qgc2RwIC0gc3RhcnQgb2YgKHNjbCArIGd1
YXJkYmFuZCkgPg0KPiA+IHRpbWUNCj4gPiBpbiBsaW5lcyB0byB3YWtlIG1haW4gbGluaw0KPiA+
ICsJICogdnN5bmNfc3RhcnQgLSAodnRvdGFsIC0gKHNjbCArIGd1YXJkYmFuZCkpID4NCj4gPiB3
YWtldGltZV9pbl9saW5lcw0KPiA+ICsJICogdnN5bmNfc3RhcnQgLSB2dG90YWwgKyBzY2wgKyBn
dWFyZGJhbmQgPg0KPiA+IHdha2V0aW1lX2luX2xpbmVzDQo+ID4gKwkgKiBzY2wgKyBndWFyZGJh
bmQgPiB3YWtldGltZV9pbl9saW5lcyArICh2dG90YWwgLQ0KPiA+IHZzeW5jX3N0YXJ0KQ0KPiA+
ICsJICovDQo+ID4gKwlmaXJzdF9zZHBfcG9zaXRpb24gPSBhZGp1c3RlZF9tb2RlLT5jcnRjX3Z0
b3RhbCAtDQo+ID4gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192c3luY19zdGFydDsNCj4gPiArCWlmIChp
bnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9ydGVkKGludGVsX2RwKSkNCj4gPiArCQl3YWtl
dGltZV9pbl9saW5lcyA9IGNydGNfc3RhdGUtDQo+ID4gPiBhbHBtX3N0YXRlLmlvX3dha2VfbGlu
ZXM7DQo+ID4gKwllbHNlDQo+ID4gKwkJd2FrZXRpbWVfaW5fbGluZXMgPSBjcnRjX3N0YXRlLQ0K
PiA+ID4gYWxwbV9zdGF0ZS5hdXhfbGVzc193YWtlX2xpbmVzOw0KPiA+ICsNCj4gPiArCWNydGNf
c3RhdGUtPmhhc19sb2JmID0gKGNydGNfc3RhdGUtPnNldF9jb250ZXh0X2xhdGVuY3kgKw0KPiA+
IGNydGNfc3RhdGUtPnZyci5ndWFyZGJhbmQpID4NCj4gPiArCQkJwqDCoMKgwqDCoMKgIChmaXJz
dF9zZHBfcG9zaXRpb24gKw0KPiA+IHdha2V0aW1lX2luX2xpbmVzKTsNCj4gDQo+IE5vdyBpZiBj
cnRjX3N0YXRlLT5oYXNfbG9iZiBpcyBzd2l0Y2hpbmcgdG8gZmFsc2UgYXQgdGhpcyBwb2ludCB3
ZQ0KPiBzdGlsbCBoYXZlIGxvYmYgZ3VhcmRiYW5kIHJlcXVpcmVtZW50IGluY2x1ZGVkIGluIG91
ciBvcHRpbWl6ZWQNCj4gZ3VhcmRiYW5kLiBJcyB0aGF0IG9rPw0KPiANCj4gQlIsDQo+IEpvdW5p
IEjDtmdhbmRlcg0KPiANCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHZvaWQgaW50ZWxfYWxwbV9sb2Jm
X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAJCQkJwqDC
oMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUsDQo+ID4gwqAJCQkJ
wqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4gKmNvbm5fc3RhdGUpDQo+ID4g
wqB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVs
X2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+IC0Jc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVz
dGVkX21vZGUgPSAmY3J0Y19zdGF0ZS0NCj4gPiA+IGh3LmFkanVzdGVkX21vZGU7DQo+ID4gLQlp
bnQgd2FrZXRpbWVfaW5fbGluZXMsIGZpcnN0X3NkcF9wb3NpdGlvbjsNCj4gPiAtCWludCBjb250
ZXh0X2xhdGVuY3ksIGd1YXJkYmFuZDsNCj4gPiDCoA0KPiA+IMKgCWlmIChpbnRlbF9kcC0+YWxw
bS5sb2JmX2Rpc2FibGVfZGVidWcpIHsNCj4gPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJt
LCAiTE9CRiBpcyBkaXNhYmxlZCBieQ0KPiA+IGRlYnVnDQo+ID4gZmxhZ1xuIik7DQo+ID4gQEAg
LTI4OCwxNyArMzMzLDcgQEAgdm9pZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9jb25maWcoc3Ry
dWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgCWlmICghaW50ZWxfYWxwbV9jb21w
dXRlX3BhcmFtcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpDQo+ID4gwqAJCXJldHVybjsNCj4gPiDC
oA0KPiA+IC0JY29udGV4dF9sYXRlbmN5ID0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192Ymxhbmtfc3Rh
cnQgLQ0KPiA+IGFkanVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXk7DQo+ID4gLQlndWFyZGJhbmQg
PSBhZGp1c3RlZF9tb2RlLT5jcnRjX3Z0b3RhbCAtDQo+ID4gLQkJwqDCoMKgIGFkanVzdGVkX21v
ZGUtPmNydGNfdmRpc3BsYXkgLQ0KPiA+IGNvbnRleHRfbGF0ZW5jeTsNCj4gPiAtCWZpcnN0X3Nk
cF9wb3NpdGlvbiA9IGFkanVzdGVkX21vZGUtPmNydGNfdnRvdGFsIC0NCj4gPiBhZGp1c3RlZF9t
b2RlLT5jcnRjX3ZzeW5jX3N0YXJ0Ow0KPiA+IC0JaWYgKGludGVsX2FscG1fYXV4X2xlc3Nfd2Fr
ZV9zdXBwb3J0ZWQoaW50ZWxfZHApKQ0KPiA+IC0JCXdha2V0aW1lX2luX2xpbmVzID0gY3J0Y19z
dGF0ZS0NCj4gPiA+IGFscG1fc3RhdGUuaW9fd2FrZV9saW5lczsNCj4gPiAtCWVsc2UNCj4gPiAt
CQl3YWtldGltZV9pbl9saW5lcyA9IGNydGNfc3RhdGUtDQo+ID4gPiBhbHBtX3N0YXRlLmF1eF9s
ZXNzX3dha2VfbGluZXM7DQo+ID4gLQ0KPiA+IC0JY3J0Y19zdGF0ZS0+aGFzX2xvYmYgPSAoY29u
dGV4dF9sYXRlbmN5ICsgZ3VhcmRiYW5kKSA+DQo+ID4gLQkJKGZpcnN0X3NkcF9wb3NpdGlvbiAr
IHdha2V0aW1lX2luX2xpbmVzKTsNCj4gPiArCWNydGNfc3RhdGUtPmhhc19sb2JmID0gdHJ1ZTsN
Cj4gPiDCoH0NCj4gPiDCoA0KPiA+IMKgc3RhdGljIHZvaWQgbG5sX2FscG1fY29uZmlndXJlKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uaA0KPiA+IGluZGV4IDUzNTk5YjQ2NGRlYS4uMTRkYzQ5ZmVlNGMz
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxw
bS5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgN
Cj4gPiBAQCAtMzgsNCArMzgsNyBAQCBib29sIGludGVsX2FscG1faXNfYWxwbV9hdXhfbGVzcyhz
dHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqAJCQkJIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+IMKgdm9pZCBpbnRlbF9hbHBt
X2Rpc2FibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gwqBib29sIGludGVsX2Fs
cG1fZ2V0X2Vycm9yKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+ICt2b2lkIGludGVs
X2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZ19sYXRlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRl
bF9kcCwNCj4gPiArCQkJCQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0
ZSk7DQo+ID4gK2ludCBpbnRlbF9hbHBtX2xvYmZfbWluX2d1YXJkYmFuZChzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiDCoCNlbmRpZg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGluZGV4IDBlYzgyZmNiY2Y0
OC4uNzgyZTk4MWJiYzg5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiA+IEBAIC03MDIwLDYgKzcwMjAsOCBAQCBpbnQgaW50ZWxfZHBfY29tcHV0
ZV9jb25maWdfbGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+IMKg
CWlmIChyZXQpDQo+ID4gwqAJCXJldHVybiByZXQ7DQo+ID4gwqANCj4gPiArCWludGVsX2FscG1f
bG9iZl9jb21wdXRlX2NvbmZpZ19sYXRlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiArDQo+
ID4gwqAJcmV0dXJuIDA7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9pbnRlbC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ludGVsLmMNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0K
PiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uZTY5ZGUyOWJiMmQxDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBpbmRleCBiOTJjNDJmZGU5MzcuLmZj
ZWNkZjNkYzc4YyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92cnIuYw0KPiA+IEBAIC02LDYgKzYsNyBAQA0KPiA+IMKgDQo+ID4gwqAjaW5jbHVkZSA8ZHJt
L2RybV9wcmludC5oPg0KPiA+IMKgDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9hbHBtLmgiDQo+ID4g
wqAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3Jl
Z3MuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gQEAgLTQ1
MSw2ICs0NTIsNyBAQCBpbnQNCj4gPiBpbnRlbF92cnJfY29tcHV0ZV9vcHRpbWl6ZWRfZ3VhcmRi
YW5kKHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gwqAJaWYg
KGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkpIHsNCj4gPiDCoAkJZ3VhcmRi
YW5kID0gbWF4KGd1YXJkYmFuZCwNCj4gPiBpbnRlbF9wc3JfbWluX2d1YXJkYmFuZChjcnRjX3N0
YXRlKSk7DQo+ID4gwqAJCWd1YXJkYmFuZCA9IG1heChndWFyZGJhbmQsDQo+ID4gaW50ZWxfZHBf
c2RwX21pbl9ndWFyZGJhbmQoY3J0Y19zdGF0ZSwgdHJ1ZSkpOw0KPiA+ICsJCWd1YXJkYmFuZCA9
IG1heChndWFyZGJhbmQsDQo+ID4gaW50ZWxfYWxwbV9sb2JmX21pbl9ndWFyZGJhbmQoY3J0Y19z
dGF0ZSkpOw0KPiA+IMKgCX0NCj4gPiDCoA0KPiA+IMKgCXJldHVybiBndWFyZGJhbmQ7DQo+IA0K
DQo=
