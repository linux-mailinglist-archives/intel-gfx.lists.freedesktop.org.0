Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EC2B486E0
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 10:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A750A10E11A;
	Mon,  8 Sep 2025 08:26:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cWZ/2zx9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36B8410E11A;
 Mon,  8 Sep 2025 08:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757320001; x=1788856001;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=49BxMI1xo8L/6AKt7O1KVXTUJXvGNlqF7Cbqk9EWkXM=;
 b=cWZ/2zx98R1q4KjF+pO+Bl+UC6AQONELHwS8PSPYN6uTYRDDL5lItVIr
 L+roqjJSIEIWAlNaRF4C51oe8ptt3mIHg9OV9HtpzRX82GSeGcpGNt4sF
 K9WA52rXjL7KiqaghiGRfNkGJ24lcAqlIC0zW6fw9bCE1dnuwrwGUMcX/
 bskbleH1LV3dJddr6w11xtJ9rS+rW7Bl2VKFM4v4XzE48vZ2Zz8LNNGTc
 jfKVZz7Bz520VnlmzvuukClqOZEJxKaf/KsAzyFEHzTollWCGq9ycKzmt
 VSVvNABqgYJD/ScRt7suUSJzS/y+1qhrFR5EeLecoyK6P1n+IGnaYDcn6 Q==;
X-CSE-ConnectionGUID: Dmf+5HEuR8WshfEzTU1cVg==
X-CSE-MsgGUID: HoszmmH0RkW4AOJWiO3lbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="58609273"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="58609273"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 01:26:40 -0700
X-CSE-ConnectionGUID: VX22eb3xRCeENyASUy/bDw==
X-CSE-MsgGUID: Y45d6f8iRn2ZxBKSjK0hhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="173522303"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 01:26:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 01:26:38 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 01:26:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.89)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 01:26:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cm+ihXXs41o3zDCW4AUTFHOMSTi3VoE8eONPuXb3gsc18duCwXs3Sj9pm3TAZvfc9rUFgTqICu4JX8k20PU/JLJ14S8x1LNNyQEXSNx+KuoPo6GBOAkIRFxXbR56LHZrJ2AG+7Jie0olZ29R5xvPyPbBbrssUcExjZY5W67BKnR6S5Zc70bONMEjNL3x7SNQpIRrumaMzc2fFHmbtddVGymSWrlqsMJZePnYU0fZcv1wg/NRPn52eGLj01MN+ZS1CvQzvkt4t0Hnzu5r9vJNVV1BXt7LVd0eR2IU1JpEcqutmejiZhbTm3HowFNk6sGt4afGnNAgbZ2ojOsLChllVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K1wPAppFgKG6WG9Qz/U/D9hdk334UHpubXKEobX/XzQ=;
 b=fFESG67wQOdPbBe2IRomeQDAscFNH0oRPAUu4Y0BhsROQrmTHIL9Kl5QxCJ+tqcdG/xQCCDft9iA8hXNS79hmfPm52xQykxZzar5ZFqEEsoCmBza28pCOK+6Jagk+Ji6zAaww6ExYZ+//tvCHhfyYcUSpezl5qjCklDF8uYNqvKvnFLO3QTu0iIZcGkqGuWwxIb68S9qNdREOG7+htJWWsph4BfKadnkgyyBtbHF7CVzHmGXCY1y8qQtJCoZVBRg8VfnvrICsenWzpZlF6KJnOBgw8xZKLRX1N0vqxH1UN24vc4MTICAiBEMSJEaCnO1IkOWNg2DCH618ofS8UJ9JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL1PR11MB6026.namprd11.prod.outlook.com (2603:10b6:208:391::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 08:26:36 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 08:26:35 +0000
