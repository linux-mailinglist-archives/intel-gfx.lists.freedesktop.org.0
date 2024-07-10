Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD74792CD56
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 10:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E4310E6B8;
	Wed, 10 Jul 2024 08:44:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tqiv7ksV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 149E110E6B8;
 Wed, 10 Jul 2024 08:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720601092; x=1752137092;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+YaYSxmvp6r450/7pir6+yRLFrh29rTbC0zSKUNWg7A=;
 b=Tqiv7ksVAfph6Ncs4Y0BGfDVJITsPIGda6NnUJ6D6hIN3lFO2H0ZOScQ
 rJ63qEiC5OQZA5UwYMdC4Be9pv14yBsyYUQdntM/Xdbt2keGOKrCHafwa
 OHNgp4pNrmUpJGOoyoKGvBmD/LAoTY3o8efNTtWTLzIypHIoNG7Raduc/
 mfllyi1ZAXF0KW8QviKrmEd6IuYWuSdnD7FWiOyUh2zLAqUQRe0lFDEJy
 c7cZbfaz/5X6RcrR1jKoZ5ZB9y/ZYvR/tqVPu+8WyGBwv4flN39nAdznt
 wh6wXNGp1IB7iOAtUPzIBjGUQ4Ch6z7DY2lN1a1n3xvHB+WLbuSu8ODT/ w==;
X-CSE-ConnectionGUID: NTIvKWgyRDmBrm6wLKjebA==
X-CSE-MsgGUID: KhZ6aostQMGlCtZmb9n6AQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="35340156"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="35340156"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 01:42:54 -0700
X-CSE-ConnectionGUID: 5kiip5RDQleqJtggaMVNRA==
X-CSE-MsgGUID: KlYalFsrRfiqyOce/bRp3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="52945819"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 01:42:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:42:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 01:42:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 01:42:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e1Ui5xpFPODvp/yiTWBzB6zXjnJoDfzUyAwXkD5n+yFbPUsvJYdXNtMR4ErKUoBmDrFNQEHTjEJYcDDK3l2ipfMEj2MJfipXoAqEJyDvWaQZl3BYwE7EZHT8rVEPVeIFy+cAQgTFTguuZvywr/ceQyn9iDsJcCGcpVzyGiCvc92PE4fm712OcF0IpxEPednbxu8v9uLSdTIA1OJcItXf608VUUt8gwDJ541NdO+ZMxNPab3TloDSnNnaG7Vbdo19dZTa/rCN7E36WPIn9VSkgM4ZmxuM0V5WdOpVcpYk1dJUDwUKby+hl1NE3KUOBcmH7q30C5PckrfEWJVgLN1vFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+YaYSxmvp6r450/7pir6+yRLFrh29rTbC0zSKUNWg7A=;
 b=Yf/lcTjDa0pZJFvr+OmqULBtKV9hwB+qhQaNe9OjUsPAMU22D62L93QLXatRdsgNG9qaao7iChkD3mGtnhc/jPClqUES9Uc/jUizD09PM4qFWxBtga5Q7Rzl0kGbyKuM5WBmyTLlGiSuhz81EZ6BXgQiNZD64G9jYz0s+5Q/bcWdSNRJArQ9mjgBvkNXOFFFCbl9R4mwNM8Coh9yd410ed9Tnc9L+t/sIWzNg5gMgtQUWY796X/ZUdgHyoaL9acIHERQLZaJuARcXbacxsynPtwbFR+1QwOGSgz6gVSbAq3X4ajr2CsKl95ke6J892XWv8kxxedI/4B3TW5rgz7TpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB6993.namprd11.prod.outlook.com (2603:10b6:806:2ac::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.20; Wed, 10 Jul
 2024 08:42:51 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 08:42:51 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 15/20] drm/xe/fbdev: Fix BIOS FB vs.s stolen size checke
