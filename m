Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9212CEBE07
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 12:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C44F10E06B;
	Wed, 31 Dec 2025 11:54:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iyKV0wRS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D7510E06B;
 Wed, 31 Dec 2025 11:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767182076; x=1798718076;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/gCeDn+UBOPjcKC/JIfKdhkW8EFFCkZpe/wbdxGeneU=;
 b=iyKV0wRSLZv+scDTLjr2G5fVSoSjnMXcMUTr+JW9fjf9IWqUZ43GiTl/
 kvhaDBGvU1TCYTf+3sy63RlB2JUqEGyPYnW/JOfZbfbN1a8gUesIgFYKE
 aLnozBZI5Mk4+O06zzxpE6Pbm552QQETB43HjBasXf4IguHR/vssFX3Zc
 oGvWtv+Yp7H7gALTP6UJ1Hr6OWXVasEzx9mQyAOMzXP8Z9bnSiLrmWUay
 MbcAoBVhELUGBaElm2j/TejK2ZebZfjmru47Hdo2FZGpIeKSGYEIxXVRM
 X4+Gzln7HVAp0VDryZySsHuor0JXboSljkI3DByT6bK9Z+DCfq0PkQY+p Q==;
X-CSE-ConnectionGUID: N7VFRD+xTqmqYRXW81UJyQ==
X-CSE-MsgGUID: tz3SY8/DR2GsdZt1j0T7OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68785814"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="68785814"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:54:35 -0800
X-CSE-ConnectionGUID: AQH5jM70RJ6LPO5sjJZjdA==
X-CSE-MsgGUID: RTsJasvZTqONLVCTbfF8+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="201177056"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:54:35 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 31 Dec 2025 03:54:33 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 31 Dec 2025 03:54:33 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.6) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 31 Dec 2025 03:54:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AZoeOu09f9w2b37TrAD4DtWZKMZI8P+qTNEVD4PaSTD0JYpEnazSb1C+U8IdyFgDPJ59gPP4Vw5HouX1C+mikVxknlNMT0u+o6cFfe2eJe4LFXTwKB7gmBKUnJsFo3Afyy5XrkvIxwC7h4Q3spABTlq9wjvZ+oKYuEQ51DqVZeX/t1Xiu9kI/pFru75IGcYhylPmu6ACRhjwmEWB3DGAfmhEUU74ax5O2FX3Qlpz3Y1+u18f/YPuiX+YjcXtcXfR+LdcH0AJML+JZgwxjkxAVaXTRKi/1IMXhqTDqWxDliOCMHS0ueJSvhFo2g2goHBg2IfhzpBIqaC4bamm8hTUOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rN1wXlVaJddMNCexDimHEMjc2fOfIicPnQkUuLbxGSk=;
 b=yYODeD4KirJSC0ovXV5IXUL+pcn2L1p5tRyBkcG4AImKvjg18C6v7Y52jM7VHmwCsxrH6T3vefw3mvj2qdl7pKWA+/UniTGOqut/latKRkPooh3UmScREri6P8JOLGmVeAPYlJegsvIahQfzYuLq/bcwe0IaMEzCmChUr4agIQdyKV7ukdMaRSRUtj+dUPrmv+tzPYBkAD+qozHMjRqAfIGrHqFUhtYxMD76wWqD2BsY01raz2Ckyi/Tnscxj9QUZ9DXJpd7zt43F15/bufvLY8u8AJ6fePoQ4ZeCBvBmvFVdZrf3XvdpymAPAyMtftxT/hLoAhHp8d2pv7HlFDDKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CH3PR11MB7795.namprd11.prod.outlook.com (2603:10b6:610:120::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Wed, 31 Dec
 2025 11:54:27 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%4]) with mapi id 15.20.9478.004; Wed, 31 Dec 2025
 11:54:27 +0000