Message-ID: <16a61c4c-1e3f-4965-9725-986ed0864a03@intel.com>
Date: Mon, 8 Sep 2025 13:56:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Soft defeature of cursor size reduction
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250813052017.3591331-1-nemesa.garg@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250813052017.3591331-1-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN4PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26e::10) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|BL1PR11MB6026:EE_
X-MS-Office365-Filtering-Correlation-Id: 62aa5770-d8d2-4bd8-6d19-08ddeeb16c77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkpaODBNSVMzSUZqdmp2U2t1WXRkYmVzZ3RnZ0U1MVpJb3ZFZ0cyNXFzbW5m?=
 =?utf-8?B?MFlxOGlTOHROclFYVzJkRFUzNk5JTTVNWk9zeE9DeGxOZHZDNVFxUkpNNU0w?=
 =?utf-8?B?SVlCb0JScWh2cUxsQXdoTCtFc01GYUMvTGcrdTNPOTVGQ0x3eEVOYklwTFV1?=
 =?utf-8?B?ejR1ZzRhMlRwSHQ3M1hsb3hnNnQ1VVU5Y3YvMmFtdUFUVXg4ZlROTllpWHJr?=
 =?utf-8?B?RzUyYXpNcVdIKzBIK2tLL2grMENCcHlSVVptR0F2L1crNHpkamVKQVhFc0Yz?=
 =?utf-8?B?V2tZakZPVUU3eUovSlpzbjQvTjhFSThJWWszMHhLUnQ1ZFgrVWx3SnIwK2RX?=
 =?utf-8?B?V3VBNVpKNXBEelVOekZDYzY0QWYyb0V2Rno2TlNsNW1NdTJwcG0vUUlqZzZF?=
 =?utf-8?B?aEc2UFJVS2lHNUxWSG5OS1I5M25NWDRNeml1eVg2VTJCdGx3QkNROVBHWjRX?=
 =?utf-8?B?UWhuOHBOSUJ4UnU3WHF5UGVJRzNML3hSV09Zd1Rscy9Td2NXeks0eis0dU5z?=
 =?utf-8?B?TW5acWttSjZPZUttTG9vK3JNQWlidjVoNjNyYXZjems2cHQ3NU5xcnlxZDBK?=
 =?utf-8?B?Sm50NllxMXl5WFFYNE1VajloWnk2b0RYWXlhc1djaTA4SVZYR0JSZkcxdi9N?=
 =?utf-8?B?R0dtZTBuc1R1Sjc3WEYzcVZodVJhUDFMNEgzN2Y1dG1JSjlnTytyMWM5bjVo?=
 =?utf-8?B?amd4TDF4aHo4MGF4SWxqc2llY0U3MXB6UmMyVnFubFBLZ0RmeW5LdGFKYVc3?=
 =?utf-8?B?QVA1QjU4TG40Nmd1RkdOb3M1TmlSWUNydjRrY2tPMmQzZ29NVnozVWx0VUcw?=
 =?utf-8?B?NjQwUXo1QmkvT1oxSTBVbDY0WTRER284QktWbWhWZ2kwMWNHUFVsTEsvb1Iw?=
 =?utf-8?B?dWdyUDVPMDhFRTBWQmFLOEhhOHUzUjBPSFlHMkNDWkxYbUJocndRYjdrQlFI?=
 =?utf-8?B?Z09ZMHdkRnRrV0F0NSt6ZnRjbHJHVnNWK2E0bm1LcmRqVU1WaDh6b3oveUpl?=
 =?utf-8?B?cllXeWNZQTF2VjBTL3JRVlozT1YxWXFneXNaUVM4TUJsSmhVQk9lSVFGWlNZ?=
 =?utf-8?B?clpLbmx3bitEcjh3MXBqRkxlZkpyT1lPUUhDWUhxUWRMQWI5WldyVVNhSkRP?=
 =?utf-8?B?blk5NTBOOHA2Z1liRUErSEdpdmhQRzJpZENsSzczcVQrSzNaUnNBQW1EVWxH?=
 =?utf-8?B?dndubnhJTVdvaVRqbzZXd1ZyeEpGRkYxSlpQUFpLQUhPZkpYdlNwNTNUTURG?=
 =?utf-8?B?SktOM1liNWRWZU51WXE1NkVpeFNQR3dCd2dBb25aci8wVUM3a05ja0ZNSW1D?=
 =?utf-8?B?QlJ6R0VEckJlNnVCLyt6RUUwVllNcGVMMTh5QkdHT09jMmVCRHBsa2NpR1dQ?=
 =?utf-8?B?WUNtUHZkNE1yV3lwbUNEb2UwV3NVMkdHNmYyWVlMcFFMNmUrZkZuTVNhT212?=
 =?utf-8?B?NU1rdEQzRDQ1MGpoaVpYeTR5SUUzaVA5SUFBdFhEd2JMbDJEaXBWY3g2SUNq?=
 =?utf-8?B?VnVHUmw4NFlmYmtRbEltYWU2VXZNUlJ4NUd6eml0Z1JmbVVOY05oQmR4K3R6?=
 =?utf-8?B?eW53ZGp4QnJsb1VjQURCcU1Lb1kvYmtqSXpWU2xnSWV4OVlJUGVCdjJ5cXlw?=
 =?utf-8?B?QVNsMjAzOGk4OTIzSmYxQk80S1ZKRzhCYk5HRXdwVHJHblBiZzNoL21KZjJW?=
 =?utf-8?B?STdiWDE4M0FMd2RTN0tneEUvTUVsLzlHRkZaWE84QmlOb0hRQ3RIMzNEWGJq?=
 =?utf-8?B?bzg3YVJrZ1prVmowSGZaeEVIOHhhT2Z6OG9yMmJwSXMxUE1OWWY4VDFxQVZY?=
 =?utf-8?B?SkF6R01hRG5sbnJZVDlSeFZKS3JOb3FWSG1xY0FGN3k5ZFZQWHl4UDFSRUJN?=
 =?utf-8?B?TDd5TURRSlowMUhtSnBDdS9GMW82UExBZGJDR0NkeTE3NEhhNGczZ0dTSEhN?=
 =?utf-8?Q?uy2pqFgfEr0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZDBkbEhFL0cvOWtGVENYejhneWM2NnM5N3NvNGt2cW5NR0tyWHIwaW9YcVI3?=
 =?utf-8?B?N3ptSEh0WkFpVWdJbGRSTUdCLzM5ZjkvYkNGR0F2M2hSdGV2alo1S25JdFJ1?=
 =?utf-8?B?SWlEZzUvaVhBRXIvYjlGVzY5UzlYTC9TQ3pLS2l2cUxSaHdpcjVJTHB4Zzdx?=
 =?utf-8?B?Rll3cFJ1NEZGRktPTVYzcmxVcUxuZmsxd2c0WDgycFM5L2FJMkR1b2FZTXNQ?=
 =?utf-8?B?akd1NldsNEx3STltV2daaTNDMmZDMjBRWEw5R093OVE1Yk53N1VpMHNxY3U5?=
 =?utf-8?B?aG9OOVRCeUR3WVhrRTFFQW9COXlIYXpGSE9BVHFhUU9vcndjcW8vajhJWDV0?=
 =?utf-8?B?dlZqUkkyd0dJUTdCMXUxaE5zR24zQlNSem5nRFFqUC9QeFhxcEZHcW0vV2p2?=
 =?utf-8?B?a3dYYVd4TUhaTStQL3ErWWVPWlBBd0NWL25NRGZhcVA0SU5jejFZVFhNdFpl?=
 =?utf-8?B?em4wa0tBdVRaNmFaS2VuKy9vb1NtUU04dDU0WGlubkRGQ2tWVm9oVWRydTRx?=
 =?utf-8?B?NFlwK2lJMGlpZ20weDdFZW1laW1LS0Rtc1BqeEhXckUrTGVEc2J6WjFtdGNG?=
 =?utf-8?B?V1lkL1RzSStYY0ZzNGo5OGNjZWYrZzN0RHoyTTAyYUJ1cDBpOWN1WkJYTS9z?=
 =?utf-8?B?LzlORkRidFZ4YjVCUzFONWh1K1hEclZRT2ZzT3kvamV4dlhtamE0aEdTbXVJ?=
 =?utf-8?B?UUNKNmJOWm9CTHFIT21sbExCc1g3YmNITE9TUHpBZk9ZL3Jqcms5V3lCMjBq?=
 =?utf-8?B?U1dzT3VOSHBpU1Y0Zm1nUHhQVVNuaEdiL1FpYWJoa3dWelM2TGVVTmJPOHQ1?=
 =?utf-8?B?dGk2YnpVVnRBZTBTSDZGUVhPVExuRzcydGlPZFdlZ2FFMm5VNFRIZzhOZ3I1?=
 =?utf-8?B?aEs0RVphaEZrczR5ZFdOMDF5aTBKeGx5dXJoTHhOYXRqVlpJMktQTGsxeFNY?=
 =?utf-8?B?UDlyeDhHRnJMdXBlWmhPcUhEbWJDSHlDT0xockNsY2dZMEd0b1JQTFV1UnA3?=
 =?utf-8?B?dnRyQlBsd0hXV01HUnNaN0xaTmR4aWt5QzE1NHpkMTdxUnBlS0M2bDFXT0g1?=
 =?utf-8?B?Yi9uKzBKajBEbktrQ2pNOWwzSHNEWGJScUoxNmtibUlqM0xpUmQwRk9Yb0tQ?=
 =?utf-8?B?MVpZano0a3kzUDJjNjdudDlTRlJDQjNlUi9qcnQ3Y2V2THVwQ21GZDBxZFAr?=
 =?utf-8?B?c29uY1Jqaml5QjBMUDJHb1pmbEljbndiQW41dkpOb3NQelU3L1Axblk0YVpC?=
 =?utf-8?B?QTlXUG1KU0U0aWk5WlBKWnE1QTJEY29jYVFUK2hwSFo5cUV2WmZqR0pzb2tT?=
 =?utf-8?B?REtBMGo0ejNKeGw3V3RkZXBqZ2Nwa290Nm5wUSt1M2FESlZhLzY5TVJRSTZ4?=
 =?utf-8?B?NDFWM3Z4dWVLNW1mRTlENFZUTTZpQ1ozQlFrTXhwb28yd3ZFbjYwRVgwOUNH?=
 =?utf-8?B?bUhyNm9idE1kSnJLcDdSMEJxL2hKdTVwUzQ0WFJjcFEwYy8wMnFGaEd6dnps?=
 =?utf-8?B?WW9IbHZoRzlpOVlGQUNOOTZxR0d0Z1NMc3pBUkxSc0VyenU1S05pSHhtUHpQ?=
 =?utf-8?B?RkJ4WCtPeTRPNlljQ1NSMnNiaDJnZkdrUGFMQ1pwMytYNVQyenM4eCt6U0xF?=
 =?utf-8?B?WFVTV1FhZmdla2ZTTlRLYUR0TjFOamFwNC9Hb2o0RFdJU2JNb3BJT1JJbW54?=
 =?utf-8?B?a2s4OTdVRlRKQmxqWkMzWUZuSjRySjl6Z2oyc3F4U3dSUlJDaXdrdTRHTXpK?=
 =?utf-8?B?ampod0FsV1g5RkU3cUFJM2VVNGM3aFEzbFlPaFlNaXB1M1hveEtaem5VUkhV?=
 =?utf-8?B?cktVWHRmaWJqRm1EL0ZVVXNyTG55UG1mL0RFWnhqNThRNVZrTGFaczB1elRG?=
 =?utf-8?B?S3p6TWw4S2JoUVZVT2k5aFlkcTdaUSsyUmFWVS96R2ZneVlFS3FqVkpvUHF6?=
 =?utf-8?B?OERuNVpqT2NkVDR4UzMrY1dVNm1tSWZtT3VsUUF4OFJPL3lKWDBJRStWc3dJ?=
 =?utf-8?B?enpyejBRQ1pnb1Ywait1ZlVBZCtOb2Q1aFVDMXFGTXRNTGxLZjJOU1FFczJt?=
 =?utf-8?B?Yk9sOGwyVVlMc3d0ODRJMWlXbzVYc0lhUVprWDllc3R5U0g4YVlMWEpucVNT?=
 =?utf-8?B?Nld6dTVwWFJpcjN4ZVJTZ1U5VmJjZE5MdnMzdGxKNWR3WnNDc2h5a0FQSEti?=
 =?utf-8?Q?WTkTckQ9MOFGjo84yI0Pj/s=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62aa5770-d8d2-4bd8-6d19-08ddeeb16c77
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 08:26:35.9273 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lik+OxBI2n/zqDSOWGedNFvdUvXGeSw7p3QMyoQgAGoRCRTQP/cQ8Av/chgCDgqf9Hctf8y6D28INkM+q9/fGlUf/6Xx2ms9xLYgd3EqyP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6026
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



On 8/13/2025 10:50 AM, Nemesa Garg wrote:
>  From display 14 onward do not enable the cursor
> size reduction bit as it has been defeatured.
> 
> Bspec: 50372
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index d4d181f9dca5..c47c84935871 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -662,7 +662,7 @@ static void i9xx_cursor_update_arm(struct intel_dsb *dsb,
>   		cntl = plane_state->ctl |
>   			i9xx_cursor_ctl_crtc(crtc_state);
>   
> -		if (width != height)
> +		if (DISPLAY_VER(display) < 14 && width != height)
>   			fbc_ctl = CUR_FBC_EN | CUR_FBC_HEIGHT(height - 1);
>   
>   		base = plane_state->surf;

