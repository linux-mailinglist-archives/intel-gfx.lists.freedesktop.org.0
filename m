Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFFFB019DC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 12:34:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7A6E10EA20;
	Fri, 11 Jul 2025 10:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="al0roals";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4DB910EA1D;
 Fri, 11 Jul 2025 10:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752230048; x=1783766048;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4GPvCpEP1LaMOrnDxzaddwnvmwBNDSTWLEOZ5eT5+Kg=;
 b=al0roalsacjsOro/Rlfr4dWJnY9RrHErk7t+VokcCVzGoNc1S1gd1C41
 vk8NVXJC+cBspgZ8tSWt3rUOdcd1RGJXMyDSLzA+65RCr/4H3FYgtNV+8
 fKaqMTZQ3TCEokpwVjHPSHdzJJRcVbXfsQ0jTmybv23opMJqsXj5uDmS+
 /Jf1MR95pyOC+wXQMh+H3lyXQRoW4weLGk3t02JVMm323hVxkIdDg0Zm5
 AZg5quSd0SsXk9y/1uN8E5Sz+wNn5tpHTdb0IO+28hMzbH0GCV/W3QOVZ
 CUpVnw9BO5SMSoajyByneT5tfIow0JByGCKGYe1FTDvW7dR6k6W+uDcQR A==;
X-CSE-ConnectionGUID: YY/RVzaISrCJqXGHWb9teg==
X-CSE-MsgGUID: PyhQKz/TS8CdD6TdA3eYQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54654209"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="54654209"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 03:34:08 -0700
X-CSE-ConnectionGUID: aFdKt+CvTm2qpS4RTdXpAw==
X-CSE-MsgGUID: /tkf+DKuQnWB48uWpiIs4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="157060573"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 03:34:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 03:34:06 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 03:34:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.40)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 03:34:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hB/eNBUCfXYEPD1gMgyAoQiDLHJfXc8oiq4DCSfKtVKqq8xax0uB/ylr/O2iGoukXXh0fBuSAEzGwkJRMrNdLTyZ2DZOgnbt0Fi55gDmDAsyzKbBqx8hl0GWmJx0TQ3+axXg9w6oelUbgAqHkIS8/PUsloRD/Iab3PUtLN8W0gZbOAtEk2m6p6ukK2dy6uMXu/JBTJ7c+F7klQKklcWMojuWr23Ml/NcWtqUewR3dhQP6J/AN4Ez5WIM3/Depj1Lygbm4kn2yQGEY3G2m2jo13kig90T0aKFnHvze6ZFRDnSbWp5JYWydY8lbyod/nC9VLBlskBXrd7M8DJRgDI27Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4GPvCpEP1LaMOrnDxzaddwnvmwBNDSTWLEOZ5eT5+Kg=;
 b=bcRrrup/pG+d9COJXNWQLdtjAjo1c4IPsWvWrwhQbpdhOtQtaFoP6JgcE9NV/dQlpKAOZV4H3pJkeuwS9CpcwOa3+GgjZvyyh7ZjI+sqbW2BlmTmRS2+f5EYYLx+0sPBsA3E0gFs9vDUeS4GrM2hqGipYDEFY8Z/1hhk7qO4bAIJz0atD+2WJ/SueukUFe1TUFVdbsiHz+O1gXI8ZK6sNefUwRKo3tLqhSkgKjig3+KtAMZVSvUW6CA20z/IvG/HYrsqrd86GsfTZ4mkAZydg4HffGZKvnnkZOHS+V+XDR3N9VN/VyEhjXUKd+sR8dHtxera8Z7BnBmSNxkOjsE4hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.24; Fri, 11 Jul
 2025 10:33:59 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Fri, 11 Jul 2025
 10:33:58 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Index: AQHb8Kc9L1K5oI2goUG+8WAYnsMpTLQqBX0AgAAS7ICAAWjgAIAASo0AgAAVqICAAB0yAIAAvp6A
Date: Fri, 11 Jul 2025 10:33:58 +0000
Message-ID: <6c969869584e4f78adbc3f56d2848d082407e1b6.camel@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG6g5C-nUMPqYSzS@intel.com>
 <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
 <aG_ffKlueD_8fx2E@intel.com> <aHAeBsRCmkI6QZCv@intel.com>
 <aHAwMfaR97nWqu5T@intel.com> <aHBIru0gmRnmgij4@intel.com>
