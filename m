Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPtDERKH/GkaRAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:35:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FC04E8441
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 14:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA14710E00C;
	Thu,  7 May 2026 12:35:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmTRCrKa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EF1A10E00C;
 Thu,  7 May 2026 12:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778157326; x=1809693326;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=E8M+U0AWBkF2gS7dKXTHdGBVe7kng+TVPEibCqexf/4=;
 b=EmTRCrKaU5NelFgxmqifU2iNT0VK/bjHpVLsWzyMPsXH+pOXk0gIaZk6
 7iujQLEdS3P/gqm3b+zZ/HpCCt9aB/i9P/yRsQ9HDI5XgY5cMLCsCtu7d
 8uLJcD8qg76advMqQdAfHl5PBOWxxJqqL+sopY//Pr4/1Df/ZZWm85UtS
 LODV1bPrM81V+vVDB9TeJ5D2UZOfxB9Cm1EJPVVP2i2CtvHgMHyJJxBTb
 dW9ZTKrJzUMRqX79Do2BQXh17OwfaSXE/Wf/7TOcuB4uIno/X4QT9wpym
 /62kEW/G1R0qBuY1UDIs2WyixnsBzN0VmkzIt2svq4wZWliMIsWfNproY w==;
X-CSE-ConnectionGUID: JcJKiszyRWS8G53qf/3tLg==
X-CSE-MsgGUID: ErnvtX6+S3qV4qiWuImnHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="90482202"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="90482202"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 05:35:26 -0700
X-CSE-ConnectionGUID: J3DTrzgJSouY4y5TPtgJIA==
X-CSE-MsgGUID: WvH1/hlGSIaiLGJ5Emnbtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="240779471"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 05:35:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 05:35:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 05:35:25 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 05:35:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D6V2hfDNXycWL9mJ2f/iZULKdJ5QtqDR+BooZoH1XzmUfF7VRE0Mdx8p7NnPbUr3RzfyOx3qlP8W2Tis0Ycwzuzw0w9N5We5K3aJFWXovJrTBH80JOv1FU9bsBHKE0b4DOWLn55BvLeuYFepVzULvh9r80O1OO8qteuqAeJ2rcQAAbFF39391CZRPKn5SzT6WUyH+4ST0KVgULbCFXxaOzvFY25K8/nBfV0uwCypo9jHAEuh0HyYR81Sf3O/lDGTueeL3pxGz0iykgxFwwExuDFsCHn8UTbpbm8qdW3oUDlwGtTZYwrIRwQxPsPaIvNm38AWq6IFTnW9rje+CX+/WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E8M+U0AWBkF2gS7dKXTHdGBVe7kng+TVPEibCqexf/4=;
 b=MHsiwfr7CYfOWWkHlZzdbQhw07+ymXnxpdAvyZZCzsDxja8qK0qRaAH/6BKxeDoEXAYHOp1BFlTzfR56Ai6u1vu5kfOtyia6lgAO+jPokUaNzeG7RWDZ1qymiN1jAV/US7W5rxmURstJtu6qeq/LCerpjkp06SR2Ul8YHl6ijhAGivxKsKj7XWfcI2u++ceDLsEHY/WBuu/MKUVYp3D67EtUHuJikBq1p2dtNylMLIKWtaFcipJVKidn7bVz+0jnoBGrxutQZisxVoEuIxyIQi69VFTYac6THS2ZSya+E01S9EgfC2V3e81nJq5uy/gENFL4BL7CIqy0KaZuy75aMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB9728.namprd11.prod.outlook.com (2603:10b6:510:399::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.15; Thu, 7 May 2026 12:35:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9870.023; Thu, 7 May 2026
 12:35:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/psr: Read Intel DPCD workaround register
Thread-Topic: [PATCH 2/4] drm/i915/psr: Read Intel DPCD workaround register
Thread-Index: AQHczJpnMMT6XEKTJU6GMAoFLHpvprYArOsAgAH1yIA=
Date: Thu, 7 May 2026 12:35:16 +0000
Message-ID: <26a2456c93e47c77ec0b837c65691beebbd9b9ff.camel@intel.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-3-jouni.hogander@intel.com>
 <DM3PPF208195D8D5A61CDAC6A255BC5D27AE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D5A61CDAC6A255BC5D27AE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB9728:EE_
x-ms-office365-filtering-correlation-id: dc32aa3c-d3db-48c6-79f0-08deac351816
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: WBtwOdPKM6k0AYHPEClvRocF+ViFfBRvZHZ9rxTCDe6D+LtSqyGekKLMA0NvqeTHZ5eqrGAsJUexwIK9uie1a8CkkRFytsgQuB4wNBGH4xYbDycEF7sxK4vjk8KJ4S+aVMXuGnaOeTaU9aYacNiTs847qphuOgg10hdaKFWZoAdEqnplAzFm3hjWS4kqKJ4w4sRq7PQxzOpvynwUdgy3BA6H3jTLaW+PSMRPZi4Ea/+P4Bnq/km0UxS4IODfyiccq9VzCrr+ysYxm1Tj7SyDerCEdMNGXYiObZB9FvQlolrC4vbj0FZr6HWv8W8tVIp9yzcF67kOh4MlNY1IWqbszDI8MayRLpT9eId3IFOdsFyoeOULbDVfhNqF0RVnerMnnrEbccnU8aYJGUVi5qeV5F1I1Ir+TZcNEGyYjymcmwhTURRkcWZfokMjn6O5X8fFdBZKd/IwEdaF8hHQRBPFBnyI/NW9JeB88VX0X5NF0W+WE58dbntxvgVy/Ah8wFM2UD3fTQoC4bRztke+WxXdznFlqUBYGNzn/N5OWJVPY4AhuzvM605HRtwWcHTrMkf5KTHFpKv7p636/hyC3oDHkarSryqBIIrIH17Qt3XgEN5OlcwP+uRTeQ0ZViSd/zM+1t5DdqsKGGHlR1K6geIqydQNXii9qerWrRsQPWiESVzXjiCzhGhmrRBLFSOEwJyuDhB0T9sM8k5xtCQNSKvFw6eb+ZiLfBr9RDzYFzD9yqEZ+QZPycaMazFCoQ6RhQf2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWZDcTlRNVRwRWp1RzVFZEw3eVViL0NxTWZZdHpPUGpaSzhFNFhOL1JXb0Jx?=
 =?utf-8?B?WkJwaVpYa1ZXb2w0WFNkREkwQkRXRDlXV2lCRGJHSzFGWkc3eWxVOWt1ZUI0?=
 =?utf-8?B?NEFQRlZlTnEva3owRjFDNGdPZWtZc1pPTWN4azk5WEM0YU1BTHhxeTY2ZS9x?=
 =?utf-8?B?MXYrWThwcVJSZkVlUHdwVzhpOHZDdUtlUW9NU0pLbGFpNFFyTjZHTmJLazhV?=
 =?utf-8?B?VStqYnRZS1orMFA3RnZhdy9uU2hiNWRveEJjaXYxTkpZRktQSUVqM2RlMFdy?=
 =?utf-8?B?a0xZWnZHc2poZHVIQVUyUmdrQUZYZkgwbThCODBoK3hoU2J6Q0FkbWt4SDNX?=
 =?utf-8?B?blBYOTk3b0JTWWMwaExPb2w3L1RpQk9IcTE1RU93RWlWS3d6eHJPOGNvUWV2?=
 =?utf-8?B?ekN5dndTZ0lyZjlvWUdWelpRU1M2emgxd1EyQy9UbDlyTDgwSlRmRzFtaVpN?=
 =?utf-8?B?WmRtK1ZIaWd0SGN2dnI0M2VBTUVPRG5KSlh1ZGx2L1BvV1hza0FDZEJuVWJI?=
 =?utf-8?B?SVdHWnNVWW9UYUFURDZvMjBkZTl1QkVZeUNwSDRMaFlJUWxHTFJqUmVZaG9H?=
 =?utf-8?B?MmI0eVB1aHQ5UFdOa1ltOU42UEd2VU9NcUNZaFk1Q1ozb1RMaHIvaVNhS1FY?=
 =?utf-8?B?b0l6THUvN0Z5dWdJTDRrazZiSGZpeFBhRUorbW42NXRVR0lEV0ozUkNCSlpI?=
 =?utf-8?B?K1loUlV4OURwL21KRDRZeGsxUUU1K3dkTjZ1NDA3QnlDR0dxWkNpWiszWG41?=
 =?utf-8?B?bXhlQXNqS21JbmRrVGJ2QXhoSjZnMkRRdDR3MlNtc3h3UDY4b0dXT0txRnUy?=
 =?utf-8?B?WXdjRnV3SVpOOUZWQ1RiQzBUVFVsL0pvQ0VCaDdXcElIVDM5d0ZweUdQVnBK?=
 =?utf-8?B?MGlTNjBaSTZzUHlIWDFGN0t1NnB2a0k3RUZodnF6ZHZaU0g5VFRxYjFJTHdY?=
 =?utf-8?B?aTZ1VnRtRDU2TGRlemM4ajEvbUVhUTV6dDlEOC9nMFRJbnpQY0JobDdMYldO?=
 =?utf-8?B?SVBtWlVnQ2s1dHVxL3BJTTk1b3AzemhOczA0L21OdEVNY1V6WTZJRDBNQWg3?=
 =?utf-8?B?N3FFaDZoL3JtbmhjYitWcTdTQ2RZVjBRRDJ3UWZxVEMwZFlLdzcyUzNkRThi?=
 =?utf-8?B?SlR3ZEJKUXg1R24vYkh1RVA3c2grLzVEOFYvUVNqaTUvdGtEd2ZoQ1l0UnhU?=
 =?utf-8?B?TWVMYmNQd0xlb1dtWVRkQ3ZjT2RpK3I4S0s4NzFJZ2NSQ2l4TVJjNmNaVE4w?=
 =?utf-8?B?cnhIUnZHUVpBcmQ3OU9OdXJLOVZSUFNadnhiU0RPM29KOEd5ZGZXcjdxOVFa?=
 =?utf-8?B?VjQrZEVON1BJWEUvRnZ4bnhvbFRrMThQdGdXQU50NGZvZGh0QjhxMUsvYzFP?=
 =?utf-8?B?T0JSOW84NUQ2ZnlibGx5ZUdjRHRqeEJjTW92V3o3cWM4RFAzM2xJaWc2em00?=
 =?utf-8?B?R3RralRQQmZiaDBpd3FuYnFqVHA2enROcUp6Um9DajdqN2hWUnVYczVEVE1H?=
 =?utf-8?B?d1dkZUo5RWU4T3libDNXTVVreVZNUkdYZXFKSkp6UnVrSmJjSWJXNEJYREVk?=
 =?utf-8?B?MTVIK1lpUzJtc3ZSdUtSN1RDa1dDTy9sSVNxZVJWcC9ScEZLWWlSQmthRHor?=
 =?utf-8?B?VzFnOWd4cFQ1QW1ZK3RPRUlCL1VBOE02Z0RjaGp0NTVicXpQelNzNm9ONll3?=
 =?utf-8?B?Zlo0TFBINU54NXRUNTRLL2x0THNOQlRYSU1Bang1WEppcjl4VVpzK0ZyaGRJ?=
 =?utf-8?B?bldaSDk3aG1pSjErQi9iNUU4a1E1eVY5eVh1SUJKMEgrVXpqYlFOUDdKWVQy?=
 =?utf-8?B?UEd1OE1BekNPbk10RThXMXVsZmNHdVdoZkwvVkY4aG1rNmN5OHFVN0JDWnRV?=
 =?utf-8?B?eW1sWDNIVGNLM1FjT0ZnZEpnUHdkeTZ4ZTQ4cThBeUM0YitaMGw2aWhNRlYz?=
 =?utf-8?B?YklnbXI4NGw2MFRYZk1uVjl5SlovMmUxTUpibzJqM0dldlBSeEMxSDdFeitH?=
 =?utf-8?B?cndJelJmZU83dEE1ZG1zanN1Rms4T0ZpNXN2Z1hqY2Y0NUtoOHdxY1BvcXBK?=
 =?utf-8?B?eFZ4a0l0SkVPT1VVVS9VSkhqcWk2V2dvZXZvdmxxQ0RYT3h6dEtFWnJtZ0NZ?=
 =?utf-8?B?NU5yY01MRzFpaW1VVHVIWGdYeWUxSUIvZ1hZeWdzOUFuWjN3cTlTTG1zMDRl?=
 =?utf-8?B?MkxlY3ZNTm5kWm85VTd4NzRtcG9vNm1yVmsvVXBHUUVNZm9QMkNJTmJxWVhm?=
 =?utf-8?B?SXJreXJzeDlkTk5BZ0JPckdZM3Z3ZVYvbmNUSEwxaFlJa3cwcnFiSE1SaFFE?=
 =?utf-8?B?ejlJdy9waHRvQlJFZVdhUno2VzRQUGs0dkRaUGhqTll1c0taMkxmU2IzOXhs?=
 =?utf-8?Q?U+ELCr43mQulN34M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9664ECC8B2B5024E8B288ACCC386410A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: mOOZ4oBsb4zr7QoDgjjb2WIvVYfFDBH2/bjyCzXp+AR5DnPNe4qB2Ky4l4dR5KzBjYy5Di9SMFq/3Kveh4CHU9ofun9+8X9cfp81zSv/M1aXS8oyM2GMIeUoOnT+k9HAv4/pMyaUyPP0PU4N310A2GY8d87evJtgSbE6Y6KbBLLcyUS06jI/eb6akvkGqauECVHeaB3ux7hh3kkA31Q3LNCIkszWdimiXYHpvyFuzRg+u6kIaERyzcLi+OIuFHO8CQof+MBNBdTabzo8gz+Tdz19jyB+JyEYBuNp5+LyJAMfzgBA9alGAJMnwxpPfKsimPSmJ17SdopBS2FWe/DcgQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc32aa3c-d3db-48c6-79f0-08deac351816
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2026 12:35:17.0036 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ftljbuojDc8GFZ/EU+0VRbaH9Gc4VQvlVvwbYGg2J7RujPZytkS86TqUevj13Ggy3o0EBcZifofctl1r3lOw5h0+asGIPbg9z/h4BkUszt8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9728
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
X-Rspamd-Queue-Id: A3FC04E8441
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTA1LTA2IGF0IDA2OjM5ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggMi80XSBkcm0vaTkxNS9wc3I6IFJlYWQgSW50ZWwgRFBDRCB3
b3JrYXJvdW5kDQo+ID4gcmVnaXN0ZXINCj4gPiANCj4gPiBSZWFkIEludGVsIERQQ0Qgd29ya2Fy
b3VuZCByZWdpc3RlciBhbmQgc3RvcmUgaXQgaW50bw0KPiA+IGludGVsX2Nvbm5lY3Rvci0NCj4g
PiA+IGRwLnBzcl9jYXBzLiBQc3JfY2FwcyB3YXMgY2hvc2VuIGFzIGN1cnJlbnRseSBpdCBjb250
YWlucyBvbmx5DQo+ID4gPiBQU1INCj4gDQo+IE5pdDogcHNyX2NhcHMNCj4gDQo+ID4gd29ya2Fy
b3VuZCBmb3IgUFNSMiBTRFAgb24gcHJpb3Igc2NhbmxpbmUgaW1wbGVtZW50YXRpb24uDQo+ID4g
DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCB8IDEgKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuY8KgwqDCoMKgwqDCoMKgwqDCoMKgIHwgOCArKysrKysrLQ0KPiA+IMKgMiBm
aWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+ID4gaW5kZXggZWUwNzYxMDZiZTg1Li5lYzAwZmNiNDY3MzQgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiA+IEBAIC01ODQsNiArNTg0LDcgQEAgc3RydWN0IGludGVsX2Nvbm5lY3RvciB7DQo+
ID4gDQo+ID4gwqAJCXN0cnVjdCB7DQo+ID4gwqAJCQl1OCBkcGNkW0VEUF9QU1JfUkVDRUlWRVJf
Q0FQX1NJWkVdOw0KPiA+ICsJCQl1OCBpbnRlbF93YV9kcGNkOw0KPiA+IA0KPiA+IMKgCQkJYm9v
bCBzdXBwb3J0Ow0KPiA+IMKgCQkJYm9vbCBzdV9zdXBwb3J0Ow0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggYjRjYTU4NDNkMDk4Li4x
ZjNmMGQzNWQ1MmEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiBAQCAtNDQsNiArNDQsNyBAQA0KPiA+IMKgI2luY2x1ZGUgImludGVsX2Rp
c3BsYXlfd2EuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4gPiDCoCNpbmNsdWRl
ICJpbnRlbF9kcC5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZHBjZC5oIg0KPiA+IMKgI2luY2x1
ZGUgImludGVsX2RwX2F1eC5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX2RwX3R1bm5lbC5oIg0K
PiA+IMKgI2luY2x1ZGUgImludGVsX2RzYi5oIg0KPiA+IEBAIC03MTcsOCArNzE4LDEzIEBAIHN0
YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwN
Cj4gPiBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjbw0KPiA+IMKgCQkJwqDCoMKgIGNvbm5lY3Rv
ci0+ZHAucHNyX2NhcHMuc3Vfc3VwcG9ydCA/ICIiDQo+ID4gOiAibm90ICIpOw0KPiA+IMKgCX0N
Cj4gPiANCj4gPiAtCWlmIChjb25uZWN0b3ItPmRwLnBzcl9jYXBzLnN1X3N1cHBvcnQpDQo+ID4g
KwlpZiAoY29ubmVjdG9yLT5kcC5wc3JfY2Fwcy5zdV9zdXBwb3J0KSB7DQo+ID4gKwkJcmV0ID0g
ZHJtX2RwX2RwY2RfcmVhZF9ieXRlKCZpbnRlbF9kcC0+YXV4LA0KPiA+IElOVEVMX1dBX1JFR0lT
VEVSX0NBUFMsDQo+ID4gKwkJCQkJwqDCoMKgICZjb25uZWN0b3ItDQo+ID4gPiBkcC5wc3JfY2Fw
cy5pbnRlbF93YV9kcGNkKTsNCj4gPiArCQlpZiAocmV0IDwgMCkNCj4gPiArCQkJcmV0dXJuOw0K
PiANCj4gQW55IHBhcnRpY3VsYXIgcmVhc29uIGZvciBjYWNoaW5nIHRoaXMgSSBzZWUgdGhhdCB0
aGlzIGNhbiBiZSBlYXNpbHkNCj4gcmVhZCB3aGVuIHJlcXVpcmVkID8gTWF5YmUgSSBtaXNzZWQg
c29tZXRoaW5nID8NCg0KSSB3YXMgdGhpbmtpbmcgd2UgZG9uJ3Qgd2FudCB0byByZWFkIHRoaXMg
b24gZWFjaCBjb21wdXRlX2NvbmZpZy4gSXQgaXMNCmFueXdheXMgcmVhZGluZyBEUENEIHJlZ2lz
dGVyIGZyb20gcGFuZWwuDQoNCj4gQWxzbyB3ZSBhcmUgcmV0dXJuaW5nIGVhcmx5IG5vdywgd2Fz
IHRoaXMgbWlzc2VkLCBkbyB3ZSByZXF1aXJlIGENCj4gZml4ZXMgPyBBbHNvIHNvbWUgZXhwbGFu
YXRpb24gd2h5IHRoaXMgbWFrZXMgc2Vuc2UuDQoNClRoaXMgaXMgcmV0dXJuaW5nIGVhcmx5IGlm
IHJlYWRpbmcgdGhlIElOVEVMX1dBX1JFR0lTVEVSX0NBUFMgZmFpbHMuDQpUaGF0IGlzIHN1cHBv
c2VkIHRvIGJlIHVuZXhwZWN0ZWQgZXZlbnQgc28gcmV0dXJuaW5nIGVhcmx5IGR1ZSB0byB0aGF0
Lg0KVGhlcmUgaXMgYSBmaXhlcyB0YWcgaW4gbmV4dCBwYXRjaCBpbiB0aGUgc2V0Lg0KDQpCUiwN
CkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0K
PiA+IMKgCQlfcHNyX2NvbXB1dGVfc3VfZ3JhbnVsYXJpdHkoaW50ZWxfZHAsIGNvbm5lY3Rvcik7
DQo+ID4gKwl9DQo+ID4gwqB9DQo+ID4gDQo+ID4gwqB2b2lkIGludGVsX3Bzcl9pbml0X2RwY2Qo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0DQo+ID4gaW50ZWxfY29ubmVjdG9yDQo+
ID4gKmNvbm5lY3RvcikNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K
