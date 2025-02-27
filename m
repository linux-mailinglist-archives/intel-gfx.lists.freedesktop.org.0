Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1469DA47A9E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30AEF10EA6E;
	Thu, 27 Feb 2025 10:44:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+yjBJwb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4535B10E30E;
 Thu, 27 Feb 2025 10:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740653089; x=1772189089;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VfhQh9Zfp7nYwsQGPBSazJ6jHaz/tafY1/r8xjwWgn4=;
 b=R+yjBJwbRUnGPIcz3b1aEDTX1TObCu0W6nW6eFGctAKP9u8ypCARAypG
 lneJ0HZdGNl9jgwwZ+WeFhbNmJZbkbgkNXXeLBul7JNXDt2PmbVo3F1F7
 KEscWQh8AUxl5oES194UPsiD1wP/W+mJ0UBxerhc913scuWLK11UM3DDO
 YBBNGycZkxMMEGS26GPbrxbA6EZgKbxMhBkzzrAdKgvQpiiClElRcB2q2
 AVYWPIaygbKdPUdUoWWIp7Ygf2OCEXX/iCXEg9grkoDUwJ8QsW1nt8fuO
 VaJSDW7hYji7lx+xv/UYNPwK1GlwgXSfKiF801tYn40XU1+dxMDQ1PrGy w==;
X-CSE-ConnectionGUID: ufbh58x5Q2S2gFF1yC6fjg==
X-CSE-MsgGUID: 0Ak5KfYnS8SzwF0Ma7E7Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41663162"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41663162"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:44:48 -0800
X-CSE-ConnectionGUID: qBTeg609Ra+TN/S+UKno2A==
X-CSE-MsgGUID: Q/GCXbnITTyVxZladcsr4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122234544"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:44:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 02:44:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:44:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:44:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UcheWomLUw3NubAX9S9VBKSK/umjoEFsVeUJQdaA6GNKDyfFlwEpdja+BDA0/JNmFBpnhZOC7drvTm50nyvKKzRsaV5GV15HyKq5hiXPFku1ScOHJweLrqHM8BgkXJjRpKckClI3qOTd8Ne6LGMqSFYnAtpiIprpL97SIZM3XHgu8vMClDxMSBP5tJTuD80gh9fX8W0op0pMTvAQJg9u2UaMSBaBM4ZV+AJWSzj4PHeqJlm2fjIdG3/KeS9KbJNWkry6Owk4Y0a6h+JF0Fqp0MXD/iMwYNeItiH2Hn4Wfv41YuMnDuU78irVi0N8Gui/S8IIyYA2sfXEREaRU4U6Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9yqPQrU6EAjvolH4XzIbAHJU0q5/jh4++n7rypw6cMw=;
 b=kJGZFykHkolW1c1R+Uq2GZ/xkFIMXD9/Ga0q6djjyMSg7huPhGmRMo1zoqJzpnkDp5JTYWkLisTdJy3tqI2xSVp0yATx9Jijks+elCaftBdcvlZ0laZhVIC296/XtzuSNNPiOk5aakMcx3gCHP+6536XbSL/J7Pu3y++odqRp2+MHdzdAv2fXyhQd6JW1RsBmhBmTcM7qGN9GzFsd0OBWtUbx8fBGn/RQWtAi8wIqnS24FxwECXfrOCg3iv7JYcMmdWI3mMXnTKTDvqBd7Q2p3PHi1RKJS7EoVhJgzwL12E7R0XB8daVd0eEKeCn9lDYnFtlAlFina5fJHP6N4KKjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Thu, 27 Feb
 2025 10:44:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:44:39 +0000
Message-ID: <a0584c3d-945d-41f4-9789-f80833135afd@intel.com>
Date: Thu, 27 Feb 2025 16:14:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/20] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-18-ankit.k.nautiyal@intel.com>
 <Z78t-r9fZwr15eMo@intel.com> <Z787ipgTzS970VNH@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z787ipgTzS970VNH@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5240:EE_