Message-ID: <5f2fab48-06b8-4bc2-ac59-041f85bbe2ff@intel.com>
Date: Wed, 31 Dec 2025 17:24:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/cdclk: Incorporate Xe3_LPD changes for CD2X
 divider
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251222-xe3_lpd-no-cd2x-divider-v1-1-96f1e112baaa@intel.com>
Content-Language: en-US
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20251222-xe3_lpd-no-cd2x-divider-v1-1-96f1e112baaa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0190.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::10) To IA1PR11MB6266.namprd11.prod.outlook.com
 (2603:10b6:208:3e6::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB6266:EE_|CH3PR11MB7795:EE_
X-MS-Office365-Filtering-Correlation-Id: fbb5f5dd-3d75-451f-1ea5-08de4863591c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MWd2aGJkYmtCK2N5WStEd2J0Q1B6K2Q3cjlXQkdBS2ZySGxJTWdLeVpqMThn?=
 =?utf-8?B?eC8yNXlVbGZHTW93R0Z6dzJRUk9jc2tod1N2TTBhbVcrVlhSdCs0NmVpM1Js?=
 =?utf-8?B?ZHltRmVZcnhwQU1hc1pkS1p5MmQzelp0ekpNUFdwTmd2N3VLOHpoZXZzQjg5?=
 =?utf-8?B?VXJ2ME1UQ3VtUWs1VG9MRW9qZkVJMWhTMkFWb21HNzBlMkJhRnRxMk9EWUNt?=
 =?utf-8?B?ZDR6aGx3SitObmJERDZpMDVaYmpORTdxbEtqcTFkbnpjN3U2VjVuaDlnUEV3?=
 =?utf-8?B?RXdGamkzSkhrRW8rVDZsOGtuOHlZVWJpRDdTblRZSU9KYkxHYmRrcE9HUEJR?=
 =?utf-8?B?ekhhUHdKaUs4UmR4L3h5UnlPdkFVQ28yQ1BLSGJLMVRTRHpZdWVVQk44TFlh?=
 =?utf-8?B?V294dktBeWo1TTdPSGF5STFZV0VRdFVOTlFldVNUc1hjZEQrU1loSnhSSXBm?=
 =?utf-8?B?MmI4emFGRFp2bEkvMnVjUnZ3aGkxWGM4UjhMbktENzJLT2tZb2s4bHdicVUx?=
 =?utf-8?B?Sm5FNDdFR2I1ME04YU9kN0tMNkZqMStrdDZQTStiS2N0dHRISmRhM2RqdGlp?=
 =?utf-8?B?WHRzS21MeTNBYWphaEp3TmhlQ3N1MUthNTNDQWlRcE92b3JxdHk0NFc2dTF3?=
 =?utf-8?B?YlE3b003S3Q2Mlk2OWpFaVBsL0E4Sk1GRXFiNVJUOXp0aVdQR2pLdVI0Ympk?=
 =?utf-8?B?dThVTFl4MkFUck9uWUFZOFRaakhQK1B1V2EveXFLMmtMOUtSQzdXRTdRQXhX?=
 =?utf-8?B?RlBKOUlWVGlRc25BekxSR05TSGNnTTlJSE1PVHRVaTVoN3lJdXdxUW0vOHdO?=
 =?utf-8?B?NGprOWpza212M0IvekFiMFpkT0JZMXBVSUpwMldhNEcxNUlodm0rZlN6c2xs?=
 =?utf-8?B?TTc3WFE2Y0p2VVJjaDV3NkxiN0ZrRTcxYWhhbHZKcjFoWjBESUM4QTgyb09O?=
 =?utf-8?B?OS9jejN2SCtUQjBVRlFSclNwdmxWS09FRURQcklYb0RuZVUzWDRjb1NEaGNY?=
 =?utf-8?B?NTdOZkRCVXQ5bExncEs1V0FrSU5KRjUvSXp0MWY1WlppNHl6cjl2akc5VXha?=
 =?utf-8?B?N1NxSFZSQlg0Q2VzaWhlbjNBYU5mR1RRaU10Ui9ZazNzaS9MNXR3ZnNqZ3dv?=
 =?utf-8?B?RlVIbERFSjhYWUg2SFA5Qi9NNm9XanlzeXZJQ1U5MmM5TkRwZnFJMTkvelpz?=
 =?utf-8?B?dlNIWWNsL3dOTEFBZkd4WldOaGNRWHJDTGtYTGg0eGlkT2tVekJoRjhSNFh4?=
 =?utf-8?B?ZTNSSldQTklkVGlKZ2ZmbGZkQWY0MUNHdmdGRDJaVXg1anpFRkQyYTNyNXhJ?=
 =?utf-8?B?ZmN4K1hNSVFGekVqRjN5MWVxMzY4WjN0KzlaZDc1MGZrYmFaS0NOUjY5ZUlQ?=
 =?utf-8?B?VXBDQ3JIQVRYNTU0eXk2ZFlwU29ULzVYRUlFNGpGZ1VDWWUzTE91TGJsR3VD?=
 =?utf-8?B?VGloc3JRenNveERLZGMyVTF5cU1WRmpabGtUd2dvdzY0YzVEVGhzb1ZIdmYw?=
 =?utf-8?B?ekIxMGZmZHJ5M1phRWpaZUFJZ1BNRFo4Y29QYnVSTjR4L1NqMUo1RlYzc2hD?=
 =?utf-8?B?OUhWT0pJVGhydHJkYko0MThqNWFGdS9SaFVtM0NOVkVjbE5PY29QeFU5NHl3?=
 =?utf-8?B?dHJsUkQ4NzgxcjI0WTZzaCtUTWhrT3ZKeXB3bDYwbHVBdTdIYTJ1VEZXVC9a?=
 =?utf-8?B?amFaaFU2MGhzNWtSMVFWeFdmK2s0RmxWc1R6dWpSQVY0VERMNEtBeDJGa2pl?=
 =?utf-8?B?cThGKzlIcU5WTEdZa2NLV0pIdTgvbS9nalVXdkowR2xjNGE4Qm53WlBPdTQ0?=
 =?utf-8?B?bnc4TkRTdHkxYkNzVVJvK0RBa1kwaEhHNGl0NENRSUYxYTRWTXJTb2ZBeWhp?=
 =?utf-8?B?STRKa1JoRWorQlpIZ2RiL1Raa1ZLUlZRRjFCeGpKQzR5TGRwQW9uVDNaaHNk?=
 =?utf-8?Q?slVd4cbkIkXye5qqKmMWFdxbOuev3EFq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkVFUld6MXlJNTZocjFhcHJGZzR4REZoTWNqNnB3Z1BneVNyaUFXdlM0dDU0?=
 =?utf-8?B?dlh6TllvckR4SmhmTms1MDB2TDZDWCtLY2Y5MWxFdVRqS1pnR0lnUWRmb1Jw?=
 =?utf-8?B?cmFlc2hlaGl6SDNlL2l5NnpyQVB3U25yQzBhL3Z1cUR6TnJiM2ozM3A2cW5L?=
 =?utf-8?B?YzJFcFljbk5jWjcwdFFCbE4veUJidVkxRVkrVEp2WTBob0Y3aXVycnZxNG51?=
 =?utf-8?B?OS9mR1cxY1N1b0JPYktBWVB4NktaV2lZcnhmRUFTQm1rbTF0bjBNOXVTc1ov?=
 =?utf-8?B?WDJEZWxFWHdaZUpuREdiYzNxd3Rob1B4SGVnRGQxN2tSSVNIU2paTkl2TWk5?=
 =?utf-8?B?ekZuRzBTU3R3UDNUYlR2eUc0MnFTeGY4ekpxVmh1bU9LbkxsRlJWaUdDWG9w?=
 =?utf-8?B?djNueVprRmV0SUZSaitmSzVHV0o0bkJNOXZObVNBSzZYZXB1SVFBbExLbDFJ?=
 =?utf-8?B?cTBOUDVsd1c2ZllOL21SNGhwV0dSdlZIcGkzOEZkK0R5aFBWK1BkaVBRVTN5?=
 =?utf-8?B?TFYxRUc4Ym5zeUI5SFI2a1ZnakdqcTRrSDdPRGNnV29pbmVhQ1lVOWxuSGs5?=
 =?utf-8?B?Wkp4ZXMyRDNzMWpPeXh2anNWcWF4U3ZHM3R4dStFeXZ6N0cvSTROa2FDbVAr?=
 =?utf-8?B?ZUNuTVdKbFBxdkpqTzdFMHNYU1ZDdjZwUk96MWtCSVNmbDdRQnJ4U0pFVVN1?=
 =?utf-8?B?TkVvcVZWT0pFT1hVd2t6N1ZnbXdiWUkzbU52dnJ1RTQ2dFJ5cU04Vy9ka0dX?=
 =?utf-8?B?ZSs5ckduYi9DK09Md2w1cFpsc1p2YndHYkZ5enZqTnl2VlZVRnhaL1hxWnY3?=
 =?utf-8?B?bXh6Sm9uSWoxSyt4M2M4UFZjMGVhS05RYnMzVHd4Y3k2VTEzNXBwL0ovQVJx?=
 =?utf-8?B?L2h6NjdSekM0TkV4QXhxU25HZVNEcUFtc3JSTUFFMWIzdnRtV2ZIWXdoSWhI?=
 =?utf-8?B?SmE4NFdhSFNLbThoZTZDZzdQOXBvRHZwdkZjZ2ttYVgxbHNTNkpmVzQ3ZTNk?=
 =?utf-8?B?S2l1a3VqYTd0dE1vbXpsbzZwOTcrd3JsUU9tR09pUmNCY2p2VGllaFRLenNR?=
 =?utf-8?B?dXI4eFZvbTc1ZlVXa2x3a1NvZUw2YS9taU92ZWNnTVZEWldXd1RGbU9rc25z?=
 =?utf-8?B?WGIzZkMrWkphdjVKOTczSitiWWZuTFJIazZlSUhvVmNIdjlHcU1xazhvWHRX?=
 =?utf-8?B?eGdMTnZ0dWhvYWIzalE4VlZIRjZPMGcxK0ZYRHE2VTN6SU81TzJNcjk4N29U?=
 =?utf-8?B?UHVDMTVYMERPVGdRWGdkOFNXZVdRSEZtK1RrK3pWekY5Sk5TbzJlQW56RTBR?=
 =?utf-8?B?azk0VFQySGFzdHI1MGpyS2NxV2NzYkN6d0VKRHVlTU1JTS9oblZFVzFDb1Ru?=
 =?utf-8?B?S0RLN3JBam1ka0FwdnM2WGRLUlRLTWFwSFU1Rm9uZWN5Wng0bTB6V2o1OW1q?=
 =?utf-8?B?NWw0NDZySHFIWm1pSzRseXZwemQrNm0zZXp5ZXpWU0tuYWthNldVMVE1VVBN?=
 =?utf-8?B?Nm5Oa014WnZKaGNKS3VMdkR3SWx1aWY4UjlSZ0pDMEk4bGN4MVVOSnQwUm9j?=
 =?utf-8?B?Z1lzNk9ZcHY4aGRiK3Y0dkZlSmFodUJxK3RWKzdjd3JtaldKb0x5WEkxdEJo?=
 =?utf-8?B?M3V0SUJvdkFEZ2t0L1g2eEhNdTlLMVFsQmZqa2pKTERHUnZvQUE5N2pUOHdq?=
 =?utf-8?B?YzRiMXg1bTg1YS9GNzU2cUtJYjcrYzR5S3lEaVh6eXl0YTdNNTc4OVlqZGdy?=
 =?utf-8?B?ZlIxeGpRb0hSTUwwVHhPcC9PQk9zL2VDWEpmOUMrV2oyL05LR242akU0U0hZ?=
 =?utf-8?B?RFd3ajArUG1ZQU1nbkhzdTMrdXVybnZoRlFXeXp5aUdhdUFDa2JqRGwvQzYz?=
 =?utf-8?B?MU9xQXMxdzM0YVc0ZG9RekxLWkhYQUg4YlBSbVAvRlZqQUJVV0QyaVJnc3dh?=
 =?utf-8?B?Sm1ramsvWXdPbk1yQUlLZ3ZOL0F4THI0Y0JMSDBhM21WMGdWT0ZaUGNHNGdQ?=
 =?utf-8?B?Ym1FRUFlUmlSZ2V0WDRBNkp5UytvMVVlWHgvSkN5YzIzMXNKanBhM3ZnbHpJ?=
 =?utf-8?B?WEpWeldodDlmQnVKVExBNkt4djlLNlBWRHo2SzhjSUhjVitOc3EzTkczRUpS?=
 =?utf-8?B?UzlORlJuWXdnelhSUTBQN04rR01nektHMHY5ekR0RXdmYW11cElTbVk0Yllq?=
 =?utf-8?B?SVBsQlJ4eU9PQTB5QlVMN1BSZVdwZHdVc21KNjZiWVV5V044MjRpOGREZlQ1?=
 =?utf-8?B?N3FqdzJLV05IbkVTTThwaVhEY0lGZlhZQjkwbGtoZElHUFN5QXdYZXAvWGZX?=
 =?utf-8?B?NkovcUNHTVBUeWd2R0FRM0laNnh3RmVHZnF3V0swRmRlNFd6OE9aMUxpM29r?=
 =?utf-8?Q?iEcMkAdGLYUNMLEE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbb5f5dd-3d75-451f-1ea5-08de4863591c
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2025 11:54:27.0600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KAg7VQYnV0jQA81sJYpaukTnpVkfWQyChQs+2t8QnSvfjWSAxMnAg1ruJyvU2XGcVqB4Akmd9lLvrgZUDrzxurQF3p4JPu0N80g4caUkEZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7795
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



On 23-Dec-25 3:43 AM, Gustavo Sousa wrote:
> On Xe3_LPD, there is no instruction to program the CD2X divider anymore
> and the hardware is expected to always use the default value of 0b00,
> meaning "divide by 1".
> 
> With that, the CDCLK_CTL register was changed so that:
> 
>    (1) The field "CD2X Divider Select" became a debug-only field.
>        Because we are programming CDCLK_CTL with a direct write instead
>        of read-modify-write operation, we still need to program "CD2X
>        Divider Select" in order to keep the field from deviating from its
>        default value.  Let's, however, throw a warning if we encounter a
>        CDCLK value that would result in an unexpected value for that
>        field.
> 
>    (2) The field "CD2X Pipe Select" has been removed. In fact, some
>        debugging in a PTL machine showed that such field comes back as
>        zero after writing a non-zero value to it.  As such, do not
>        program it starting with Xe3_LPD.
> 
> Bspec: 68864, 69090
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cdclk.c | 27 ++++++++++++++++++++++-----
>   1 file changed, 22 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0aa59d624095..684b8437951b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1933,6 +1933,8 @@ static u32 bxt_cdclk_cd2x_pipe(struct intel_display *display, enum pipe pipe)
>   static u32 bxt_cdclk_cd2x_div_sel(struct intel_display *display,
>   				  int cdclk, int vco, u16 waveform)
>   {
> +	u32 ret;
> +
>   	/* cdclk = vco / 2 / div{1,1.5,2,4} */
>   	switch (cdclk_divider(cdclk, vco, waveform)) {
>   	default:
> @@ -1941,14 +1943,27 @@ static u32 bxt_cdclk_cd2x_div_sel(struct intel_display *display,
>   		drm_WARN_ON(display->drm, vco != 0);
>   		fallthrough;
>   	case 2:
> -		return BXT_CDCLK_CD2X_DIV_SEL_1;
> +		ret = BXT_CDCLK_CD2X_DIV_SEL_1;
> +		break;
>   	case 3:
> -		return BXT_CDCLK_CD2X_DIV_SEL_1_5;
> +		ret = BXT_CDCLK_CD2X_DIV_SEL_1_5;
> +		break;
>   	case 4:
> -		return BXT_CDCLK_CD2X_DIV_SEL_2;
> +		ret = BXT_CDCLK_CD2X_DIV_SEL_2;
> +		break;
>   	case 8:
> -		return BXT_CDCLK_CD2X_DIV_SEL_4;
> +		ret = BXT_CDCLK_CD2X_DIV_SEL_4;
> +		break;
>   	}
> +
> +	/*
> +	 * On Xe3_LPD onward, the expectation is to always have
> +	 * BXT_CDCLK_CD2X_DIV_SEL_1 as the default.
> +	 */
> +	if (DISPLAY_VER(display) >= 30)
> +		drm_WARN_ON(display->drm, ret != BXT_CDCLK_CD2X_DIV_SEL_1);
> +
> +	return ret;
>   }
>   
>   static u16 cdclk_squash_waveform(struct intel_display *display,
> @@ -2136,7 +2151,9 @@ static u32 bxt_cdclk_ctl(struct intel_display *display,
>   
>   	waveform = cdclk_squash_waveform(display, cdclk);
>   
> -	val = bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform) |
> +	val = bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform);
> +
> +	if (DISPLAY_VER(display) < 30)
>   		bxt_cdclk_cd2x_pipe(display, pipe);
Hey Gustavo,
Please update this line, function’s return value should be ORed with val.

i.e.	val |= bxt_cdclk_cd2x_pipe(display, pipe);

BR,
Dnyaneshwar
>   
>   	/*
> 
> ---
> base-commit: f2a0e58c77845e1a5cb6c549dc02b2670042e588
> change-id: 20251222-xe3_lpd-no-cd2x-divider-48f9f0972f98
> 
> Best regards,
> --
> Gustavo Sousa <gustavo.sousa@intel.com>
> 