Thread-Topic: [PATCH 15/20] drm/xe/fbdev: Fix BIOS FB vs.s stolen size checke
Thread-Index: AQHazuspbptWjALzx0aHdl6IQ7mWrbHvq9Vw
Date: Wed, 10 Jul 2024 08:42:51 +0000
Message-ID: <DM4PR11MB6360FF26AA56341D6EABBB09F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB6993:EE_
x-ms-office365-filtering-correlation-id: 0d6ffa11-93ce-4700-4bd5-08dca0bc488b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?N3FVa1p2dUdZUWhWbWo0N3VhTkVWVklmZHVKQngrKzBHTDAzRGluSUxpeStj?=
 =?utf-8?B?b2NGUG9GS0dTaDBMcCt6VURSU1p4Tk9IVXV6YTdDQ0gxMzNpWWNxSWx6Z3hN?=
 =?utf-8?B?TXF5a2FpSmpGQXdOWTBZeVZVRXlsZjNWVWUxMDl5eHdyQlpaY3h2WFM1VUYw?=
 =?utf-8?B?UHozVUphQkFJOWphMmJrWDlaKzYyTEk2RzN2NytPQzQ0c0xQaXRPeFRJcUNC?=
 =?utf-8?B?YzRRM0lxN094ZEVQTnJXeXRyemNUOVc0VFZQODJMMDdvbEcxMDV1bFNCUmN2?=
 =?utf-8?B?Mld5NmkvOXFyN1hXNGh2NlVBTkw0TS9RNWVCcDh5bkNldDNSTmVSK1YzcVRW?=
 =?utf-8?B?QUtyY3kza0lETk9EUzhydklPZmVVSFIzbWZ1ZS8wWnhyamZUNEMzazVxZTJW?=
 =?utf-8?B?UngxTlZSZGJBWHgvaWx3ZFJLK3g3bjI0TVpneDh4aVBzSmlQTjN2Q0JvMUxo?=
 =?utf-8?B?Q0xsVDBKVkR4enU2d3JHdUJqWnJZKzBvcE5XWS9CMXdhd2lvaksxZkU5dElQ?=
 =?utf-8?B?MHZqTDhCZStPbkMvRTMzSGtnTkJpWng0MHMzVU5KWU9WYzFhbGtZZ25vRnRK?=
 =?utf-8?B?VTc4aWRFa3JHT1NsV1pUZldXRVdIQU5oOXRBenowK0F0ZCs5VjMvUTZrVFJ4?=
 =?utf-8?B?d3pvSzhNSEtLVEhRMjVYOVBWSHdVSmpXLzZJWTZZZFVkVEV0OEQ1dzA3dFJG?=
 =?utf-8?B?bWVocjBMTHNVOE9kMGlKYWpBVDNYaUpTalRIRElzZnpEWkFPUWtZd004OUVE?=
 =?utf-8?B?Z0hiZjFneHZUSXFZQ2Zpc0FNa0pXc2pVQjZNWjUvNzlxdHE5RnRUVHJMM2Jw?=
 =?utf-8?B?aFFPK0ZWZG52SFgxbEEwSzloU3RiTFB3cEU3Ykw5YTVWU2E1U2xja3JCSUZO?=
 =?utf-8?B?eVRldFVxa3FMcVF6S0dlMGVYSHgvdnRFcFJKRzhZTWVtaEVuL1NIS3l3QnBi?=
 =?utf-8?B?RHoyMzRvVkJTcDBrblNFMHhMbnk4Z3d2Kyt1aFBkSW5NSk4yTDBHUUZDOTIw?=
 =?utf-8?B?V0lvUzAvOTdCS0NWRzhoRUdDcENuUlRPVGFxbXJpekhVRDE1WWVXOTZFZm13?=
 =?utf-8?B?NnIxRnpYVVpOVlpPV21WOWVuWGlOZUdSWFM3M21MUlhTMnNXYmtmNEV6U1FO?=
 =?utf-8?B?UnNGQnAwdWx0cnptdVlWcExML21ublExYUpUSG5Lc2ljUHpsZzVCL2R0ZGNq?=
 =?utf-8?B?Sk9yeVVOazJZNHlOYmIyS3FTdGthU0tTOUJyUWczazArNktwM1Z2eVRJb0V6?=
 =?utf-8?B?Tk85dUlUNGkrakJadU03NnZROGVhNnFvdlZ2VHFSdUdSRmp3dXg2bFNiMTFC?=
 =?utf-8?B?U3lISDJuZWhoY296azZ5Vi9tQTdqYnhyL0V2MXBtUXYwNHdzSkIrSEhjSTky?=
 =?utf-8?B?aXV3L2dWRkE4RnlYZzhMUVV0T1FrTzZudHF4QkdGSjRpamV1Z2YyVnVYOUlp?=
 =?utf-8?B?WUM4U3I1T1NkK082MDRTK04vUklKNGtyS1h5amxVWUhpNzFobE9TSDN0Njl3?=
 =?utf-8?B?dkg2V2c4YVpiQ1VFeU9QOGptZ081N3M4ajlJWG5IbXpxSjdqVWhWL04yZXJa?=
 =?utf-8?B?eXNrbGlBbWZQZUZoVVVOUmVwcnpTNVUxNWFTTzhIT0NnYldKTUR1US9aVDBP?=
 =?utf-8?B?VFgyeFQ5QTZSN1JNbndXdFpOb1pzSVBGbTNkNmJWQVhwK3NLVjhUaG9nWFhi?=
 =?utf-8?B?emV4UHR0WXlKL2tYNlFTbmRmcGk5cmNGc2U5TmZwTlVxVE5oY1V1M1lOUW0y?=
 =?utf-8?B?dVYvUGx5WmdGbTZWN2hMZXhwZ2ozY3dxdW9MREM3S0xkeFZDK1JjOWdFZWtx?=
 =?utf-8?B?cmRWanBvTkJMcmgydEtNWmZQdDhlK0ZORmRCZG1WbEM4eWEveVVGYlZoOTFN?=
 =?utf-8?B?bWtRb3VSZENBa0MyUmJSZnJVditPTkJJc001a3A1SWtuN3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1I3VUNYNnNuVVF0R1llNzZGRDVVOVJVYmluVUdQNDR5V1p1cldmSDRCWHZn?=
 =?utf-8?B?RzVYSUdQNWJmUjYzYnpWV2JQOTc0WEN1K0VhTXBZdFdUZG85eUJBai9seTVJ?=
 =?utf-8?B?T1luWEIralJySW9laVA5MnI5djJsdDRzK0hPOEFwZHZkQzFlVjB5MXN5ZDJz?=
 =?utf-8?B?T2pjV2MxYnNyMnJVZUZicFgrUWNKbTc2STFIUk9uWndtNVZwVVNvRWhXandM?=
 =?utf-8?B?QnpsMzhYUVlzaGpzV1lYQjMzUFBYMjM1QzJpaElwanNtT08vMWc2c2dNbkRC?=
 =?utf-8?B?Rmtqb05vbDRYVDdZY0NVRG9YelowT3pOZzBTRnlJV3AwV1JxOHdDMHFLUStH?=
 =?utf-8?B?WFQreWNvZVFDMFQ4Ym52MlFjZVc2aFJGNFF3aUdmbVhpb0N2REQ2U3NESlRO?=
 =?utf-8?B?MFRBMVJnWHhnOTQ1M1YwcUljTGlqQXZBVm83WU92M2J2RXZ6cjZkclhvU3Mr?=
 =?utf-8?B?SVJITVNPY1pyRzZrUzQ2c3pMNnlYenA2SmIwUWUybDFDQ092SWwwbjJPV0Rl?=
 =?utf-8?B?a2JYVGxJZTExS1hLVUNGeHhWdjFLcFFTOUZlbXlUSy9nY3lFZGp6Z2ZWWUI1?=
 =?utf-8?B?cTZzSzdJWnhtRm1lOXB5MmJOVWZ2UkI0NUlJNWp5Sm1TK2xCOEhYSXZBeFZZ?=
 =?utf-8?B?dENHc0E1bm02c2VOSG1kV1YxYUM3a3ZUTlU4ZDgxNmtzR3RHMGExS2g5Y1dQ?=
 =?utf-8?B?SzlPL0ZGSDZFalowWUZSZVdmSjJRRkZ6bXNvWmRRNXVHeEluZzRRdDdSbWFV?=
 =?utf-8?B?T0hEaS9TNkhkanFzUUJKa1hxUmxoTWRiaTVxTzUyNTN1dVFkMjE0Y1NhOVlO?=
 =?utf-8?B?cWN4ODdNckw0TSt0OFNzWklMZWxPNkgwYTJjRUhsYUlGbWpMalUycTZPOWFt?=
 =?utf-8?B?S01iVmpsUW43NTA5eERyTUVBVHhqdHVOUitIdGdVWWMwTm8yM3U4REgxN3JH?=
 =?utf-8?B?SE4rNG1MdjBXTVQwSUVBNGJmNUcwK1JwY2NGTGpmaEFHRW42ZGZvNkRjdjhR?=
 =?utf-8?B?cHlwUFpOa1lka0lsWnNMTXFESmR0SkxWRk45TEJuUHMyQ3JUN3A5K05vSVpx?=
 =?utf-8?B?TDRDczE1anNqZW5WQzBlOHdJYUFHemFuMHBBbzhLcGhicXF4cm9IVXBjbkZu?=
 =?utf-8?B?MEtCUWt0bVhWenZVakhBdGVMUUVpMXM4TDU1QUNvV09MK1ZWZ3BJdFNBZjR6?=
 =?utf-8?B?VkdaWitvd1k5aUE4Ni8zRndGNFRlQlVzNC91ZTVnMHp3b1FyM3YyQmc3RzBR?=
 =?utf-8?B?aHpHWVlZRnE0WjRtZk1NS2ZqenhIYnN6c1VXblVLSURBVXA4dFVFSUQ0K1p2?=
 =?utf-8?B?d245SkxtVDMwSnhtWkJVamhuaEJ6YUxmRElkTklSQUJHcFdycVp2U1pzYndq?=
 =?utf-8?B?NHc2SHo5VGlJR2NPaVF5cTJPRDVKSzVGRTV0YzNFVmRQMTZTVVNKN3JOQlFi?=
 =?utf-8?B?blpSL2NwR1hXTk84dFRva1RvaWtWUVhkNzBOK0lTQ2U4c2c0K3RSKzNGazBj?=
 =?utf-8?B?ekdRNENUS0FUNUxJZVhYcEtqZzVFMEZWWGlGaGdRWDdLSEw0eGE0czZEV3Q5?=
 =?utf-8?B?eHBhc1lrRWtvTElPaGZxNis4QUlzaC9hbnVGU0dTT1NiUlBGSkQrOFpTZWd2?=
 =?utf-8?B?cGdacnd4ZElOL0drc2RwWTlGbmlzR2dFbnYyRFFQeEk4K2VlYTBXZnBXL2Jo?=
 =?utf-8?B?c2tERWtIK2VqMVdlZjZFK3VHWThyS2x0SDRxSDd5YU5FVFNtUkF2T1FKYzg0?=
 =?utf-8?B?UUpnR2NheCsrYk42RlY1Z09JdCt3VFZaR3JKekpuNHRrdTlxTmRIeVdMcVFj?=
 =?utf-8?B?d1Z5cGVjN3lETlNOeDJCdUNVNDRuSTFyVDJFZklNMkFnb0djT1BDQlFUNEdw?=
 =?utf-8?B?TElPZzlGSjdzWVpSclBOT0t2ekJDNnZ6cDB1dGRsaW5WNnI4ZkdvZi93aHBY?=
 =?utf-8?B?VFUzZmZpV0E1TTBOTXcrdktFT1QzS3d6ZDJlTmh2S3ZpM2hlcVJudm1lemZp?=
 =?utf-8?B?aHBrYzR2M25HMnlTVktkQlFjVGt3VGh4ZEJPWFNCVmkxUDlSZzlZeCt4bnI5?=
 =?utf-8?B?ZWMvcmxyWUNoWVhmd3VOSDYyZSszUFNNVnZ5LzJpYk5FWDNMSkNWRG4zT1hD?=
 =?utf-8?Q?MHH+arRvZHCqOrnnHDw++DwGg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d6ffa11-93ce-4700-4bd5-08dca0bc488b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 08:42:51.0543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eJeo893Mv9WGi93PheFnKVn42Uey4w2oq1SYMc0zy5orSd9qDxHePchD3y6d1fKaHmX4reFeV8PgT2oJTdkVwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6993
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDE1LzIwXSBkcm0veGUvZmJkZXY6IEZpeCBCSU9TIEZC
IHZzLnMgc3RvbGVuIHNpemUgY2hlY2tlDQoNCk5pdDogVHlwbyBpbiB2cyBhbmQgY2hlY2sNCg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTG9va3MgbGlrZSBzdG9sZW4tPnNpemUgaXMgaW4gYnl0ZXMsIG5vdCBwYWdlcy4gUmVt
b3ZlIHRoZSBib2d1cyBQQUdFX1NISUZUIHN0dWZmLg0KPiANCj4gQWxzbyBmb3Igc29tZSBybmFk
b20gcmVhc29uIHhlIHJlamVjdHMgdGhlIEZCIGlmIGl0IHRha2VzIHVwIGV4YWN0bHkgaGFsZiBv
ZiBzdG9sZW4sDQoNClR5cG8gaW4gcmFuZG9tLg0KDQo+IHdoZXJlYXMgaTkxNSBhbGxvd3MgaXQg
dG8gYmUgdXNlZCBpbiB0aGF0IGNhc2UuIEFkanVzdCB4ZSB0byBmb2xsb3cgdGhlIGk5MTUgcnVs
ZSBmb3INCj4gY29uc2lzdGVuY3kuDQoNCldpdGggdGhlIHR5cG9zIGZpeGVkLCAgTG9va3MgR29v
ZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxh
bmVfaW5pdGlhbC5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3Bs
YXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVf
cGxhbmVfaW5pdGlhbC5jDQo+IGluZGV4IDVlY2NkNmFiYjNlZi4uMjE5NjVjYzhhOWNhIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9wbGFuZV9pbml0aWFsLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+
IEBAIC0xMTAsNyArMTEwLDcgQEAgaW5pdGlhbF9wbGFuZV9ibyhzdHJ1Y3QgeGVfZGV2aWNlICp4
ZSwNCj4gIAkJICogZmVhdHVyZXMuDQo+ICAJCSAqLw0KPiAgCQlpZiAoSVNfRU5BQkxFRChDT05G
SUdfRlJBTUVCVUZGRVJfQ09OU09MRSkgJiYNCj4gLQkJICAgIHBsYW5lX2NvbmZpZy0+c2l6ZSAq
IDIgPj4gUEFHRV9TSElGVCA+PSBzdG9sZW4tPnNpemUpDQo+ICsJCSAgICBwbGFuZV9jb25maWct
PnNpemUgKiAyID4gc3RvbGVuLT5zaXplKQ0KPiAgCQkJcmV0dXJuIE5VTEw7DQo+ICAJfQ0KPiAN
Cj4gLS0NCj4gMi40NC4yDQoNCg==
