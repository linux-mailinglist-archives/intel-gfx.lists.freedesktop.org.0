Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 659AFB0788B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 16:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F28DE10E7C0;
	Wed, 16 Jul 2025 14:49:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bMVxg9Jy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BEAA10E7C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 14:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752677388; x=1784213388;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=zrenGBjjzhedN8RfVcqnKhS8+0/KTQBtqFOE088QKnA=;
 b=bMVxg9JymsqHevtRUZLJH7+pu2Yj6t+w6a9c3OYsuuMuyfnMICq05pd4
 AMT+/GG1JP88+LGFq+xOpqUJ6+pqkbre8Ro90CHNVTuPZgWT3hR5ulHCb
 o3l6KKJBuDefl6sFfErUMTg3AtRF5CgH0RbRa+omyfwoxY3DqyYRGesPa
 qTxaoddVI1ZqxbtdM09XXIIQaNBzu6LPXZ7gp29AzEfJvU65FI7AwZiPT
 xuKQOMATqiD3vlTX2XkW0c9RKor0Rfh7h7vHogFJHWxvsVrNifiMkN782
 UUbwWTPGsMY1Byz9Ik3qT3KF3yMaucas21CcisnrBv3sdVZyk8Po4Nwkq g==;
X-CSE-ConnectionGUID: 2/Jjz6hSQHSdNrOZdh4GVg==
X-CSE-MsgGUID: xUV8rsqgTCSRg2nAglhkuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="58594494"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="58594494"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:49:48 -0700
X-CSE-ConnectionGUID: XGENrbviT+OwkNTA11Tajw==
X-CSE-MsgGUID: M1/7dly6R02AS5zzo5+uqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="158246467"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:49:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:49:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 07:49:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.89)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:49:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FsKQXQA4GPjRFjMNxBZDShK4Pxvx4kfY0V19CVDwpDEsNd8+KHVyckzl8xG973GbXjxxzCcNpdo8FzDw5csBcMCPvtKMi21fBVDSWvntLzfMkLVGGUhxbZqpb6XnRkOrNLyrTVAIzYfZ3i4PT6rHH0bV5DnbhpFT1BBC8rbxok8R8ptZEv6Wl3HJfg24MwJfDzsfde42lCjNJlr23662eEUNb1oJClTMlhP6DPejaSSym6kbOzR20DpOzGWyeatNUx2qh0f+EHK1mKiR0ttRiKni3Sn7+yDgq8HJ9xfmf6YJ17+jaUjaglE8fqLk6P1HcxIrDykkJ/xWpUw2DQ2Fnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zrenGBjjzhedN8RfVcqnKhS8+0/KTQBtqFOE088QKnA=;
 b=xEzxNJ0eDIxOP2XkNN15OJsZJxh439XJVwJuztAxheP2rqIy5rD4gaY9cO4B3lLj77AyKI2UwJ4fu0G3WYakvKvD97ci9BjfCn+bwYaBzwOOaP/yEZjlxt1DsoxqATE4S9gd2g870bh/DriAA7My0vt0ZWYrpiPSxGSeXO/O9YNC3ACtcBjgeTVcw58/5vRKp4YOhW3jbS8cTk7SqyH/14tA2/NC5oymhZgKeHNEJDplWWBnFS7cFoFPg+qR6G9DPpTRoirCoRjkZljCIfxDZhIyrdbtD+iHbIgdQsl8CKHXBUHcBIIp77oVw1trf9SJdCYO+d19lt60prqEoyD37Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ1PR11MB6202.namprd11.prod.outlook.com (2603:10b6:a03:45b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Wed, 16 Jul
 2025 14:49:02 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 14:49:02 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 16 Jul 2025 14:48:57 +0000
Message-ID: <DBDK9HG0OXXK.2DSQXJBU7J5T9@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>
Subject: Re: [PATCH 2/3] drm/i915: Add braces around the else block in
 clflush_write32()
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-3-sebastian.brzezinka@intel.com>
 <wmqxtg4cwswtqphgczopp755ivbohcsrzt6nmxkf4e5bc7lwm4@wgayizzneypo>
In-Reply-To: <wmqxtg4cwswtqphgczopp755ivbohcsrzt6nmxkf4e5bc7lwm4@wgayizzneypo>
X-ClientProxiedBy: WA2P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::20) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ1PR11MB6202:EE_
X-MS-Office365-Filtering-Correlation-Id: cf3a1c94-788a-438d-60ae-08ddc477e76b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXBlTSsrRDU5SHRIQ3k2UlRIOWtBQ25jT0huMjh6MmlTa3AzZmI4eFVmMytJ?=
 =?utf-8?B?NG9zNjByT29HMzF6a3JzZXRNMEdLR0dDSFc4Z0NBWGQvOUlRK0NNc01KR3Q0?=
 =?utf-8?B?bnRadXFOemZQR0Q5MmdDTmVTb0hpMnMxU3dINVU3emprMzR4cGVaUEkwSVhq?=
 =?utf-8?B?R3JhcGxkaFhBMmNRTEVHR2xtc1lDLy9tcDJLUjZYU2hxK0ZYdTBtdEU0dm1L?=
 =?utf-8?B?TEh6dTBodGxjNWViei93Vi9xWS9NUXcxeUsrdmZUVTNUNGpjci9jQXQxc1c5?=
 =?utf-8?B?ZWR1R2RSOXNDUjhhK1h6TzNYWUJXRVovNElaMGNBck1qMjRDbFZJRjdRZVpv?=
 =?utf-8?B?cnExSjlVYkZseXQ2QW0wVjJaY0FjZ0JBZ2ZBNHJLbEs1TmdUSVZDZjloYWhT?=
 =?utf-8?B?dVFlMmllQ1hQZkFKNER4ZDZNOWdDYVhxdHhHbWFjYU92UGhHMGRUVllaTDU4?=
 =?utf-8?B?VDloekg3Uld1cUZMS0xtN2tVeWtHNGprLzk2N3h3Tk9TZmtxSkUzSFpYWFZO?=
 =?utf-8?B?ejZuMXI4aTZXN3JxL2wyNmZaV2RUclQ0L0RxdldkUzZsbFNDWWpqL2laMS95?=
 =?utf-8?B?QjFTM2Q3cWh5MThhWUhveWc4Q1R0dHhIQkdmd1BzM2VUQm1hczhVc1NKOGVs?=
 =?utf-8?B?NUNlV3pMQ2VKYm5vMnZuclg1Y3FTeHJsRjE2V05GWGRObGpySWpTM1RIMlZq?=
 =?utf-8?B?V2x1TjAvVnhST2dwdi94bjJma2l6SG12UHNRKzZ0dVo0WlYzYXhrOVRlTFZV?=
 =?utf-8?B?dG9VL2N0V3dyOXpFNDJnTEt5Y2JMSGx5YzNyOHF1K3p2SERiT2VwYnk0TG9k?=
 =?utf-8?B?VmpwVG9RSDFhbWF2OEJuZ0ZVYTZvM29WQU9iY21aM1ZBTDJDNVF4Rjh1MXNt?=
 =?utf-8?B?ejNPY2tKRDJyWDNJRElRSis3Z3FFNUFnRTY3NXhYeWEwSi9MUTVrb01RK0xE?=
 =?utf-8?B?TDBSMWZPeGtYQlo3ejNxQ1UyT0hvSUE3MkNwZ3VyS0gwTWdIVHBNWUpCeUhQ?=
 =?utf-8?B?MkJVSGpxTDlZSFpTRWhBYnR4TEFXUEJVOGVkUWlLRk5rcGg1aWFDQTIwWWpm?=
 =?utf-8?B?a1VCZmZKZnJwUERGTlRoQnYxdDBIOGFyWnEwVkJ0aXpFY2NTTk1BdGhYb2RV?=
 =?utf-8?B?OTFuTW1Td0Y4WW9jQXM3K2lZK3lsUEcydS91bnhtVmNaeGVqM1NLcGJvblRP?=
 =?utf-8?B?YXNSRk1pWHBVaUxDdU92MFQ1alBidExDb1h2bTVhL1JLWEtZbEt2VFIxSFY3?=
 =?utf-8?B?UXVRSVdYZ1drTW9tejZ0ZmRabDFMYWhqSTh2eUpuVUY4QVViRTU1d2FBd3BD?=
 =?utf-8?B?ZGFmaEowbXBaRldTZU91N1huNW9YUkhVbFpJVUdPQUt1c0FKRVFnWDhYQkly?=
 =?utf-8?B?R0g0Y1JiZUpuSlF1RjgweEw2NU9pMXdkblBPUHhxalg0bmllMzl1ZThDYXBE?=
 =?utf-8?B?Rkpsc2pRdUcrdTBwdEVGMTh6M1NXZ1lvZDRiaGlvUXBmaHFwNW9DVEFCcG0r?=
 =?utf-8?B?UTQyTzlwUzVTaTJuUyt3VnJFYWc1RG1iTUNMT3BXL2NYd092WFRKOUF5Z0dW?=
 =?utf-8?B?YnJnNDFJVy91RFpBeUtJT25UNjBSMU5OeGc4SFoxWWxGK3V4Ujh2UVJjSjVh?=
 =?utf-8?B?T1Biam01WUlnMUpNaW56VmNxNEpDeUt4S2NybUJDR0UvckRoL2xueE1YamZN?=
 =?utf-8?B?bWtEUk10RCswSTBNZlI3TWRBaVExSzVFN1ZPWVFWQWgzTUZjSDZ1bjZ4NFRH?=
 =?utf-8?B?aFA0SjVSVXNBaFpXRWg2ZzRudHRIT3dZTWdVeFdHZFMzWGF4eFQzUzNFMXAr?=
 =?utf-8?B?elBzd1ZJVFlyc2JZemg1amJZY2ZIOGdlT1EvUTQ3Vmd1Z0xRbkxVWnB4V0lT?=
 =?utf-8?B?MzdmQ2lub2hieENaQ1B6NDhWWHlJMmRPTE9GamxIWlRwVHBhQ2t6R0JmV2hw?=
 =?utf-8?Q?3ogFFLeolW0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnJkSFpGeE9UejJic1RySEpzT3g0dTk5ZWlkaklja3BDbGxRMktaZ3F6Qmxu?=
 =?utf-8?B?RUMyT1pGM1IwWnpPK1VwSVh1SFBZSThsZnRyWHNTY0pRWFBaZHdTejFLQnYw?=
 =?utf-8?B?Y1RQNDAxbWp5TmNyUE9EWmdKZGdiQzFJT0hIcnBxRkNqelFiTkF4UExMSE8w?=
 =?utf-8?B?cjhrS0ZkZS9EUW9zdTRnUENLcHM5QzgrQlN2SXdCVk5LSHhRcTI2dDE1VDRI?=
 =?utf-8?B?SE1peXBNVlA5K3hRRVhuYk82M3d3VzNYc0xTQmcxek5BcFhXM3RRMys2SGVM?=
 =?utf-8?B?Q05nWTlzUTJDTTVLeUNJeks5bGpRWDJrT0FZTWNFQmRsMXhPUVp5RWx3ZmtW?=
 =?utf-8?B?c1NVSVZ5OEV4MDBSSkpNdWdMZDF0RVpsRmJHS3RvRHkxWTBkcWNEMVFhWERr?=
 =?utf-8?B?aFlHdTIyK2sreFl4M2RMMTdvOS81U21sM2ljRjFFVUROMkp6RW5aRlB3aW0z?=
 =?utf-8?B?K29SYm96QitYNzN0YmxNL0VzSGJ2dmo4bHhqL1MyQkV1S094RTdpZzR6OCtn?=
 =?utf-8?B?QzVuTXZBS3B0ZXpoSUEzdVI0clJUSUlhNXNoRUVXMlFidEZXQTcvMXR1aFow?=
 =?utf-8?B?cWxrSElhWXNxKzRjcjc4UnJHcHJQdXVzbzJUVU05SWFxL09iTWxscUluQ3VW?=
 =?utf-8?B?MUFIOTN0M2lTZS9NNVh2OE9hQysyejlScHc2MDhxSWNPQU42dm4wcXR2TGN1?=
 =?utf-8?B?NERMRGZVeGpod2NRMFV5cjdSTXlvT052NjFnN21NUDUvQ3pRMXZUS1M1WU5U?=
 =?utf-8?B?SGNIN0ZHMzZRSURYenVRU0tlMXNwVnUrMUQvUTNpbTlyTUV0ZUxVaVRUV2RL?=
 =?utf-8?B?cVE2eUk5Rm5GZ3FSamgvcHJCcmo2Z2QwUTRnYlhIc2RvK3F0WWphRVhnQ0NG?=
 =?utf-8?B?cDB4Q09xeFlzWkIvT21wT3ZYR3NQZS8xRDBUMkhqa1laM0YrRmExSXFZR3Y2?=
 =?utf-8?B?WWpMb1RoT3lTZkI1Z1ZOREJXNWt2MGpjNlZHKzE2dnJQejg0czlyaTVHRVVL?=
 =?utf-8?B?cnZQWmRjRGd1L1RQNS92SVNaUjN0WlNpdTZKUlJnaGJMRG5Da29hbFJQWnI2?=
 =?utf-8?B?NitKeFBTd29hNlBkUUNnUjJFMWxoOUhiRmY0MzBzYzdFTFVZcjFBTk1vNmtI?=
 =?utf-8?B?b1RhL2p5U0Z4Tld4d3A1cjBTNkdBRjJKM3pGZmoyMjdiZXVNd0hXUXlYY2FY?=
 =?utf-8?B?TllsbzhKNHRGV0FvNkZnQWdSU3BZWS9GbC9hbkFUTkcxbU40TXNwc0VSZnUz?=
 =?utf-8?B?N1pGM1lHS1U2SS81bzhFVkpEQnE0NjFXWXVMUnZjeHRQZ01BQTBoSlpwZ0lz?=
 =?utf-8?B?aVAyZzRQa1QzOExjcEJ5cVg5NzMxN3JkNFhBMmFMN2t5dTROdE1ONDdUTTFE?=
 =?utf-8?B?Z2EzTUhHeHZXdFpwTXJOUWlSc29GWW9QZndJN0JYS2xBd0pqcUE2azlKd1Zx?=
 =?utf-8?B?RnhYOEFPRWl0V0RpY0xKSzRGd1lFWTkyeU1hMlBOMjkxQnFxYXllc3JoRFJ0?=
 =?utf-8?B?K1ZLdkIxUERyamJoanVld0YyRDNxZHdDUkpweW9XcVRWQUw3MWdEY2hkNDdp?=
 =?utf-8?B?TXExbiszYVBHOXRuYVRFTmdhTVhuL2grY2NIYWllc2lDSURFbXRmZDdwTGZP?=
 =?utf-8?B?OWRBNlFLVFg0dUlTQ2xSR0FGNkNTZ2lRME5jbnBrNnZBZHNHL2Njdms0RmZW?=
 =?utf-8?B?c3dKbkkvQlN2ZjBCaTFvTnc3Y01WS043ejBScTFsaHIrM1VrOW5rR0RNK2dZ?=
 =?utf-8?B?OFNpWVpWbURId1F4SWh4Q3NDL2xNdzdoNzNWRm4vKzFDVWJZQ3NlRStrNXU0?=
 =?utf-8?B?czZad3NNTFN6KzJTNzJpeVJWSGl0cFE1Mms4NGpDSjFzV0gyZEVES0hiWDZa?=
 =?utf-8?B?cG9XMlJYOENKelBoeWdkeFkxSXh6ZDh5YWhOc1kyWWNGWnQwTXhtS2pHWWcw?=
 =?utf-8?B?YjZrWFB4UHJxZUxHbVBTTnhOZURycTRJRlFxSG8rNGRHWjJoL3YwR2tJUWU1?=
 =?utf-8?B?aGV3dEJqbVdEc09sV3gxbjVZM0x4dHFud3V4SGNBanhrN0VzUTMwQ2t3Mm5N?=
 =?utf-8?B?aXFxSmsvNmVmZHhWSXh6MnQyemVoSFZzNlJVMCs0bFBxSzhEQmx3eTZqSkhL?=
 =?utf-8?B?ejdIYnRyTm9iTnFFS1dJa21hSzl3QkU1NmVhMm94aDRTVmlNRG95dHh2T1Ju?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf3a1c94-788a-438d-60ae-08ddc477e76b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 14:49:02.1933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SIX5IAB+Q51yAlk3RDvkehhNh4JwMQNhYQkXmcUBgn8WBEmfzZ4Wr5Po6Or9kd/dAe7jp9mnxJVeD6Mc/svRGqViId+gnFdCZHqeBvt/QcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6202
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

Hi Andi

On Wed Jul 16, 2025 at 1:51 PM UTC, Andi Shyti wrote:
> On Wed, Jul 16, 2025 at 09:37:18AM +0000, Sebastian Brzezinka wrote:
>
> You could write a few words here in the description to avoid
> complaints.
>
> No need to resend, just send me the description you want and i
> will add it before applying. This patch is already good to go.

Somehow I didn=E2=80=99t cache it locally, sorry for that. Can we go with:

"According to the kernel coding style, if only one branch of a
conditional statement is a single statement, braces should
still be used in both branches."

--=20
Best regards,
Sebastian

