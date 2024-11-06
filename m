Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF34F9BE16F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 09:59:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C5310E681;
	Wed,  6 Nov 2024 08:59:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zoq3pdaj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81DF810E681;
 Wed,  6 Nov 2024 08:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730883555; x=1762419555;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=RCsi9nWmGbxtPOxx5IKwq7CR56Az6OvNJyoErc6zBi0=;
 b=Zoq3pdajG+X5qpBhO5O2z12fDarNK6faONC3Hgi9z3n1FcoPGcH4YxNH
 SJe8cVZkObTnCsYzZfqAdDtUC3i6TlxRU18zQ9FIGu+sjyBAG8/i/P2Lt
 5yzuRGtOHnUxeSGa4S+PunZndOaZtaqHhFmmKmyqJIJagPKcGmplpRRZe
 CozHdNac7qSsgbyv1X0vNNwh47AtOVxAGKDaiJUKHRULpA/Rd3MnCfxji
 m2v7Ot0ZlvlmEo8FtBmM2fFzUDV97UZdtkyyDMdNk+xujW6jp11pSvDgf
 3Fp9Vfg+unCjKDaQnJLftvyhEJTfDOaHvjPUJRi5ykHcElJCHqdkKNuoE Q==;
X-CSE-ConnectionGUID: ebX9xc1nTMGAAS7P9oam8g==
X-CSE-MsgGUID: 0u4FQPGeS0a+zTy1NQ4kfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="34597527"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="34597527"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 00:59:14 -0800
X-CSE-ConnectionGUID: ZD3EP15cS0O+lM0+4iwcGg==
X-CSE-MsgGUID: H5uBRNkdT5is91apuFWAUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="84341965"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 00:59:13 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 00:59:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 00:59:13 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 00:58:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tbFZTUcJT09kHYBiul13qoaIqdnsaZ7z+7OLpuMttjLBIA+E3fX0YH9HzTeAI1iw2n6qS84ZzihYzKW1OaGeknUMS6qvdE4sBzrmWQpADxKyLwsaoxvZz2sMXIlbYY/UKG+DUmhT/IJSRiweV7HwHf64MqsAf5IPagfpxGr9YbTdVbYjOl44UhI44kpyThVsh5/P9sncG9/jNTl0dKhl4AeVqSm/3rFTLxzVxUiC/+zh9PzbkXnaGlYDSh86jw4yFmnjUySe20hX/v42kxc/z7d484FypnYHJkyPNgoW4/3aHSgXkmcitiW0XhTyJnZG9HQxwussWPgo+3AXU48Wxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RCsi9nWmGbxtPOxx5IKwq7CR56Az6OvNJyoErc6zBi0=;
 b=T5Tphbbyj1dUqmeiTd1gxPfB56VaUH6BtuNtUwkaDOijavoVcAZIxb14FpmMk1ZH6Je8ayo69VF3NQfCVfqJ0T+d30cnctrg7lTWth9eP5XrTtsfNG8sslKgDIWiI1i2FOliuJ6tWpZdJ8huUyORFxspaDl4FYwDFZ6Tne2a+T39iJnQf5TFGp634rDnBHVp2G2UYSz/yg900UJdcs5FEup2rO9VuaxJmomominZOYSAlq8ront+dxWPoqz6q1X31GwMxyfGCnILq/bIBBrqkMcOeQkitcJbfSsTv3KSIZg6LzDWNQRHfXnWStYmrLmdCPGvU4i7UlgeJ5iqW3pXVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by LV8PR11MB8534.namprd11.prod.outlook.com (2603:10b6:408:1f7::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Wed, 6 Nov
 2024 08:58:49 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 08:58:49 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/15] drm/i915/display: convert
 HAS_D12_PLANE_MINIMIZATION() to struct intel_display
Thread-Topic: [PATCH 02/15] drm/i915/display: convert
 HAS_D12_PLANE_MINIMIZATION() to struct intel_display