X-MS-Office365-Filtering-Correlation-Id: 8470d08c-5670-40ba-c08e-08dd571bbc3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UFg5UXhIaXc4bHlBNWw5cXZIMUh3OW5VNDRpRDVoMFhHWHg3VytvUDl1RFIx?=
 =?utf-8?B?S0tMR0E3NHlFaDRZY3FiUGJuUHl4ZHp1TVB6QVNsRTRQR2tDQzBwVGJzbmdJ?=
 =?utf-8?B?N2d3eVd6V1M1MENZTFhIRXpEUmgycSsxeWpMWFRMaWZ5RTAvQ1BNbUVGZmQ5?=
 =?utf-8?B?SjJSWFp5aXBqdXkzWllmaUNwdE9ZT1g0WU5CdkJ4MUw0aHdlanhka1ZkclAz?=
 =?utf-8?B?T2dXd2ROOHBjNmIySCtrejY2L09xdjEwL3ZuNjhzQjFneWpMOUgzWTVtencx?=
 =?utf-8?B?TG43TE5OcHJVKzF6Mjc5MHBnZXFYRVV4U2FvLzZTVzhpOEoxRnQ5NkJoUEZY?=
 =?utf-8?B?NGNDR0JUVTgwSXFlV1RVemJMK01VSDN6bzFTNjdWeUtnNXEwWWVNMGd4OFRU?=
 =?utf-8?B?cWFLcjdZMjNqUXRicHMyd2N3WXZDaGx1K2lRdytyeVpFWi9oekRwQ3N4ejc3?=
 =?utf-8?B?bXNEQ2FKaEkvL29UTnhudGdwWWVXSGdmeFl1WE9lSERKVFZDTThxRXIxT3Y4?=
 =?utf-8?B?MXN3NTJVL1d5NmtORnl5MEFkSnlSWkNIRGo3Umx6WnlmN25mb251b0VCZlZD?=
 =?utf-8?B?Vkt0KzJueUhKQm9TWEFPRkZZN2IzcU9BSnJjU3hYZGFYZEx2ajBwZkxTODYv?=
 =?utf-8?B?ZmdZa1RmWnFuVStOU09BOWt4M0pPZDNsYlllVGozSFlUVzdBUDh3b0xmNGh5?=
 =?utf-8?B?SGZ0eDJ0dlRCNFNTeU8vd1J2dmdRcmdLbFdCVE1vOVRWbkxoekVyNElDUmNv?=
 =?utf-8?B?em1sa0lDcHZhN0sxbTRUSGxOOE0wWFY1K3lGTlNrVEp2NDhSWTlhZnRPMFFD?=
 =?utf-8?B?MTdSRFdxc2lXREVQOHlxVHcyMDZibXdmTWoyOHQzYmNjSkJnYkh2M1ZwYVg5?=
 =?utf-8?B?YjNpYWg1RllUMThuMC9pMXVKNFV3dks4VjJLSTVXZ3d4RzIxTmtWdm5RUlBk?=
 =?utf-8?B?MzNwOUhQMXhKbnBBVlpvdEptZTZiV0MxRy9QVTdXQnpxV0hYc3NMbUpocTdM?=
 =?utf-8?B?YW9Od2VjenJlb3NUemNzR1NCZXNlaDJDS1dVcGoxa3lmVWorODAvZ0pYMUtC?=
 =?utf-8?B?QTN3MlFlaUpHWWNuUGdXQ3JGL0hUcm15VUsvS0dLR3RHcVRJWXB4RFo1T0Iv?=
 =?utf-8?B?dGh2RThSTlRSb2tDbkUyRmlGZWVwSlI3U09Cc1liUldlZlA3bjNDV0E5enB1?=
 =?utf-8?B?WlIybDQrU2QxSHpsVnkrbEtSY0xkSDlQRmdBVUFDRFJSOVpIVERhcXdmU08y?=
 =?utf-8?B?SkNYREhpNTJEbkVxaTljUHJKL2JoTitFcXlVcG9BeWdwcGY2bDh2VVliVkZM?=
 =?utf-8?B?bDc3ZWhXZkIyY3QwS1VJaVhnYzl5TFpMN041ZExqczM3YXRuTGROdzVPeS9G?=
 =?utf-8?B?aHQzNTM3aXlkTEdHSUowODljWXdSQzJFV2pEUnVtWFJwNVRLYzJEMmluRWh5?=
 =?utf-8?B?bHRWWnZJY3lrSjhxUXlZT09RcEROUG5yQTl4TElxZUhFTXIxLzlURisxc3F0?=
 =?utf-8?B?RXFrU3U1aE1TcFlLalhwckNJODNPZWorQS8rUzAwczlOWi9MaU51WWU3N1NK?=
 =?utf-8?B?ZzdtcHFZMVcwNTljS0x6b1N3dnhzYzhkUWxIQWZOTU8yQVRlQjE5UXlkai9J?=
 =?utf-8?B?UXVaMG1hazBMZWdiWG5pd2xjTk5aZ0lMMG1TcU5YbUlaYXhjWGZ1YmJRZmNY?=
 =?utf-8?B?L0RlKzRzejczSFQ1NzBGK25TakpQclBYekp6MU5ZU2t5S3hPc3dKZFNqd3lV?=
 =?utf-8?B?Ly9JUXVJWGlVS2hISnFJZU1Xc2FxTEN5L1hrMmhUSmwyWG9pSllLL1I4dFZ6?=
 =?utf-8?B?dE4wWTVydXNRWGJKL21xTHlLNGkyUWs3RDdmbTM2NGx1ekxOY2pLeTU1T1F0?=
 =?utf-8?Q?J96GM2axh83BR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aENkTjI2aitCdHdwcHNKVTZjSUR3TDVEVlhRTVFpWFJpQTVRZlBDSWRNdUFP?=
 =?utf-8?B?bmJRZm50N2ZoS0RjSmxEOGxsdzhRWDFKKzNqdG9DWmZGVkJuckR3S1JhcytV?=
 =?utf-8?B?TThLQ2IyU210djJtNlFhclFqVHZjemZrVkt5OGhSOWVLQzhQVnhsb2VjMnlC?=
 =?utf-8?B?bm5yWGF1SGhybGYwV3VHMm43Q2cvRStjR0hNRVRwQWE5SVJ3eUJKVXRVUTdV?=
 =?utf-8?B?dVZ1L29qNWpQNzBPNlZXa0dmaTRzWDVtc3V6Y0ozU2R1c0wxVi8zV1lnTFJi?=
 =?utf-8?B?UVFzekNBTDVrcXJIVXhDbCtSSHlsU1hsR0Y1WTdNemJmVmVCMmxRU25CRGhz?=
 =?utf-8?B?K3g0TzFYYUYrMVY5bk44VkxJS0w0UENDMG1SbHEydTN4YXNmaXpZb2tzUE5W?=
 =?utf-8?B?LzRORHdYTjhabTd3RnhHRmNSNllDOGErVkVaSHNEOWhRSlNxK3pwTXRVZyt3?=
 =?utf-8?B?aHB5bGczN3lFYk15b1ZoTG5aT1pHZnVVdjZmM2x2cDBiMGh1eWF4UUZkRmxu?=
 =?utf-8?B?SEovUGMvWHdPNG0xc3BHQmpVOCtjNXA1cjA3dy9ZZTloeDNFSEp4a0sxdGVP?=
 =?utf-8?B?NVl3Z1JKOFJJdVBWSXcxeFZIT1NRZlVGcUptWnNiYU1saTBTWFZXVGNPbWlq?=
 =?utf-8?B?OTVNUEdvQkNYYjcwOEE3WjA4RXV4c1lHM0s1TFRCOWdidmdwVUYwK0g4c2FR?=
 =?utf-8?B?MzNOUXM5MGRSR1FIYXMzRnBYemEvSmxCeXVKbGluUGV2ekFaa0RQcmNvOVhv?=
 =?utf-8?B?bkUxYVNBMWY5c0g1MnpNS0JSTGZPUVJKdmoxcE1LMWdFcmxrenZwSlBBMm1M?=
 =?utf-8?B?dmN2YWNVazRyTytMcjE2L1pYMmdNb0tXajZPTnFTZGRvOWFwY2hsbUUreUJV?=
 =?utf-8?B?MGVGTUFRSUkzaEpheUxEb1QvWDR3ZnlORm5DbmZCRU5pVUx4b1FHdXNwY2hC?=
 =?utf-8?B?VTU1WDM0eHRsNmhTOVd1MkJ5akdNaWFXTTFZVjZkdW1QUmJ4WTJkU3B6Wmtk?=
 =?utf-8?B?cFFidkJHVGRjWXgrS3FQZ1JGcWtiTGRFRDJiVnJJZDBEaDZEYU50K2dlUmtj?=
 =?utf-8?B?aU5kdElaWGF5VGtNTE1oSUpERDQyb0VnOVRKVDNhZEFqdmlsUE9ua0E2b25y?=
 =?utf-8?B?RWphVmt6Uy9JeWtDNDlDNEhCKzk5THUvczY0WUYycm05UDM1L1J5YmpzekYx?=
 =?utf-8?B?K1E3ZFhaMmRVT25DYVBMd0FjSUpKekR1QXRUTGE1b3Q3bGlRMjRZYlpvQmQw?=
 =?utf-8?B?cXl0OWlnY2FnTU1NQ0poU1dYNUMrT3JUNHVndkJFV0ZGNU15ZFgzRHBPMDhW?=
 =?utf-8?B?ano4ZjBMaTJ0VWNVS2lRNk5zdmUzc0JNOVhFd2o3ZWZ5cCtYdmNkYmErRjlp?=
 =?utf-8?B?TGM4eTJVb0pTbllVTldzSTFmak9zR1Q5bkVaTnFLK0MwTGFUMTFmVkNMWHpT?=
 =?utf-8?B?WXl2RXFMNTk0d3ljWUVNcjZMRm91TElVNStHUHVxMmdFNEtKREg2UERyQjk5?=
 =?utf-8?B?SmpoRnZjWGRxNnNPazZGWjRDczE0K3ZwRlB1VWh4TTNyeUdCeG0rb3liV1k0?=
 =?utf-8?B?Qi9zeTFRa2ZnMVFYMzliUEVXZ0dsdkFyUUhjUW8vQjEzWFNXMDBweEZCdE1p?=
 =?utf-8?B?YzdlY1BFMzRsU3p0WnBocXdvWWZPeWo2TEhEZHZVcG9rc1AyamVxOTN2Qk1a?=
 =?utf-8?B?RThiU0NIM1prTDZtellEMUlpMGIyRnB1N21YNTNMc2F1eHd6L0FGMFVvd2Fa?=
 =?utf-8?B?dmlZM1JNMEpQalJCME4zbE9NeWpHRWpiWFZqNFlwZHZyOU1NQThXT2lEK015?=
 =?utf-8?B?UThRQ0l6MUxPWHRwM3JUMm1NUldnNmNqbUhTRDJWVUxZdkVhQk1uVy9QRGFY?=
 =?utf-8?B?NEFLN0V1YVlDWklaL04vWXFmcDNsTnJPTDY1WXBTam5UYVhJK1U3UmxNYmtP?=
 =?utf-8?B?MGtHSjYwM01IRVNJRXBwaFBYN3FTY0sxYS9vSzRwMXVaV0VYdVd0bHFKdWpO?=
 =?utf-8?B?dnVsM3ppaS9pUnZNNFlIbTB2NmVYS2FBNlBNYXBOSUhabDFEbVJsL09yeXlS?=
 =?utf-8?B?SmsrK2FaNk45OFhCV3VSMkZ4UkNHMGRlUmVnMC9wczRJTVpuemJVelVYM3Rk?=
 =?utf-8?B?R0NqTXdGTzlpOFhCRUQybnV3ZU5XVW9jUUxzVm5VMzNuMDBCdnBXQnA2SFlB?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8470d08c-5670-40ba-c08e-08dd571bbc3c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:44:39.3710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xtaDs1r0yVQwAEf9Nn998gVIfsS0MrNSuycQbda9bQ6vicdWq5msv92hlQy0KmEB2qLy8lyTb0c6hnHBCBhLs+gJ35/UXjAC0sGRFe9deNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
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