In-Reply-To: <aHBIru0gmRnmgij4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6467:EE_
x-ms-office365-filtering-correlation-id: 6df99a49-2e76-43bf-ea19-08ddc06671c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?emZENVFEVjJ6cDdTcGgxNE5BbUxueVJhOE44YnBRMnJ4VlpjZ2s1WXc5eXRq?=
 =?utf-8?B?TEF2emc4b1p4RlI3OVZ3eU9FM0V0TjNuencxZVFYMnlZUGl0ZzFQbnd6ZHU4?=
 =?utf-8?B?Sjc2aUgrcmZRSjROVjUwejJYV21UQkhRWndOcElDMkxKamxYVFdUbFVSczdG?=
 =?utf-8?B?R0FuR09FYjZ5QXgwazZKcVFIK291SU9pUzNoUnZvQW40WTcrTitmTi9IRkFG?=
 =?utf-8?B?RVBnbDJDOS9iUWpXMkQ1RUVQUnhjUlQ2WXo2ODlGdVlUa2NSYkNWRXZvdXdO?=
 =?utf-8?B?YURpdmJyVHlncU1sVzhMZFRuanE4NGNvZDF4K2hWSlhnc05FU1p3ZTg4ZVF6?=
 =?utf-8?B?VGxNNlhXSWMwRHhQOW1MUTlYeWZnN3lhb25qRjZyWHg2VjI5a09zODJZTGk4?=
 =?utf-8?B?SE9zcmVtYnF4dWtBeDBZZG1tQ0orRkh6VTFHMUJUbEV2S2Y4a1hpUmRWRHph?=
 =?utf-8?B?VUd6WEl4WjVoRnZtcTZNWndraG5MdXMyRWQ5RGo3ZjJKTWRWSmRPcDd4cXhK?=
 =?utf-8?B?V2VEbHFtVmNHMEl4bGNadDBWM25hMlhoTHh5dDJJeUpUSVZ1L2hzQVJhRnFx?=
 =?utf-8?B?aWJxTVJDR290WlNHc1A0bklZZVZWVTh1OG8vNm1hRkljK0M1QXFmQjBwVmFZ?=
 =?utf-8?B?a1FoSlNUZ2dzNjFGV2M5RFJ1MC95cHg2ckpqMlVoVnozaUJKeU8yZnRaUzZI?=
 =?utf-8?B?OEVDZzZwc004WEpyWXBxNDFwU2FSa0NHV2hXRTBhU0F4bXhKZ3E3QWFhRHlS?=
 =?utf-8?B?d0RtUlRNUWowaGoxSk04VE8xYzR0RFI1KzRJRUIweVc5WlVlU3hwZ09hY0V4?=
 =?utf-8?B?eGw3OGx6RUd4bGRYVlN5QW5US0U3NjYzbEh0bFZqNnpCbXhiUlMwb2VIZ0ZL?=
 =?utf-8?B?Y0pFSzAvN2U3QWVBV2J5MUFzcUFCUmtDdVdadXdvTVRvanNoQjdhWklydFR5?=
 =?utf-8?B?TWJ0VWZFckIzc3R5bGZKS0lQaGlSRUY4MVJsYkJzaWNiYjFvTkhqcUZmQUVk?=
 =?utf-8?B?RlhkM2RQNDhhT2V5SUwyTHdrV0g5SmlxNnliQXFFRmxmMTlHT2Vlc1BLYXNJ?=
 =?utf-8?B?V0R0RmJwcDJJais0eFZsTDdQYUdrUjJVMmNSNTduTTJ5RHEwNGVseElkbGxk?=
 =?utf-8?B?b2xGQmVQZ0FvVHhGQ1p6SXlkYWo0Z1FkU0VtZlZyWmFic3FIeXZZOVNBNnJG?=
 =?utf-8?B?S05ldy9DVmtXS0c0dEQ4ZzlnMWUvY1gyWGIxTC9qNWttVHgrZWhvZ1gwdm9j?=
 =?utf-8?B?SzZBcVVuLzBZeVM5emMrTlN3Rjd3VlcvL2M4U3FITldPb1VqWExMWm1jVksy?=
 =?utf-8?B?YlhLcXZ0M2k2VG9oemtqblRwa0tHVG5zVldpTTNNRHUybkdDRGpQTFBxOHly?=
 =?utf-8?B?U0RvV2JMTjh2SEo0dDlhakZib1pQVWxscnVoSzNnTFI1anNWZFdraEtxSkEy?=
 =?utf-8?B?NTJMUkhacHhkdDh2T2FkSW1sVVMyT2UvbTNTVk9oQUZhZC9RNWFwTWxHM1hz?=
 =?utf-8?B?ZkxpcXpXVHBCN1M1eFhOM3BBdnM0MmJNdTVWK1BPQXJhVkpsQ0FZTGh2a0hD?=
 =?utf-8?B?bzBKMVQ2anRoL3JhRzlSTG9yTDVIemV4UlZocU5sNnJzQ1Z0SzFaUzFjbFhY?=
 =?utf-8?B?bHovQ1FDcXJhZFk3YXRCcnV3TWVtMnVmdUZNcVpLNVYraHhDNTVTWng3SU10?=
 =?utf-8?B?RzM5U1J2RU02ckpVK01ZRHhIUFJFUlNreGUxdXdETkRaK2hCNHhCekVSVlJv?=
 =?utf-8?B?UVE0RFZRZU1BSEZXUyszNDhXNmJrY29Wb2UxNDdRdFBEK1lZSktZTGFiZVpp?=
 =?utf-8?B?bHVSOERCTVhJSndWOG9xaCtTWGtZKzM2RUZTMG1aRXAxaXEyRWpLL0M4KzNG?=
 =?utf-8?B?d1hMb3ROVWVaSi9YaUhkcFArdHd6bmNnMUhjMkhMWDROdUx3YitsRlcwYnp3?=
 =?utf-8?B?ekVBMi9Wc2RlY1VFUVAyQXZVbk1ScWZXbGw2aC9HR2pIbytuNDVGVENkdjBo?=
 =?utf-8?Q?lcV9iKYKzkFcIpv0vX8piYsjM79a2g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MS84dU1LSnNHcm5mRm1hM2IxYzJnUFpESDhGS2hrdWoyRXdJRkdGY0pkTWRY?=
 =?utf-8?B?MmNiZTFsVW9vT2FsZnFTZy96V2lTaVBKUFh3Yy9nbnp0bHpzMXEzaDgwZERK?=
 =?utf-8?B?UjlNNFhqMHNYb0hod0J1TEl4LzVMM2lUUkFjZmt4b1QwcUs1Yzh1SW5vNy9H?=
 =?utf-8?B?UmQ1N1g1TXFLbFlqZXp0QVhNMENhakJMN3Blc1NGclR1OFplZm82M0ZEYUta?=
 =?utf-8?B?WXJNQXRZV0tpalhEYXZzdWM1dWNYUDJwS1RGRzBiVmw2UXNsTVl4Rm9zWE0r?=
 =?utf-8?B?REZhWkY1dkN1SlhJcGJwcDlhclVNS2RPM3c5T3MzMEZpYWUvb2J5WVUyaSt3?=
 =?utf-8?B?RUhFSE1mTS9CTk9Ec1V3YUN0S0xCeW96Nm1aSTFjaXF2TDJ0UFNXWXFWYUZo?=
 =?utf-8?B?KzRza1UrM3VkQXdieWd4NlJtSFpRdUNLZHg0R2d6V2ZxekJzalkrSUROU1Na?=
 =?utf-8?B?d3JZRjcxd2RjZ2lhaTRzaUgzWnBGYTlYK0lnOEhnVG9HTWFQd3NpNmpsNm4z?=
 =?utf-8?B?ODJQVVhDRTBLMzdnaEt0UVNDN0VKcS84eEtBc3BldjN2bERGRTAwY2ZNc2tt?=
 =?utf-8?B?Vm9UVXQ3MUlqOVhXc0VnbjhSZWl1UEg5eXhMbDlqT0t3UUZuMFFadlpCdko1?=
 =?utf-8?B?S2czbHozVG5UZGF5eld6V3I1VEV4OThGSW9QZGFzZExDWmhGMXNIUFRpL3M5?=
 =?utf-8?B?ZlJSeEhCYmU5Syt5VzFQRXB2YUlMclE1QnUxcE1OT1JGdGhINzlaTS9pbzVY?=
 =?utf-8?B?QThKbFlGek14Uzg0YnU2RUF2cmRVUjN5RGlKRm5hTWhjWWtQNDZCTTlmNXV0?=
 =?utf-8?B?SWNPMzlNcHlXOVVLbTdOMm9OWEZ1WGNkT2FHdkp5N0RSTDdZLzFoT3dpSjh6?=
 =?utf-8?B?SlFxaVFsb09DMVJuQWp3d3REdmR0V05lYUlHZmFaclJ3QWtHbC9PenVFcGJZ?=
 =?utf-8?B?SmdVeUlHZCtYSEg1ZkozbzRqRnkxN3duU0xVRGVZWExTTDJnR1BXYXFDbUNK?=
 =?utf-8?B?Ly9RUzhweUx1UDkxbFozOUpFZ05palB2SHFEVVlHWW1jN1I4MUtGNkZpcUZo?=
 =?utf-8?B?aXNrRVQ4UDV2anFQU1JFMjhoRTBEZW1qWXljK0ZHRWJSMHRBNW94T2hrY3kz?=
 =?utf-8?B?dllxSDhhYk1RQTlOSUtRWm5PNW5VcFhYMVVTQ1h0SUVRdGdhMlVnYWlOUUdx?=
 =?utf-8?B?NmF2b3RoTzNvQnFpd1p3SGFFaEc4OUJJNW80SDRYcmdab0YxdUtjaGE2NGRk?=
 =?utf-8?B?cnV2N2NvVlh0L2NKYWJ0eVNXTXNCdUJGQUx4Vk9oaCtkOEtFNzRsT2ZBQVJw?=
 =?utf-8?B?OFU5N0NIL3NEdFA1MDMxT283Mnl2RU9qSjc1dnlPRkU0RGVaMTl0SmcvaFJj?=
 =?utf-8?B?T3NjWTl3b3c0YVg2bGhVUW1Fd0hReVZmYkNmaTJIYXQxcDRDa2NRQnhpUjhu?=
 =?utf-8?B?QzRLeUJyc0hxMzgvcTMvb0VBWG4rNnhkcXFvWEFGQUJQcWFFOWlvL2MrTWFQ?=
 =?utf-8?B?c3ZQdUpWa2VUaFdpL0ZJK041UDRvSzl2ZVh6VC8vK1daQ29VSk81UWgyMnRN?=
 =?utf-8?B?VmZLcjM5Sy96WGlLTUtnTXFqN2pDQ2tyNjA2YkoyTitqN1hHMHhZSUhIU0JK?=
 =?utf-8?B?WXNNV2cvRldOVEhNdDBrVkYrSFNVZ2NOUVE5S21Zem5QMnpKZzhid3c5WkY2?=
 =?utf-8?B?VWlhS2taRE1jUGNTTUFDcWRSY3p3SnBuVjNIYVd2N1RLOHVHQXNKb0JKeHFG?=
 =?utf-8?B?eXR4QnVwUVRENmZKVGZaY0FKL0M2MnhuSzk4U24wQlAreFI0bkxrb0E0NGFB?=
 =?utf-8?B?cFdQVDBHNXdxU2VNN3R1cGNIS2FrOXNCSXozOWEvck5QcUNVYTFtRG53RUM5?=
 =?utf-8?B?T3NHNlhFTkNCTElWeXNUaERKOVZZVmZ4d0pkNWxYNk4vaWl1TzBZL1RBb05w?=
 =?utf-8?B?dWE2WUdrUEM0c21hM2V5cGxkUVI0RTNKS3ZlT20rYjkrRmZwZWhqNjd1VXRm?=
 =?utf-8?B?VE16cytSNDJqSWxxdkhpdmQ1WVJjaW5XTEUwM0JNMk0zaGUrTWJEYVBCN3Fp?=
 =?utf-8?B?WnBVZ0xWSnhyeXJPa0gxdVBtOGFUY3pqVEVORjN2Z0Q4V25Fa25oRHQ3dTZ0?=
 =?utf-8?B?OVJhK0lvOExkcmpOS0JTWVlPVUtERTZDR3BBaU5xamFqRENGc3FmdVppeVdy?=
 =?utf-8?B?WDVoMjlxdkQwQXplV0FTam1hQUNBdG9XSVFBUnFQelY5NFoyVjVRZkg3V3I4?=
 =?utf-8?B?S3FLNHI0Y0M2WWhvTmhVMUQxQitnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7D649FD3E4870B4FAE4F9E5D65812564@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6df99a49-2e76-43bf-ea19-08ddc06671c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2025 10:33:58.4093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gCV66J+ZxW6IYiBFWt0dOJhr0ZzQT/3mtEdYsmghbMi4H4ZIh1kLydKUrIiMMo6b+N/HPkfjSxJHMg40mCIzsKb5Mpdlivivq5g51lSl1LA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6467
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