Thread-Index: AQHbLt3MJlTCmNB+0UurieUxyUyY/7Kp9nKA
Date: Wed, 6 Nov 2024 08:58:49 +0000
Message-ID: <38ef337723bdb90ce4842fd25bd2e4feea382f55.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <3f7b119ce893194eb50b652c6e6a9050d0d3c2a9.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <3f7b119ce893194eb50b652c6e6a9050d0d3c2a9.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|LV8PR11MB8534:EE_
x-ms-office365-filtering-correlation-id: b220417f-5514-46cc-bb5d-08dcfe413aef
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dVZKWDZQWmVBeVJoVitSUDRsS3JyRlA2NnJKQkdJMEEvemdyZmcvUERKT2pZ?=
 =?utf-8?B?NUtBU0NPblo3VUxXZll5VjZLd3FIdHYyd2MrNmhwc3ZEaFhVbExBQjhjZEJ1?=
 =?utf-8?B?dGQvQit6MmtjbEhTbHJJK0E0bXUxVlBHVHFIcDFENXQ1bTBhd3BiQ0VFT0o3?=
 =?utf-8?B?UUF2WWFheEdRM2lTQVIwaFJYSlNaL1lTZUFSdVBUa3cyWEFobmhIbGovLysv?=
 =?utf-8?B?L2FxVWJwUzhET0JicjRsbXo1M2dESGJ3WHJ2NlpBbjJHNFd1WHZuS0VVR1ln?=
 =?utf-8?B?SGNPdUY4bGZ5Y0FsYll5TDdmekt3NmVMSlNjeENQRFBCKzFQSTdrdXhHQTh6?=
 =?utf-8?B?MzdmV0I1T1pqNU9mVVgwZXdWUG45YXpIeVlibWNpamx5YlFGNlE0dzlPaVZU?=
 =?utf-8?B?eDFpUzVpWUZ3d2kzMktLUG84ZTdreU0vd2FuMzVYbTYyeFN6elNRT1RUK0ht?=
 =?utf-8?B?dkNaU043UDl4UHdHa2tFZWg1N3hQdTlic0R5THQxU2RBVWhkdGtSeVplSGFZ?=
 =?utf-8?B?WmRUdHlEUHc3MWVNVDJ4K2hBMWFTcWxDS0QxR2JaQjZscDRQSVJwTUgwUkNz?=
 =?utf-8?B?K3k1K05UakJERnd1NjFoZXl4cWRlMjZZMkxzNWN2UXhCWDNTNEN6NTVndldp?=
 =?utf-8?B?Mi9wVHVwdlVrKzJBekROS2pSNnVkQU5yMHZRQTFKK2hXYlI1ank4aXA2UDFn?=
 =?utf-8?B?RGhaRkJDY3RnZWdPV3dEMGlCV0VYeGJWRm9rUnZ5S1FJZFJGcVFwdW9WUklB?=
 =?utf-8?B?MkFRT0RYL29GTHFQdm94dVVVNHBDQktFRDBReTVlQk51Nmw2SG5JNDRTaW5C?=
 =?utf-8?B?S0JhQmVMelVsODYrdXdveVlvZTR6YTFBQzBTNkl0RWoxNXFBZnQwbDZsQzNp?=
 =?utf-8?B?YTh0OWlzQ1hsdnZ0ZUVNUE91Q21ySHJyVGtWbkw4dUhuclBycGcxUTgyd2Zi?=
 =?utf-8?B?VDRKcVZaZUJpaWVpZmhOMGlmQWo0ZWw4TDBkN29BNEdrM081ZlRVU3U0TmRs?=
 =?utf-8?B?aDJKalpFTTZCczhoTzNCb0N4eVhhRFIxU1RpNGNXTVVIMVJqa25EclA2Q2Rw?=
 =?utf-8?B?cWZlbk5zYy9jajVSdmszZkRPUFFyaHRBSmpKOXNXNFcvOWRDSHF1M2d2TG1F?=
 =?utf-8?B?VndIbEtPb2hhYVRpMDc4QVJma2JvN2djYkRTNkFTS2hYQmk2MFlXTmNod09w?=
 =?utf-8?B?VXVtUkZKMEJhNmVSVlRTQnlUKzJQRGZ1Y2RVSmJLT2t0NjJVWktUc0t1TWEx?=
 =?utf-8?B?NXIzODJtS0x3Q29vWFNPTGtaSHRTbnZZL1JjVzdLTnFlNjdNc3FzRDlOYzBi?=
 =?utf-8?B?RTJRTDNyR3plRXMwODYyanJISDVyMm9tcitCRXdMQmlsMWJpZHFKUld3Y1cy?=
 =?utf-8?B?M2NGM3I4OTRjeGcwRFk4YUo5bWFGVGVZeDZGeUZhZFBCWWlMb0VGQ0w5emlU?=
 =?utf-8?B?NEFSVkNCQ1RxTThVUDJ3MndPVFpvSy9LK1BjK29zdkZFMUZDY1diazJFY3hS?=
 =?utf-8?B?VitoNU1sSEZ6L1NRUnRlUDlkRVBzQ2x5TFhrZFdpTGR5WEdsTkZNS0N5VzZT?=
 =?utf-8?B?QjlXbS9YUGlFdEpDRHBtVW8zQVcreGIwc0NOUUFmTTFjRjhPK1NLYWk5NUIy?=
 =?utf-8?B?Z29UUWhMS3NRdm0zNjhDTmtnL3o0RzcrM1c5MXdHaTd0ekJHbkd1TVdlTU95?=
 =?utf-8?B?TzJnbTdpSFJnRDltV3BqRndabUdrK3VLTXkxOVFJaG9LS3VmZXFaZlphemY1?=
 =?utf-8?B?KzQySVBlaE9YUlp4ZnlMTnIxWmJ3Z3BSMytOYzBrZVpLSWRraXZzTXlqMnlR?=
 =?utf-8?Q?9M8Wbbvv6/3PE1zXnb1L9Nd6eaB9vF4dBc7Do=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHVzT3RrZFdIRktJQkN2RGt6TFpVcG13aEFPUjk3MHE2dEI3TTdrOHFmZUpV?=
 =?utf-8?B?eXdDU01ZdkZMSDBZSUxMU2hvTi9UdkhSeThxMktqVEtNRG9BV2hjT0VqYjd0?=
 =?utf-8?B?VllZcWVIclVERnpyR2dKS1ozNTdhcnNIYlYyL0pkQVVLWnhZb1N2akMvK0wy?=
 =?utf-8?B?Y3RNRE5Zc0FtMWw0Sm5MRVp6aGJBMG55d1ZFZkZ6aGpNN3BLbnVCRU5NcTZm?=
 =?utf-8?B?Z2hZU0ptbTg1S0hnVnhka2tVUlFqdUpzQnJyWFhlV3pnVStKZTBRSFdxVzQr?=
 =?utf-8?B?YzllMVd0dGxmTC9KVDFHaGVYWWlBNE5WSm9Ec1NUa3gzTEtSU013VmV5SnB3?=
 =?utf-8?B?NVZCSUMwc3JBbXRma0hEWkkxZmg0TXFXZFhFYmRJUTlSSnd3RDRVeXVtb1N0?=
 =?utf-8?B?VTdtbSswMjRpMFV4OFNNeEEyL0MyR1k2Z2w2Tzc2T3pNWGx4akdqN1dqdjUw?=
 =?utf-8?B?T3NHRUxycmQ5WlZLUC81MUo3cytiQ29STE5sZU53NHplbFZDNWdxbjB5cjVm?=
 =?utf-8?B?NFVnWGtRMW5XeWNsVGVRb2RTYk9LdDdlVW5hV2ZFR0ZNU3AzeTA3bFFtUW5s?=
 =?utf-8?B?SEl5Q2NUZW8rVlRQbEYzbXZmZW9LSWhTN25lbEp2RlBvQUNFUWpZcks3V3Ns?=
 =?utf-8?B?ZjJvcVVPVTdhU0dsVHlxM1EycTc2bExBeDdPWjRCMFRQL1Q5ZldVVXNieTlN?=
 =?utf-8?B?UXg3Q3J6STFVSzZucjBQcG00SUxWd0FrNGVVeFJDT0FGdUUrYlcrL2pNODh4?=
 =?utf-8?B?MWovTXBTQ3V3SzkrVHlVSVRyL3BFQ0R4eWoxN1JjTVJFUDZpRGU2dWJBOTEy?=
 =?utf-8?B?SENtcnZROWdlY0NsazJvRHBuajhBOUt1d0NKOVpxcVlQT3g2V2FOcFgwZWdS?=
 =?utf-8?B?cVg4RDJlMm5CZTdzS2FiS1pYeER1WVlnOWhUWVE0R085VzVCWVUxUG9OMlgy?=
 =?utf-8?B?K1U3SDZTNEtNM2xPazNRN0lFMVY1T3Yxai9yWkFlSTVmdndOSVNWSTZHMjNu?=
 =?utf-8?B?TlpPVFNhMUh2UUFnOUVYeTE4ZnlWMDM0NlNZb252YWVhTTBTOWRMMHc0Z0Zw?=
 =?utf-8?B?endBQ1V5YzBGc3plc3Izcy85QUZXZHdLc1VBVy9WZkY3K3c1S3VkbG94Tkxv?=
 =?utf-8?B?ZktFZ0wrQmhybXhEcnZ6Q2oyb0JNR2ZwdGdHNjMxYTdTTkJSUVQwblZYcGJL?=
 =?utf-8?B?SDRjQjVuV1ZqSDE1SCtMcXlMbVI5dnhWVjFnT0FScEVsYXpWU0Y5eFpWOFdQ?=
 =?utf-8?B?WklYT0VNdkdYeVVzL0ZHTWNPeXpSSVRDQ0FVdXFPWEdYVXp1bkpnWndsZkZW?=
 =?utf-8?B?cDUyN1Bsb04ya25zajJGdDdjaG04WDJlK0l5NjdjcE1KYWIrdlB0NWpoRnRn?=
 =?utf-8?B?VUU1d3ZIc0djZjkzOVRIUnRlOGx3UkZBSmJlV2JvTnE2R3E5UVpYZklQQy9t?=
 =?utf-8?B?ejNlUnQrS0FvV3NkTStsbDRkc1JzYjFsVTUzTmcxVkJjNHVleHFTWDROZTNZ?=
 =?utf-8?B?T0ZFekNwYkVGVkI3WnluM3l2cjZxUWdmSVZKMFZFeC9mK1pxTHN6TTFNcnFN?=
 =?utf-8?B?ZzBTZW44WVZhZzZIYllCWkVkMUN1R25uSFJqUlhRK0ZmRGtwdWxOUklqM3R0?=
 =?utf-8?B?eU50OXVobjFIcEo0Q01vaWJSOGx2VzRXMzRZTGJGZkMvMUNxb1JlTDdDTjFK?=
 =?utf-8?B?QW53ZGlUK2lpTFNKZkROMFlld1RwTjdwWk5rcVpmZTJpd3BqQ3p3MGd6dmlr?=
 =?utf-8?B?c0VvYTlWL0hsMTRqY1BYRzE5NGVCcGRDOU1DWnFZVzNucU54ZTlyTWRCMnIv?=
 =?utf-8?B?eFNYcDl5ZWN3VTNaMnFESlV4REpxaks5TXQwNnhKSXJBWG5vcTBPcjNUZUZl?=
 =?utf-8?B?N2owWm05ditWZWtCUmRWQTMwOG95bnlyZkxSM0libWNISTZCV3Y2MzYzdEdZ?=
 =?utf-8?B?T2VPMkp4djFad01mcVoxRzY2K3ZuN2ZxTlR0ZWdpUzJkSFEyVmhjUHJpa1Rv?=
 =?utf-8?B?WGR3LzMwYXlGMXA2Zm4xaDR6QXpzbXRwd1krVVo2QkR5VTRISk4xNjlWeUdz?=
 =?utf-8?B?NldKSXFpY2lIUm1nUFRSRWFmY3E1MzNCNXprTGNqMGJOeG9RK2RzdGRodVM5?=
 =?utf-8?B?dnF1aVJtZldwZFNJSE5LZllLd2ZFLzhCRmVJMFdHVmhZYWFyb3BEdzJwaEZl?=
 =?utf-8?Q?2TCknbiuDJsOyRz1gdIa7sY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <767E068A04507E4E8F024FB68D18CA5F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b220417f-5514-46cc-bb5d-08dcfe413aef
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 08:58:49.4415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vd0/t4ESQOQpYTsE0jmtExkmgL0pVzHiKCXej8P/BM/UNmZlUlFAonuN8klIQfH63yDHj2qi/kS8C+3kFTqKm9RtkHdhyjLEf1jGvUrVidE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8534
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU19EMTJfUExBTkVfTUlOSU1JWkFUSU9OKCkgdG8gc3RydWN0IGludGVsX2Rpc3Bs
YXkuIERvIG1pbmltYWwKPiBkcml2ZS1ieSBjb252ZXJzaW9ucyB0byBzdHJ1Y3QgaW50ZWxfZGlz
cGxheSBpbiB0aGUgY2FsbGVycyB3aGlsZSBhdCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jIHzCoCAyICstCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmggfMKgIDIgKy0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuY8KgwqDCoCB8
IDEyICsrKysrKystLS0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5p
dmVyc2FsX3BsYW5lLmPCoCB8wqAgNCArKystCj4gwqA0IGZpbGVzIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYwo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gaW5kZXggNDc5NTczODRkNTZk
Li4xZTU2MWRmMDI3NTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gQEAgLTE2ODcsNyArMTY4Nyw3IEBAIHN0YXRp
YyB2b2lkIF9faW50ZWxfZGlzcGxheV9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUKPiAqaTkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRp
c3BsYXlfcnVudGltZS0+bnVtX3NjYWxlcnNbUElQRV9DXSA9IDE7Cj4gwqDCoMKgwqDCoMKgwqDC
oH0KPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMyB8fCBI
QVNfRDEyX1BMQU5FX01JTklNSVpBVElPTihpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqBpZiAoRElT
UExBWV9WRVIoaTkxNSkgPj0gMTMgfHwgSEFTX0QxMl9QTEFORV9NSU5JTUlaQVRJT04oZGlzcGxh
eSkpCkp1c3Qgd2FudCB0byBub3RlIHRoYXQsIEkgZ3Vlc3MgeW91IGludGVudGlvbmFsbHkgbGVm
dG91dCByZXN0IG9mIHRoZSAiaTkxNSIgaW4gdGhpcwpfX2ludGVsX2Rpc3BsYXlfZGV2aWNlX2lu
Zm9fcnVudGltZV9pbml0KCkuIFRob3VnaCBhbGwgaW5zdGFuY2VzIG9mIGk5MTUgaW4KZ2VuOF9k
ZV9waXBlX2ZhdWx0X21hc2soKSBhcmUgY2hhbmdlZCB0byBpbnRlbF9kaXNwbGF5LgoKQW55d2F5
LCBkb2VzbnQgaW1wYWN0IGFueSBmdW5jdGlvbmFsaXRpZXMuLgoKUmV2aWV3ZWQtYnk6IFZpbm9k
IEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX3BpcGUoaTkxNSwgcGlwZSkKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRp
bWUtPm51bV9zcHJpdGVzW3BpcGVdID0gNDsKPiDCoMKgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElT
UExBWV9WRVIoaTkxNSkgPj0gMTEpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oCj4gaW5kZXggMzkyZmJlMjllOTc0Li5lNDVi
YTIxMTY2ZDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RldmljZS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RldmljZS5oCj4gQEAgLTE0NCw3ICsxNDQsNyBAQCBzdHJ1Y3QgaW50ZWxf
ZGlzcGxheV9wbGF0Zm9ybXMgewo+IMKgI2RlZmluZSBIQVNfQ0RDTEtfQ1JBV0woaTkxNSnCoMKg
wqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX0lORk8oaTkxNSktPmhhc19jZGNsa19jcmF3bCkKPiDC
oCNkZWZpbmUgSEFTX0NEQ0xLX1NRVUFTSChpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZ
X0lORk8oaTkxNSktPmhhc19jZGNsa19zcXVhc2gpCj4gwqAjZGVmaW5lIEhBU19DVVJfRkJDKGk5
MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCghSEFTX0dNQ0goaTkxNSkgJiYgSVNfRElT
UExBWV9WRVIoaTkxNSwgNywgMTMpKQo+IC0jZGVmaW5lIEhBU19EMTJfUExBTkVfTUlOSU1JWkFU
SU9OKGk5MTUpIChJU19ST0NLRVRMQUtFKGk5MTUpIHx8IElTX0FMREVSTEFLRV9TKGk5MTUpKQo+
ICsjZGVmaW5lIEhBU19EMTJfUExBTkVfTUlOSU1JWkFUSU9OKF9fZGlzcGxheSnCoMKgKChfX2Rp
c3BsYXkpLT5wbGF0Zm9ybS5yb2NrZXRsYWtlIHx8IChfX2Rpc3BsYXkpLQo+ID5wbGF0Zm9ybS5h
bGRlcmxha2VfcykKPiDCoCNkZWZpbmUgSEFTX0RCVUZfT1ZFUkxBUF9ERVRFQ1RJT04oX19pOTE1
KSAoRElTUExBWV9SVU5USU1FX0lORk8oX19pOTE1KS0KPiA+aGFzX2RidWZfb3ZlcmxhcF9kZXRl
Y3Rpb24pCj4gwqAjZGVmaW5lIEhBU19EREkoaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAoRElTUExBWV9JTkZPKGk5MTUpLT5oYXNfZGRpKQo+IMKgI2RlZmluZSBIQVNf
RElTUExBWShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9SVU5USU1F
X0lORk8oaTkxNSktPnBpcGVfbWFzayAhPSAwKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYwo+IGluZGV4IGUxNTQ3ZWJjZTYwZS4uZjBk
M2JkYjVmYzYwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9pcnEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9pcnEuYwo+IEBAIC04NDMsNyArODQzLDkgQEAgc3RhdGljIHUzMiBnZW44X2Rl
X3BvcnRfYXV4X21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IMKgCj4g
wqBzdGF0aWMgdTMyIGdlbjhfZGVfcGlwZV9mYXVsdF9tYXNrKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKPiDCoHsKPiAtwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2
X3ByaXYpID49IDE0KQo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gJmRldl9wcml2LT5kaXNwbGF5Owo+ICsKPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExB
WV9WRVIoZGlzcGxheSkgPj0gMTQpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gTVRMX1BJUEVETUNfQVRTX0ZBVUxUIHwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBNVExfUExBTkVfQVRTX0ZBVUxUIHwKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBHRU4xMl9QSVBFRE1DX0ZBVUxU
IHwKPiBAQCAtODUzLDcgKzg1NSw3IEBAIHN0YXRpYyB1MzIgZ2VuOF9kZV9waXBlX2ZhdWx0X21h
c2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdFTjlfUElQRV9QTEFORTNfRkFVTFQgfAo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdFTjlfUElQ
RV9QTEFORTJfRkFVTFQgfAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoEdFTjlfUElQRV9QTEFORTFfRkFVTFQ7Cj4gLcKgwqDCoMKgwqDCoMKgaWYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMyB8fCBIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTihk
ZXZfcHJpdikpCj4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEz
IHx8IEhBU19EMTJfUExBTkVfTUlOSU1JWkFUSU9OKGRpc3BsYXkpKQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEdFTjEyX1BJUEVETUNfRkFVTFQgfAo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdFTjlfUElQRV9DVVJTT1Jf
RkFVTFQgfAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oEdFTjExX1BJUEVfUExBTkU1X0ZBVUxUIHwKPiBAQCAtODYxLDcgKzg2Myw3IEBAIHN0YXRpYyB1
MzIgZ2VuOF9kZV9waXBlX2ZhdWx0X21hc2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdF
TjlfUElQRV9QTEFORTNfRkFVTFQgfAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoEdFTjlfUElQRV9QTEFORTJfRkFVTFQgfAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdFTjlfUElQRV9QTEFORTFfRkFVTFQ7
Cj4gLcKgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDEyKQo+
ICvCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDEyKQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEdFTjEyX1BJUEVETUNfRkFVTFQg
fAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdFTjlf
UElQRV9DVVJTT1JfRkFVTFQgfAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoEdFTjExX1BJUEVfUExBTkU3X0ZBVUxUIHwKPiBAQCAtODcxLDcgKzg3Myw3
IEBAIHN0YXRpYyB1MzIgZ2VuOF9kZV9waXBlX2ZhdWx0X21hc2soc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoEdFTjlfUElQRV9QTEFORTNfRkFVTFQgfAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdFTjlfUElQRV9QTEFORTJfRkFVTFQgfAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEdFTjlfUElQRV9Q
TEFORTFfRkFVTFQ7Cj4gLcKgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID09IDExKQo+ICvCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkp
ID09IDExKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEdFTjlfUElQ
RV9DVVJTT1JfRkFVTFQgfAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoEdFTjExX1BJUEVfUExBTkU3X0ZBVUxUIHwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBHRU4xMV9QSVBFX1BMQU5FNl9GQVVMVCB8Cj4g
QEAgLTg4MCw3ICs4ODIsNyBAQCBzdGF0aWMgdTMyIGdlbjhfZGVfcGlwZV9mYXVsdF9tYXNrKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBHRU45X1BJUEVfUExBTkUzX0ZBVUxUIHwKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBHRU45X1BJUEVfUExB
TkUyX0ZBVUxUIHwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBHRU45X1BJUEVfUExBTkUxX0ZBVUxUOwo+IC3CoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA+PSA5KQo+ICvCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gR0VOOV9QSVBFX0NVUlNPUl9GQVVMVCB8Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgR0VOOV9QSVBFX1BMQU5FNF9GQVVMVCB8Cj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgR0VOOV9QSVBFX1BMQU5F
M19GQVVMVCB8Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3VuaXZlcnNhbF9wbGFuZS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91
bml2ZXJzYWxfcGxhbmUuYwo+IGluZGV4IDAzOGNhMmVjNWQ3YS4uYzZlNDY0ZDcwY2M3IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFu
ZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3Bs
YW5lLmMKPiBAQCAtMjM5LDcgKzIzOSw5IEBAIGludCBza2xfZm9ybWF0X3RvX2ZvdXJjYyhpbnQg
Zm9ybWF0LCBib29sIHJnYl9vcmRlciwgYm9vbCBhbHBoYSkKPiDCoAo+IMKgc3RhdGljIHU4IGlj
bF9udjEyX3lfcGxhbmVfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiDCoHsK
PiAtwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTMgfHwgSEFTX0QxMl9Q
TEFORV9NSU5JTUlaQVRJT04oaTkxNSkpCj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSAmaTkxNS0+ZGlzcGxheTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYg
KERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEzIHx8IEhBU19EMTJfUExBTkVfTUlOSU1JWkFUSU9O
KGRpc3BsYXkpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEJJVChQ
TEFORV80KSB8IEJJVChQTEFORV81KTsKPiDCoMKgwqDCoMKgwqDCoMKgZWxzZQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIEJJVChQTEFORV82KSB8IEJJVChQTEFORV83
KTsKCg==