On 2/26/2025 9:34 PM, Ville Syrjälä wrote:
> On Wed, Feb 26, 2025 at 05:06:34PM +0200, Ville Syrjälä wrote:
>> On Mon, Feb 24, 2025 at 11:47:14AM +0530, Ankit Nautiyal wrote:
>>> During modeset enable sequence, program the fixed timings, and turn on the
>>> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
>>>
>>> For this intel_vrr_set_transcoder now always programs fixed timings.
>>> Later if vrr timings are required, vrr_enable() will switch
>>> to the real VRR timings.
>>>
>>> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
>>> and reset in the transcoder enable/disable path.
>>>
>>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>>> v4: Have separate functions to enable/disable VRR CTL
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +++
>>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +++
>>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 40 +++++++++++++--------
>>>   drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
>>>   4 files changed, 38 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>>> index 5082f38b0a02..8863d1526aea 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>>> @@ -77,6 +77,7 @@
>>>   #include "intel_tc.h"
>>>   #include "intel_vdsc.h"
>>>   #include "intel_vdsc_regs.h"
>>> +#include "intel_vrr.h"
>>>   #include "skl_scaler.h"
>>>   #include "skl_universal_plane.h"
>>>   
>>> @@ -3276,6 +3277,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
>>>   				   const struct intel_crtc_state *old_crtc_state,
>>>   				   const struct drm_connector_state *old_conn_state)
>>>   {
>>> +	intel_vrr_transcoder_disable(old_crtc_state);
>>> +
>>>   	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
>>>   		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
>>>   						   old_conn_state);
>>> @@ -3524,6 +3527,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>>>   
>>>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>>   
>>> +	intel_vrr_transcoder_enable(crtc_state);
>>> +
>>>   	/* Enable/Disable DP2.0 SDP split config before transcoder */
>>>   	intel_audio_sdp_split_update(crtc_state);
>>>   
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index 2c4a9ac6f61e..5ec353eceab4 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -1048,6 +1048,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>>>   		intel_crtc_vblank_off(old_pipe_crtc_state);
>>>   	}
>>>   
>>> +	intel_vrr_transcoder_disable(old_crtc_state);
>>> +
>>>   	intel_disable_transcoder(old_crtc_state);
>>>   
>>>   	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
>>> @@ -1325,6 +1327,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>>>   
>>>   	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>>   
>>> +	intel_vrr_transcoder_enable(pipe_config);
>>> +
>>>   	intel_ddi_clear_act_sent(encoder, pipe_config);
>>>   
>>>   	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index e77f5b483b09..551dcc16f0d4 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -434,6 +434,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>   {
>>>   	struct intel_display *display = to_intel_display(crtc_state);
>>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +	bool needs_modeset = intel_crtc_needs_modeset(crtc_state);
>>>   
>>>   	if (intel_crtc_is_joiner_secondary(crtc_state))
>>>   		return;
>>> @@ -447,12 +448,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>   		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>>   			     0, PIPE_VBLANK_WITH_DELAY);
>>>   
>>> -	if (!intel_vrr_possible(crtc_state)) {
>>> -		intel_de_write(display,
>>> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>>> -		return;
>>> -	}
>>> -
>>>   	if (crtc_state->cmrr.enable) {
>>>   		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>>>   			       upper_32_bits(crtc_state->cmrr.cmrr_m));
>>> @@ -464,14 +459,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>   			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>>>   	}
>>>   
>>> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>>> -		       crtc_state->vrr.vmin - 1);
>>> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>> -		       crtc_state->vrr.vmax - 1);
>>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> -		       trans_vrr_ctl(crtc_state));
>>> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>>> -		       crtc_state->vrr.flipline - 1);
>>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>>> +	intel_vrr_update_guardband(crtc_state, needs_modeset);
>>>   
>>>   	if (HAS_AS_SDP(display))
>>>   		intel_de_write(display,
>>> @@ -614,6 +603,29 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>>   }
>>>   
>>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +
>>> +	if (!intel_vrr_always_use_vrr_tg(display))
>>> +		return;
>>> +
>>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> Hmm. Maybe we should actually program this even for the
>> !intel_vrr_always_use_vrr_tg() case, but just leave the enable
>> bit unset. That way we shouldn't need the intel_vrr_update_guardband()
>> stuff in vrr_set_transcoder_timings().
>>
>> We'd still need something for the _lrr() case, but I think that
>> could simply call intel_vrr_transcoder_enable() as well.
> Oh and for the intel_vrr_always_use_vrr_tg()==true case we
> probably want to also enable push.
>
> When I was testing this stuff at least tgl and adl seemed to
> require require push to be enabled whenever we use the VRR TG.
> If we always enable it then we can easily test this on those
> platforms witout having to touch any code outside of
> intel_vrr_always_use_vrr_tg().
>
> And even if some more modern hardware doesn't strictly require
> push to be enabled, I don't think there should be any harm from
> enabling it anyway.
You are right. I missed to add push after enable, as we had already 
agreed upon this.
I had removed the patch that was avoiding push for fixed refresh rate 
case, but forgot to add this change in the later versions.

Will fix this in next version.

Regards,

Ankit

>