T24gRnJpLCAyMDI1LTA3LTExIGF0IDAyOjExICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgSnVsIDEwLCAyMDI1IGF0IDA1OjI3OjEzUE0gLTA0MDAsIFJvZHJpZ28gVml2
aSB3cm90ZToNCj4gPiBPbiBUaHUsIEp1bCAxMCwgMjAyNSBhdCAxMTowOTo0MlBNICswMzAwLCBW
aWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiBPbiBUaHUsIEp1bCAxMCwgMjAyNSBhdCAxMTo0
Mjo1MkFNIC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+ID4gPiA+IE9uIFdlZCwgSnVsIDA5
LCAyMDI1IGF0IDA2OjExOjE3UE0gKzAwMDAsIEhvZ2FuZGVyLCBKb3VuaQ0KPiA+ID4gPiB3cm90
ZToNCj4gPiA+ID4gPiBPbiBXZWQsIDIwMjUtMDctMDkgYXQgMjA6MDMgKzAzMDAsIFZpbGxlIFN5
cmrDpGzDpCB3cm90ZToNCj4gPiA+ID4gPiA+IE9uIFdlZCwgSnVsIDA5LCAyMDI1IGF0IDEwOjU3
OjU4QU0gKzAzMDAsIEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gPiA+ID4gd3JvdGU6DQo+ID4gPiA+
ID4gPiA+IEN1cnJlbnRseSBkaXNhYmxpbmcgUFNSMiB2aWEgZW5hYmxlX3BzciBtb2R1bGUgcGFy
YW1ldGVyDQo+ID4gPiA+ID4gPiA+IGNhdXNlcw0KPiA+ID4gPiA+ID4gPiBQYW5lbA0KPiA+ID4g
PiA+ID4gPiBSZXBsYXkgYmVpbmcgZGlzYWJsZWQgYXMgd2VsbC4gVGhpcyBwYXRjaCBjaGFuZ2Vz
IHRoaXMgYnkNCj4gPiA+ID4gPiA+ID4gc3RpbGwNCj4gPiA+ID4gPiA+ID4gYWxsb3dpbmcNCj4g
PiA+ID4gPiA+ID4gUGFuZWwgUmVwbGF5IGV2ZW4gaWYgUFNSMiBpcyBkaXNhYmxlZC4NCj4gPiA+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IEFmdGVyIHRoaXMgcGF0Y2ggZW5hYmxlX3BzciBtb2R1
bGUgcGFyYW1ldGVyIHZhbHVlcyBhcmU6DQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiAt
MSA9IFBTUjEgOiB5ZXMsIFBTUjIgPSB5ZXMsIFBhbmVsIFJlcGxheSA6IHllcw0KPiA+ID4gPiA+
ID4gPiDCoDAgPSBQU1IxIDogbm8swqAgUFNSMiA9IG5vLMKgIFBhbmVsIFJlcGxheSA6IG5vDQo+
ID4gPiA+ID4gPiA+IMKgMSA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkg
OiB5ZXMNCj4gPiA+ID4gPiA+ID4gwqAyID0gUFNSMSA6IHllcywgUFNSMiA9IHllcywgUGFuZWwg
UmVwbGF5IDogbm8NCj4gPiA+ID4gPiA+ID4gwqAzID0gUFNSMSA6IHllcywgUFNSMiA9IG5vLMKg
IFBhbmVsIFJlcGxheSA6IG5vDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBJLmUuIHZh
bHVlcyBkaWZmZXJlbnQgdGhhbiAtMSBhbmQgMCBhcmUgaGFuZGxlZCBhcw0KPiA+ID4gPiA+ID4g
PiBiaXRtYXNrcyB3aGVyZQ0KPiA+ID4gPiA+ID4gPiBCSVQwDQo+ID4gPiA+ID4gPiA+IGRpc2Fi
bGVzIFBTUjIgYW5kIEJJVDEgZGlzYWJsZXMgUGFuZWwgUmVwbGF5Lg0KPiA+ID4gPiA+ID4gPiAN
Cj4gPiA+ID4gPiA+ID4gdjI6DQo+ID4gPiA+ID4gPiA+IMKgIC0gbWFrZSBpdCBtb3JlIGNsZWFy
IHRoYXQgZW5hYmxlX3BzciBpcyBiaXRtYXNrIGZvcg0KPiA+ID4gPiA+ID4gPiBkaXNhYmxpbmcN
Cj4gPiA+ID4gPiA+ID4gZGlmZmVyZW50DQo+ID4gPiA+ID4gPiA+IMKgwqDCoCBQU1IgbW9kZXMN
Cj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gPiAtLS0NCj4gPiA+
ID4gPiA+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jwqDC
oCB8wqAgNiArKy0tLQ0KPiA+ID4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgIHwgMjINCj4gPiA+ID4gPiA+ID4gKysrKysrKysrKysr
KystDQo+ID4gPiA+ID4gPiA+IC0tLS0NCj4gPiA+ID4gPiA+ID4gwqAyIGZpbGVzIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4g
PiA+ID4gPiBkaWZmIC0tZ2l0DQo+ID4gPiA+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+ID4gPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+ID4gPiA+
IGluZGV4IDc1MzE2MjQ3ZWU4YS4uMTk1YWYxOWVjZTVmIDEwMDY0NA0KPiA+ID4gPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMN
Cj4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+ID4gPiA+IEBAIC0xMTYsOSArMTE2LDkgQEANCj4gPiA+
ID4gPiA+ID4gaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX2ZiYywNCj4g
PiA+ID4gPiA+ID4gaW50LCAwNDAwLA0KPiA+ID4gPiA+ID4gPiDCoAkiKGRlZmF1bHQ6IC0xICh1
c2UgcGVyLWNoaXAgZGVmYXVsdCkpIik7DQo+ID4gPiA+ID4gPiA+IMKgDQo+ID4gPiA+ID4gPiA+
IMKgaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX3BzciwgaW50LCAwNDAw
LA0KPiA+ID4gPiA+ID4gPiAtCSJFbmFibGUgUFNSICINCj4gPiA+ID4gPiA+ID4gLQkiKDA9ZGlz
YWJsZWQsIDE9ZW5hYmxlIHVwIHRvIFBTUjEsIDI9ZW5hYmxlIHVwDQo+ID4gPiA+ID4gPiA+IHRv
IFBTUjIpICINCj4gPiA+ID4gPiA+ID4gLQkiRGVmYXVsdDogLTEgKHVzZSBwZXItY2hpcCBkZWZh
dWx0KSIpOw0KPiA+ID4gPiA+ID4gPiArCSJFbmFibGUgUFNSICgwPWRpc2FibGVkLCAxPWRpc2Fi
bGUgUFNSMiAoQklUMCksDQo+ID4gPiA+ID4gPiA+IDI9ZGlzYWJsZQ0KPiA+ID4gPiA+ID4gPiBQ
YW5lbCBSZXBsYXkgKEJJVDEpKS4iDQo+ID4gPiA+ID4gPiA+ICsJIlZhbHVlcyBkaWZmZXJlbnQg
ZnJvbSAwIGFuZCAtMSBhcmUgaGFuZGxlZCBhcw0KPiA+ID4gPiA+ID4gPiBiaXRtYXNrIHRvDQo+
ID4gPiA+ID4gPiA+IGRpc2FibGUgZGlmZmVyZW50IFBTUiBtb2Rlcy4iDQo+ID4gPiA+ID4gPiA+
ICsJIkUuZy4gdmFsdWUgMyBkaXNhYmxlcyBib3RoIFBTUjIgYW5kIFBhbmVsDQo+ID4gPiA+ID4g
PiA+IFJlcGxheS4NCj4gPiA+ID4gPiA+ID4gRGVmYXVsdDogLTEgKHVzZSBwZXItY2hpcCBkZWZh
dWx0KSIpOw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBUaGlzIHRoaW5nIGlzIHZlcnkgdW5p
bnR1aXRpdmUuIFdoeSBkb24ndCB3ZSBqdXN0IGdldA0KPiA+ID4gPiA+ID4gcmVwbGFjZSBpdA0K
PiA+ID4gPiA+ID4gd2l0aCBhIG5ldyBkaXNhYmxlX3BzciBtb2RwYXJhbSB0aGF0IGlzIGNsZWFy
bHkganVzdCBhDQo+ID4gPiA+ID4gPiBiaXRtYXNrIG9mDQo+ID4gPiA+ID4gPiB3aGF0IHRvIGRp
c2FibGU/DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSSB3YXMgdGhpbmtpbmlnIHdlIHNob3VsZCBr
ZWVwIGl0IGJhY2t3YXJkIGNvbXBhdGlibGUuIEkga25vdw0KPiA+ID4gPiA+IHRoaXMNCj4gPiA+
ID4gPiBwYXJhbWV0ZXIgaXMgaW4gdXNlLg0KPiA+ID4gPiANCj4gPiA+ID4gSSBhZ3JlZSBvbiBr
ZWVwaW5nIHRoaXMgYmFja3dhcmQgY29tcGF0aWJsZS4NCj4gPiA+IA0KPiA+ID4gSU1PIGl0J3Mg
YW4gdW51c2FibGUgbWVzcyBzbyBJIHdvdWxkbid0IGJvdGhlciB0cnlpbmcgdG8gcHJlc2VydmUN
Cj4gPiA+IGl0Lg0KPiA+ID4gVGhlIG9ubHkgdmFsdWUgdGhhdCBzZWVtcyB0byBtYWtlIGFueSBz
ZW5zZSBjdXJyZW50bHkgaXMgPTAuIA0KPiA+IA0KPiA+IGZhaXIgZW5vdWdoLiB3aGF0IGFib3V0
IHNpbXBseSByZW1vdmluZyBhbGwgdGhlIG9wdGlvbnMgZW50aXJlbHk/DQo+ID4gZW5hYmxlX3Bz
cj0wIGtlZXBzIGRpc2FibGluZyBpdCwgb3RoZXJ3aXNlIGVuYWJsZWQgaXQuIEFuZCB3ZQ0KPiA+
IHJlZHVjZQ0KPiA+IGFsbCB0aGUga25vYnMgb3B0aW9uLiBBZnRlcmFsbCwgdGhpcyBzaG91bGQg
YmUgb3VyIGVuZCBnb2FsIGFueXdheS4NCj4gPiANCj4gPiA+IElmIEkNCj4gPiA+IG5lZWQgdG8g
dXNlIGFueSBvdGhlciB2YWx1ZSBJIGFsd2F5cyBnaXZlIHVwIGltbWVkaWF0ZWx5IGFuZCBqdXN0
DQo+ID4gPiBoYWNrIHRoZSBjb2RlIGluc3RlYWQuDQo+ID4gDQo+ID4gV2VsbCwgdGhlIHBhcmFt
IGFjdHVhbGx5IGV4aXN0cyBmb3IgdXMgdG8gcmVxdWVzdCByZXBvcnRlcnMgdG8gdHJ5DQo+ID4g
ZGlmZmVyZW50IGNvbmZpZy4gVGhlIGRldnMgY2FuIGFsd2F5cyBtb2RpZnkgdGhlIGNvZGUuDQo+
ID4gDQo+ID4gUXVlc3Rpb24gbm93IGlzLCBhcmUgYWxsIHRoZXNlIHZhcmlhbnRzIHVzZWZ1bCBm
b3IgY29sbGVjdGluZyBkZWJ1Zw0KPiA+IGluZm9ybWF0aW9uIG9mIHNvbWUgc29ydD8NCj4gPiAN
Cj4gPiBJZiBzbywgYXMgbG9uZyBhcyBpdCBpcyBkb2N1bWVudGVkIGFuZCB3ZSBjYW4gYXNrIGRp
ZmZlcmVudCB2YWx1ZXMsDQo+ID4gd2Ugc2hvdWxkIGJlIGdvb2QuDQo+ID4gDQo+ID4gPiANCj4g
PiA+IElmIHdlIGtlZXAgY2FsbGluZyBpdCAnZW5hYmxlX3BzcicgdGhlbiBpdCBzaG91bGQgY2xl
YXJseSBiZSBhDQo+ID4gPiBiaXRtYXNrIG9mIHRoaW5ncyB0byAqZW5hYmxlKiwgbm90IHRoaW5n
cyB0byAqZGlzYWJsZSouDQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IEFsc28gb3VyIGV4cGVy
aWVuY2Ugd2l0aCBkaXNhYmxlX3Bvd2VyX3dlbGwgc2hvd3MgdGhhdCBuZWdhdGl2ZQ0KPiA+ID4g
PiBuYW1lIGluIHRoZSBwYXJhbWV0ZXIgY2FuIGJlIG11Y2ggbW9yZSB1bmludHVpdGl2ZSBhbmQN
Cj4gPiA+ID4gY29uZnVzaW5nLg0KPiA+ID4gDQo+ID4gPiBUaGF0IG9uZSBpcyByYXRoZXIgZGlm
ZmVyZW50IGJlY2F1c2UgaXQgZG9lc24ndCAiZGlzYWJsZSBwb3dlcg0KPiA+ID4gd2VsbHMiDQo+
ID4gPiBidXQgcmF0aGVyIGl0ICJkaXNhYmxlcyBwb3dlciB3ZWxsIGRpc2FibGluZyIuIEJ1dCB5
ZXMsIGl0IGlzIGENCj4gPiA+IHZlcnkNCj4gPiA+IHBvb3IgbmFtZSBhcyB3ZWxsLg0KPiA+ID4g
DQo+ID4gPiBDYWxsaW5nIGl0ICJlbmFibGVfcG93ZXJfd2VsbHMiIHdvdWxkbid0IHJlYWxseSBo
ZWxwIHRob3VnaC4NCj4gPiA+IEl0IHNob3VsZCBwZXJoYXBzIGJlIHNvbWV0aGluZyBtb3JlIGxp
a2UNCj4gPiA+ICdkb250X2Rpc2FibGVfcG93ZXJfd2VsbHMnDQo+ID4gPiBvciAna2VlcF9wb3dl
cl93ZWxsc19vbicuDQo+ID4gDQo+ID4gb2theSwgZmFpciBlbm91Z2gsIGRpc2FibGUgcG93ZXIg
d2VsbCBpcyBhbm90aGVyIGxldmVsIG9mDQo+ID4gY29tcGxpY2F0aW9uLg0KPiA+IA0KPiA+IGJh
Y2sgdG8gZGlzYWJsZV9wc3IgaWRlYToNCj4gPiANCj4gPiBkaXNhYmxlX3Bzcj0wID09IGVuYWJs
ZSBQU1I/IHRvIG1lIHRoaXMgaXMgYWxyZWFkeSB1bmluaXR1aXRpdmUNCj4gPiBhbnl3YXkuDQo+
ID4gZGlzYWJsZV9wc3I9MSA9PSBkaXNhYmxlIFBTUjE/DQo+ID4gZGlzYWJsZV9wc3I9MiA9PSBk
aXNhYmxlIFBTUjI/IGFuZCBrZWVwIG9ubHkgUFNSPTE/DQo+ID4gDQo+ID4gSSBzdGlsbCBkb24n
dCBzZWUgYSBjbGVhbiBvYnZpb3VzIGludHVpdGl2ZSB3YXkgb2YgaGFuZGxpbmcgaXQuDQo+ID4g
UGVyaGFwcyB3aGF0IEkgaGFkIHN1Z2dlc3RlZCBhbm90aGVyIGRheToNCj4gPiANCj4gPiBQU1Ix
ID0gQklUMA0KPiA+IFBTUjIgPSBCSVQxIChQU1IyIGluZmVycyBQU1IxIGVuYWJsZWQpDQo+ID4g
UEFORUxfUkVQTEFZID0gQklUMiAoYWxzbyBpbmZlcnMgUFNSMShhbmQgMj8pIGVuYWJsZWQpDQo+
IA0KPiBXaXRoIGEgYml0bWFzayBJIGRvbid0IHRoaW5rIGluZmVycmluZyBhbnl0aGluZyBpcyBo
ZWxwZnVsLg0KPiBJZiB0aGUgY29ycmVzcG9uZGluZyBiaXQgaXNuJ3Qgc2V0IHRoZW4gZG9uJ3Qg
dXNlIHRoYXQNCj4gbW9kZSwgcGVyaW9kLg0KPiANCj4gQW5vdGhlciBvcHRpb24gd291bGQgdG8g
aGF2ZSBhIHNlcGFyYXRlIG5hbWVkIHBhcmFtZXRlcg0KPiBmb3IgZWFjaCBtb2RlLiBXb3VsZCBi
ZSBlYXNpZXIgdG8gdW5kZXJzdGFuZCBidXQgZHVubm8NCj4gaWYgd2UgcmVhbGx5IHdhbnQgdG8g
YWRkIHRoYXQgbWFueSBtb2RwYXJhbXMganVzdCBmb3IgdGhpcy4NCg0KSSdtIG5vdyB0aGlua2lu
ZyBhZGRpbmcgZW5hYmxlX3BhbmVsX3JlcGxheSB3b3VsZCBtYWtlIG1vc3Qgc2Vuc2U6DQoNCi0x
IDogRW5hYmxlIGNoaXAgZGVmYXVsdCAoRGVmYXVsdCkNCiAwIDogRGlzYWJsZQ0KIDEgOiBFbmFi
bGUgUFIgZnVsbCBmcmFtZSB1cGRhdGUNCg0KS2VlcCBlbmFibGVfcHNyIGFzIGl0IGlzIGFuZCBy
ZW1vdmUgYWxsIGJpbmRpbmdzIHRvIFBhbmVsIFJlcGxheSBmcm9tDQp0aGVyZS4gV2hhdCBkbyB5
b3UgdGhpbms/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiAoUGVyYXBzIGV2
ZW4gYml0MyBmb3IgZWFybHkgdHJhbnNwb3J0PykNCj4gPiANCj4gPiBUaGlzIGlzIGJhY2t3YXJk
cyBjb21wYXRpYmxlIGJlY2F1c2UNCj4gPiANCj4gPiAwID0gZGlzYWJsZWQsDQo+ID4gMSA9IHVw
IHRvIHBzcjEsDQo+ID4gMiA9IHVwIHRvIHBzcjIsIChubyBwYW5lbCByZXBsYXkpDQo+ID4gMyA9
IHVwIHRvIHBzcjIsIChzYW1lIGFzIDIpDQo+ID4gNCA9IHBhbmVsIHJlcGxheSBvbg0KPiA+IC4u
Lg0KPiA+IA0KPiA+ID4gDQo+ID4gPiAtLSANCj4gPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+ID4g
SW50ZWwNCj4gDQoNCg==
