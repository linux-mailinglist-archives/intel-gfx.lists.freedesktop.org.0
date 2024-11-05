Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D039BC8A4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 10:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C34E10E53F;
	Tue,  5 Nov 2024 09:07:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KUhOZXlp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC9C10E53B;
 Tue,  5 Nov 2024 09:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730797632; x=1762333632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=om0pKdUYCz3xfos2kGs7syYO69tmktwQ64UkqEHzTwE=;
 b=KUhOZXlpNNmD850X0mGFX4ROG6o/A7vn4IU5y1P4W+GYwxtUPim+hP3Z
 YOghsA3NmemQedGZ4X4jmSLVMZNEiueCvzE/oO81rOkzeruGMBw0fbVvt
 o4DHaTFVcttpae6PxBfztUS3sR4JIZ02zccop08PcWGYUt9nureSodqPb
 wnPmefS0lAExrg1MmBbRJ4TP7g/6QMGfZIJPDBmWGnYGcF2vzKzC7gOKY
 603ZDdBQAosSzwFmdwKZOS172UR4Ivbd3zoDxTcFh1paW712unpupi0tX
 1AOWabndpMBfptvoO3Affq0n1OOXDVLDLlTYCM+8k2ZgXon0H4RarUBJ8 Q==;
X-CSE-ConnectionGUID: 6imHXxO0SyOy5V/Sov4P0g==
X-CSE-MsgGUID: TRBl554URTS1rkqcxsr3BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41124089"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="41124089"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 01:07:12 -0800
X-CSE-ConnectionGUID: uDmS6n0/QSmI510gTYoSGw==
X-CSE-MsgGUID: VsGMieLXSbCUcvibsY1eIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="114721928"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 01:07:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 01:07:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 01:07:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 01:07:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wWyQ6IV/9PmKFSKwgSOZqQ4uyP0KFoyIq24PwkKWSwzb0YiDVfX2+CP28T7ecpsnZsPGFMhx4L8fhgFahgQSFLsuwnK6wGAlT5AxaicK7RDzojxsn55sfiktsJHeL8W4ul4URASmB/CkFp77jXnJxIdI+JURwAv3FqyLw/snP86i2cLfzQZ9mw300ZnQg7PmwUQwhrAYENstbSL4EWpQAHSQwuP4pECD7nUJZZjF2CVMjOfn5bfj1itEh3K3wPElHoytfZLdfc0GUlE8+u6hNn5CG43Ww0qJUVVMI4r3N7Ia2KO0AHPCdueH+OZX+H3Qkas4fv0Lt12FERaky8g+Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=om0pKdUYCz3xfos2kGs7syYO69tmktwQ64UkqEHzTwE=;
 b=Q5k5WbDUpxq8RsPLtPAzuZstJ5zdsWxK6nBv8ynSb6C2atlKzOPWXukCduRO0U+/7Txh3MqO7Thsix3LpBnFn1vXdBemZ2JTwJQOtuDmz62kPTSyPasMya8q8p/ge7fku/dqNe60Qk8anQNJipMUGoetsutJ2oInn0HcYUZUhHqdU/6cqIbxg0pqI1hrg/gPkv+btTATcScn9U7qy+6wCLtcuFJ1TuH2APYPf/lrrIkNmctS4wm5Hn+fTPlmHQUivzX7muJ0V8gZ3vxe+yHjRQ0Rwki8qUttcqs65oWFeP6Qcr06SyOe61wLTXnVu7cxK57Xi9RLcaBZlsRRpUaR9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB7081.namprd11.prod.outlook.com (2603:10b6:930:53::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Tue, 5 Nov
 2024 09:07:09 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Tue, 5 Nov 2024
 09:07:09 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [PATCH 1/8] drm/i915/display: update
 intel_enabled_dbuf_slices_mask to use intel_display
Thread-Topic: [PATCH 1/8] drm/i915/display: update
 intel_enabled_dbuf_slices_mask to use intel_display
Thread-Index: AQHbL1KhJs0QnRarV0Cr+yvyb+4qLbKoYZMAgAAD9IA=
Date: Tue, 5 Nov 2024 09:07:09 +0000
Message-ID: <f8efd36792ef9de4cb1ffb850db4fe369a69fc05.camel@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-2-vinod.govindapillai@intel.com>
 <8734k6hxjp.fsf@intel.com>
In-Reply-To: <8734k6hxjp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB7081:EE_
x-ms-office365-filtering-correlation-id: 247d74ac-0890-4c98-d861-08dcfd793a52
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Zi9oZHNudnBjaHNJUmQzWHZFbE8rZDJISHdmWi9IWkgwSk5NeWJjcS9wM21R?=
 =?utf-8?B?citjWko1U2JmNFFrYWVkcDl0eHVieDdUUHA1dTVZbG5DcXNld3QrRXRHL1dF?=
 =?utf-8?B?cWVlMDlUTXYwRWJDVzlDb3dqR0oyZmNSenBBc1dmandvTnFMSGluRDZBNmFD?=
 =?utf-8?B?Y0V4MEpYb253WVNGVUZma0thenRIYndIaHpFSGhXVE9BQWhvSVh3bHdGS201?=
 =?utf-8?B?UVdVdDhNaGZadERHbDFFZUE0K2N3UGpTdm9JU3dMdlF2TVljUjFzV0pzN1FO?=
 =?utf-8?B?TmVCblFOTFcydHBxSFFiaTloK0N6NjNLVk9aNWhOSHRoOURwVHJYZzBaUUdK?=
 =?utf-8?B?aDF2aVZ2SXR2blNkTnBRSGJsb0laSllsNTZpcUhKMEZVVjFBYmtyb3JTUENT?=
 =?utf-8?B?MTRabVhuNXduRzBWRjgxWUtLajNnY0tZcXg0ZVJmRWpZUmdVRkFGQUVLYVQ3?=
 =?utf-8?B?a3o2QUNiMHRXMlZIQ2QwYXlrdWFuMjZwVmYxWCtrbTA4ZDdyYUVHM1NWTmVo?=
 =?utf-8?B?ZHV5b0JoNndxWEtYLzQ4YlcxbkVLR3RWaEZNRkR1VHZEUzdsbEdPNkxaSjhM?=
 =?utf-8?B?KzdGckd1cmg1SURNd2x6cmpwWnIwc2Q3V01HdEZBTnBqZ2c1K0doZ3lkUFdm?=
 =?utf-8?B?LythR0hWOFY2bjdJejBJWlRKREQ0L3JlUU50RXQrTnFnTWlzcU9LNTZTSHRT?=
 =?utf-8?B?aGQ3TGhzckZIaHNZdmFJTnBNbHpRT0pmV2hCZlpFUWo0R3M0eEdJbk9QZWNx?=
 =?utf-8?B?bTMxaWNtMzJMUGQ0NXZpUU9Ec3psb2syUHhSeENUTUs0ancyY29vTTdWM2JP?=
 =?utf-8?B?OFBxTFM2bHUwY3VwYTFtMkJiRkVHNURqbTZDTTNTeGVpRTg3ZTVBR2FINk5y?=
 =?utf-8?B?dTdxU0UvVkhXUldNcDI4Nk5zWVlrRzh6ZHhVd281OWR4NDMxN291TGlOSEho?=
 =?utf-8?B?ekpXMlQ3azc3dHpMM0p3VnRZQmUvSUZsNUZFQ0V6R3VrN1NUclZhcFEwb1hE?=
 =?utf-8?B?VjYza2xRaW5uY3Yrcms3N0RiT1JPd3ZDc2lXVEkxSzUyc2RmNkZ6aFQzS1Rj?=
 =?utf-8?B?aVVESms1Zm5CeEdQSEJ3bjIxY21iaHpjdTZPUExoWTVSTDNIakNyTlhpQVN2?=
 =?utf-8?B?SDFPQW1tcEZpSEtMbGFHNWF6TCs0SHpUMHRtSzZmNlpITnV2cFRyU1NVc1Y5?=
 =?utf-8?B?WEdJMTFCMWhCbTBrekNpcmxUdlJIaDdLc2Q4YlNTOFpwOEJ5ZmtFMG5GbDBM?=
 =?utf-8?B?QTNwZEhhcHZ6WlhEaDZNNW9DZHNTWklhd1A0R0JZNTJnN2VIcEc0RXBSbFA5?=
 =?utf-8?B?WEJReGl0V1UwQXRoVGZLZ20wNjNkNDR5NlNzeXEyT3FjWGNsWUtEczZKZi9r?=
 =?utf-8?B?a0grMGlaU3lRa3pNaFlJdW9Lb2lyLzVCR3dVa0gzWUs3WXdaRENUeFdqeU4x?=
 =?utf-8?B?UDI4Z3ZjamppeU1HRjM3TC9rOVM5OXVrZFBNVjRRdVpVcmNRVkFEaWlya29k?=
 =?utf-8?B?U2pGSmU2bzVKUzRxUFJIeHErYjhJek41Sjh2cmdsNzlORk9HVStsVjJzUlJG?=
 =?utf-8?B?VFNsbkJPQzJ6bnNHM2xsY2lGdVZSNHdqcnFtcXhsL1QvRHNZaE1mUHBIQTRS?=
 =?utf-8?B?Unk0cHVnbElZcVpRU3FyZUo0RzRhTkxEbnVhbXJXZ0IrTUNYUHFobmNqWXAy?=
 =?utf-8?B?QnY2Z3V1dURXNlM2bUZEbXBpanc5dVlkeFhDMG16TzQ4Q3JQc2Qwd1N1TU1u?=
 =?utf-8?B?bFlYSlZLR05TVGZJSjczN2IveXRBenk5eXJvTTc2NE53eCs0MXpqWjQvcDZm?=
 =?utf-8?Q?eNTIjE8L6DDZBi89lKaHpAcBp9nxs32CHpL28=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TytSRlBsS0tYZnNVM1YvYUx2bTI0bktaeVZLb2ljbzI3N3N3UXpVcDVrVHly?=
 =?utf-8?B?SmRiMVArdXBzNFd4OWpMRXFnNG1iOVJxempCRWFQanNaVExZM2xiSVlUVW0z?=
 =?utf-8?B?OFFxWEhZcTNJUHVQMmpHYkl4eFRmL01HTkxuRDFyWG0yVXordDBHZDFWbXRB?=
 =?utf-8?B?aUh1THF2Z3FMMm9Na0wvU1RZWi9rZzlNbGk4U0ZXclcycHhPWWR6aHdoanlL?=
 =?utf-8?B?REZ6bldIcHZ4K1BHTElQL0tURXFhZEtvN1hDdUtHK3kwbHZzVC9WVXk1OWor?=
 =?utf-8?B?NSt2Q2Jid1gzSjlzN1NTY2R6dEFFdkNUeHlLWEkyUTIvQjcrTG0yU0NIbUpW?=
 =?utf-8?B?bmRuVHpBT2VPRHhZQmpVSk04QXQyUWlwc1ZDT1Y0UFRFN3ViY29SQ055TXVC?=
 =?utf-8?B?M0JFOTQyUjRKRXJGR3E1UFR0UUZBSnk1SzVWVW52bWt2ZUJIT3R6bkl0b1kx?=
 =?utf-8?B?TE1WeWRpRmVTemZERE1QTStITDJ1U24rU1FrL3dKbFVsNnp3Q3ZEN0hiOUFJ?=
 =?utf-8?B?SVNBK2ltTSszMVYvMlpPbmdqTGxtMjF0b0Uza1IvUnhpbEZlc1RHdzMxK0VF?=
 =?utf-8?B?T29Ld0t2TjdlRHlLWDRxUUxWcUVvalRRZi84djNLY3VoMGhlQTd2YVVlSUF2?=
 =?utf-8?B?aTdKUGVFSGsxVjgvWis1eGsyVWtmRWUxYlNKQ25KTG56MUxkNCttRWttcWJE?=
 =?utf-8?B?Slc0eVVtWGJjTzVjVG1WcnllcGNFT1ZrV0wrbmM4ditDQzdQeHJNWXQ0bERz?=
 =?utf-8?B?VU9PM2dYSDUxUnVPRVc0RDZUU2VxbmtJbklRdTk5TUNPU0JNMFBzYmUveXEw?=
 =?utf-8?B?NzJlSjQ5Zld6UkM5eTlRMHBsZmNSMVFqZ0dyVk1hNVFMTWxDOU1vOWtrTmhZ?=
 =?utf-8?B?RnlQSjRoditnR0ZZT1NDSzZENWlsMDNiaEhQOWoyOWw0akxMQWtVTEthK0VW?=
 =?utf-8?B?bDJxY1hQNEFyYjc0citwY2VmakUySDlpYUI2Wm9SODlaWWdVOXpld2d6U1M0?=
 =?utf-8?B?bFJBZkUwc04wSnFETTVHTHVSNVMvU3ZrSGZIZXhiZ0ZhQVB6bjBjOEduOUpy?=
 =?utf-8?B?dHJuUWNVOGtNYmpDS3FzSHpTSmQwQ21qN3Vvd3VRbHpEOUJFM29id0NLZ2d6?=
 =?utf-8?B?WHBsY3V0ZnN1RjQ4TlBoNnlRYkF0VDFPSkI2b2RSSUdrc2NCSWNJbWJMT0VZ?=
 =?utf-8?B?K3JYdjMxNlYvUDUxTFpkcFRVSUZrT25nZnZkVm5DSEhUTlZsN2ZVdWxWQjFX?=
 =?utf-8?B?bGhCemNqWmVjL3U0RTl1NXdyVFJYdHJubFllTGFaZmZGQUhFckl2ZHNwd3E4?=
 =?utf-8?B?UkxDMndsSlV5VHJ1U2ViQ1dvVFRXVWcvQk8vbTZuamluTUpyM2lFYlVVdFZh?=
 =?utf-8?B?akFGS2ZZZjRWdVFBUHl1TWx1UHArOVdnOHlFWHA1NnVJZTRuRHJhSGdTNS82?=
 =?utf-8?B?L0h5eitCVzI1SUpPSVBiWGZHYUY0UE5tUXJxdzI2bjdvMkp2bnA1dXhQMEl4?=
 =?utf-8?B?NS8yaExVbEJtOVNaTUd3TjVycXZndzZ2T1lncDhiSVdPMXFiUFlpVFNZelpK?=
 =?utf-8?B?UmJUWERzT0U1dzM2dEJMSkJicVNlbnBFMFJyNDZIQ2cyNzgxS2dIMUtNY1cw?=
 =?utf-8?B?R3QvWk5aaXU0NUh0Y2ZwUm02NVU3bjArcHYvcDlRTkF2cStsRjUzcXl1MHl3?=
 =?utf-8?B?ZkJVZWs1S3RwallJYUI0eXF4a0FNOFBBNDk2bGhiQUgyTGFhNkRMam5qNTho?=
 =?utf-8?B?c3FSSDRWaUM0MklqejRKYlR0M3k4OUZSK2czY05LM0hkM3BXZTQzQzh0b3Ew?=
 =?utf-8?B?a0ovTnpvRW0rMGZmUTBWei9mTlN4Y3liaCsrTlU5VlJCOWdsOTJuQkM1MVZP?=
 =?utf-8?B?aFBRQ3lYbVROellmeXcySldyaHRyVFhjdmJoU2ZtdjBoVWJ1MndpcHE1eDh2?=
 =?utf-8?B?YWpGa2MzTFdFTjJEakhWaUdOM0xWL3oxOEZNWlkxazVqN05PaS9tZ25TZU5p?=
 =?utf-8?B?a2pibEtoc2F5amVFMGJ2Nk5zSzBxK2hETi8yOHdROEdGZHlmZSt1VW1DazUz?=
 =?utf-8?B?NG1sallBbUFrbUt5WlowZnpNT1hTUWZSdGdKSjBLOTJ6R1NWTDlvVDJXZFQx?=
 =?utf-8?B?dUZMYUh6Qll6ZE9aTE9oMGhxUDl4QTRLRDYxZ1k3cjZkaFJUbmVDSWlpVG1I?=
 =?utf-8?Q?Gve5Zajel8uycUhfaGjt0RM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9C359C7D5C1D9C4D912123C60139CFD2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 247d74ac-0890-4c98-d861-08dcfd793a52
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2024 09:07:09.0670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Fxu8ojogrImmXddaJZVuhXlS15ZPyJ9E/ryCM7TcIkVHi/jpCpAEMaVSIU5Tmnb18SAYdOtXyET1ldxULZtL8KPcnO/+4eZcm5sccrJKhmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7081
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

VGhhbmtzIEphbmkhDQoNClllcy4uIEkgd2FzIHRoaW5raW5nIHRoZSBzYW1lIGFuZCBidXQgZ290
IGEgYml0IG1peGVkLXVwIGFuZCBhbHNvIHdhcyBpbiBhIGJpdCBvZiBjb25mdXNpb24gaG93IGRl
ZXANCnRoZXNlIGludGVsX2Rpc3BsYXkgY2hhbmdlcyBzaG91bGQgZ28hDQoNCkkgc2VlIHRoYXQg
eW91IGhhdmUgYWRkZWQgY29tbWVudCBpbiB0aGUgbmV4dCBwYXRjaCB0aGF0IGFsbCBvZiB0aG9z
ZSBpOTE1IGNvdWxkIGJlIGNoYW5nZWQgaW4gb25lDQpmdW5jdGlvbiEgSSBjYW4gdXBkYXRlIHRo
ZSBzZXJpZXMgYmFzZWQgb24gdGhhdC4NCg0KVGhhbmtzDQpWaW5vZA0KDQpPbiBUdWUsIDIwMjQt
MTEtMDUgYXQgMTA6NTIgKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiBPbiBUdWUsIDA1IE5v
diAyMDI0LCBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNv
bT4gd3JvdGU6DQo+ID4gVXBkYXRlIGludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzayB0byB1
c2UgaW50ZWxfZGlzcGxheSBpbnN0ZWFkDQo+ID4gb2YgZHJtX2k5MTVfcHJpdmF0ZSBvYmplY3Qu
IFRoaXMgaXMgYSBwcmVwcmF0b3J5IHBhdGNoIGZvciB0aGUgbmV4dA0KPiA+IHBhdGNoIGluIHRo
ZSBzZXJpZXMsIHdoZXJlIGFsbCBpbnRlbF9kZV9yZWFkIGNhbGxzIGluIHNrbF93YXRlcm1hcmtz
LmMNCj4gPiBhcmUgdXBkYXRlZCB0byB1c2UgaW50ZWxfZGlzcGxheSBpbnN0ZWFkIG9mIGRybV9p
OTE1X3ByaXZhdGUuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxh
aSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuY8KgwqDCoMKgwqAgfCAy
ICstDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXJfd2VsbC5jIHwgMiArLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgOSArKysrKy0tLS0NCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5owqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB8IDMgKystDQo+ID4gwqA0IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gaW5kZXggMjc2NmZkOTIwOGIw
Li42MmUwZmFmZmNhNDAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+IEBAIC0xMDkwLDcgKzEwOTAsNyBA
QCBzdGF0aWMgdm9pZCBnZW45X2RidWZfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTggc2xpY2VzX21hc2s7DQo+ID4gwqANCj4g
PiDCoMKgwqDCoMKgwqDCoMKgZGV2X3ByaXYtPmRpc3BsYXkuZGJ1Zi5lbmFibGVkX3NsaWNlcyA9
DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2VuYWJsZWRfZGJ1Zl9z
bGljZXNfbWFzayhkZXZfcHJpdik7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzaygmZGV2X3ByaXYtPmRpc3BsYXkpOw0KPiAN
Cj4gUGxlYXNlIGFkZCBhIGxvY2FsIHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5IHZhcmlh
YmxlIGFuZCBwYXNzIHRoYXQNCj4gdG8gaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKCku
DQo+IA0KPiBUaGUgcG9pbnQgaXMsIGFsbCBvZiB0aGUgaTkxNS9kZXZfcHJpdiByZWZlcmVuY2Vz
IG5lZWQgdG8gZ28sIGFuZCBpZiB5b3UNCj4gYWRkICZkZXZfcHJpdi0+ZGlzcGxheSwgdGhpcyBs
aW5lIG5lZWRzIHRvIGJlIHVwZGF0ZWQgYWdhaW4uDQo+IA0KPiA+IMKgDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoHNsaWNlc19tYXNrID0gQklUKERCVUZfUzEpIHwgZGV2X3ByaXYtPmRpc3BsYXkuZGJ1
Zi5lbmFibGVkX3NsaWNlczsNCj4gPiDCoA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbC5jDQo+ID4gaW5k
ZXggZjAxMzFkZDg1M2RlLi5mNzkyZGIxOTFmY2YgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGwuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmMN
Cj4gPiBAQCAtOTczLDcgKzk3Myw3IEBAIHN0YXRpYyBib29sIGdlbjlfZGNfb2ZmX3Bvd2VyX3dl
bGxfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdiwNCj4gPiDC
oA0KPiA+IMKgc3RhdGljIHZvaWQgZ2VuOV9hc3NlcnRfZGJ1Zl9lbmFibGVkKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiDCoHsNCj4gPiAtwqDCoMKgwqDCoMKgwqB1OCBo
d19lbmFibGVkX2RidWZfc2xpY2VzID0gaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKGRl
dl9wcml2KTsNCj4gPiArwqDCoMKgwqDCoMKgwqB1OCBod19lbmFibGVkX2RidWZfc2xpY2VzID0g
aW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKCZkZXZfcHJpdi0+ZGlzcGxheSk7DQo+IA0K
PiBEaXR0by4NCj4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IGVuYWJsZWRfZGJ1Zl9zbGljZXMg
PSBkZXZfcHJpdi0+ZGlzcGxheS5kYnVmLmVuYWJsZWRfc2xpY2VzOw0KPiA+IMKgDQo+ID4gwqDC
oMKgwqDCoMKgwqDCoGRybV9XQVJOKCZkZXZfcHJpdi0+ZHJtLA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gPiBpbmRleCAzYjBlODdl
ZGJhY2YuLmQ5ZDcyMzhmMGZiNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ID4gQEAgLTUyLDEzICs1MiwxMyBAQCBzdHJ1Y3Qg
c2tsX3dtX3BhcmFtcyB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBkYnVmX2Jsb2NrX3NpemU7
DQo+ID4gwqB9Ow0KPiA+IMKgDQo+ID4gLXU4IGludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNfbWFz
ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiArdTggaW50ZWxfZW5hYmxlZF9k
YnVmX3NsaWNlc19tYXNrKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiA+IMKgew0K
PiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBlbmFibGVkX3NsaWNlcyA9IDA7DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoGVudW0gZGJ1Zl9zbGljZSBzbGljZTsNCj4gPiDCoA0KPiA+IC3CoMKgwqDCoMKgwqDC
oGZvcl9lYWNoX2RidWZfc2xpY2UoaTkxNSwgc2xpY2UpIHsNCj4gPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RlX3JlYWQoaTkxNSwgREJVRl9DVExfUyhzbGljZSkp
ICYgREJVRl9QT1dFUl9TVEFURSkNCj4gPiArwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9kYnVmX3Ns
aWNlKGRpc3BsYXksIHNsaWNlKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChpbnRlbF9kZV9yZWFkKGRpc3BsYXksIERCVUZfQ1RMX1Moc2xpY2UpKSAmIERCVUZfUE9X
RVJfU1RBVEUpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZW5hYmxlZF9zbGljZXMgfD0gQklUKHNsaWNlKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
fQ0KPiA+IMKgDQo+ID4gQEAgLTMxMjYsNiArMzEyNiw3IEBAIHZvaWQgaW50ZWxfd21fc3RhdGVf
dmVyaWZ5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOw0KPiA+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShzdGF0
ZSk7DQo+IA0KPiBQbGVhc2UgcHJlZmVyIHB1dHRpbmcgdGhlIGRpc3BsYXkgdmFyaWFibGUgZmly
c3QgaWYgYXQgYWxsIHBvc3NpYmxlLg0KPiANCj4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSA9DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0
YXRlLCBjcnRjKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IHNrbF9od19zdGF0ZSB7DQo+
ID4gQEAgLTMxNDksNyArMzE1MCw3IEBAIHZvaWQgaW50ZWxfd21fc3RhdGVfdmVyaWZ5KHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oHNrbF9waXBlX2RkYl9nZXRfaHdfc3RhdGUoY3J0YywgaHctPmRkYiwgaHctPmRkYl95KTsNCj4g
PiDCoA0KPiA+IC3CoMKgwqDCoMKgwqDCoGh3X2VuYWJsZWRfc2xpY2VzID0gaW50ZWxfZW5hYmxl
ZF9kYnVmX3NsaWNlc19tYXNrKGk5MTUpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGh3X2VuYWJsZWRf
c2xpY2VzID0gaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKGRpc3BsYXkpOw0KPiA+IMKg
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMSAmJg0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaHdfZW5hYmxlZF9zbGljZXMgIT0gaTkxNS0+ZGlzcGxh
eS5kYnVmLmVuYWJsZWRfc2xpY2VzKQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfd2F0ZXJtYXJrLmgNCj4gPiBpbmRleCBlNzNiYWVjOTQ4NzMuLjk5MDc5M2Uz
NjI3MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93
YXRlcm1hcmsuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dh
dGVybWFyay5oDQo+ID4gQEAgLTE3LDExICsxNywxMiBAQCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlOw0KPiA+IMKgc3RydWN0IGludGVsX2J3X3N0YXRlOw0KPiA+IMKgc3RydWN0IGludGVsX2Ny
dGM7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gPiArc3RydWN0IGludGVsX2Rp
c3BsYXk7DQo+ID4gwqBzdHJ1Y3QgaW50ZWxfcGxhbmU7DQo+ID4gwqBzdHJ1Y3Qgc2tsX3BpcGVf
d207DQo+ID4gwqBzdHJ1Y3Qgc2tsX3dtX2xldmVsOw0KPiA+IMKgDQo+ID4gLXU4IGludGVsX2Vu
YWJsZWRfZGJ1Zl9zbGljZXNfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+
ID4gK3U4IGludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzayhzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSk7DQo+ID4gwqANCj4gPiDCoHZvaWQgaW50ZWxfc2Fndl9wcmVfcGxhbmVfdXBk
YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsNCj4gPiDCoHZvaWQgaW50ZWxf
c2Fndl9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSk7
DQo+IA0KDQo=
