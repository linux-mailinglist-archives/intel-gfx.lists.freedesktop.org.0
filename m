Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BECBC3895
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 09:05:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F7A10E760;
	Wed,  8 Oct 2025 07:05:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VkDq9LD0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C773210E0B6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759907154; x=1791443154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wPqzj6DGagydXhvqOoEEY+mbWj+f5W5X8hDnc9v81Z8=;
 b=VkDq9LD0p37fe7LhO3DkWcKoJkQJyYNoT7a00kQ2v26o4U4oyis/NnhQ
 NDv3Ph4z5JvBiF/VoQovUb1ZBR0fwRscd0OrkBuupgk3FuHan7YTdXLCo
 mb4DBBLFBIufziVkCgzAABPSfFmnPLyWRoTmW4u6bwX+gMJ6uGEbdHhKr
 yW1KagV1Qdutj195aI+3vI0s3rC+pTLT6gCLxfrc6hyejnik0AeUNnBQt
 n+vM1rsRlUeevlssjKfhlnFr2eBGt0VILV2xbMLla7O+SkH13aE6/lnXm
 femAuJTAp2exxT9zasalJ/umO1JxOaorAqz/J5lDKxdglQP2oYVbnCGmd g==;
X-CSE-ConnectionGUID: +td27vr0QTibZXk+YsdjSA==
X-CSE-MsgGUID: i2jFBjuyTqi3xCBUJU/vVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="72707443"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="72707443"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 00:05:54 -0700
X-CSE-ConnectionGUID: ge4MvF6aQUK4JdOUSm2qfQ==
X-CSE-MsgGUID: 7mlXZ1YbQIOaFJ7646/Fbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="181133655"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 00:05:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 00:05:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 00:05:52 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.65)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 00:05:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u4yv8RL7//xnn4ADtNJlpj8Mrw13Px9DOJEE4SGsdWe5fp9Cea60BYDf/RR850eyMp+UQEWiMEekA+QP6ojTpw3pPszNQi1EHKdyG4sDbunagNFi+mSDPkcLYPsk1fgF08DhYLoeocjzZ66SLGNDp9UgXyW3+zq8kFiXFlozjTYfo6/rGgt0JmdwgS7dI1fLfntO7sIlZsEH/OlvcHkE9qNpmeC6IfeOjPTqw+7ZS6QgYAhaDdZnE51+wzviIXjOL+dbwue49WbJEIO+AOJGnpNrpTPEejYp/uvfft800BWSEz2cpvpjXiIJmDp0s9XUdvz3dG8/nXYFyx+yrPN6Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wPqzj6DGagydXhvqOoEEY+mbWj+f5W5X8hDnc9v81Z8=;
 b=zEQZvXOfTN8ZXY9LmpkoXfUOCCAX7sW5u1/FKzkNeSUZ5pllmIWSk9XkbNJbAW/9SLw5FpnZKHWswj26vFPzoi2uFzBprQ5EoqMIqpmfoLAhPq0k0t7QFvlaFk/QPbbiTt5gfl6c4OGvYgCMEM1H7IjmPuK6U3TNVw/9c3SoXjwK2HFgGMdJdfq3Jo2cRlQEYRkeJ1SC5siy5B+GhHO004zDcfqRR1Ou5vDbLktmM3faefKS0dcmSqdkfxF9DNSv9s9h6DapMzIfb5mw8Jl6XzYhj+OAPVk8s/SRPgccQXmGsY4JTnF2FavIopy3RKZkNXR9o0oiDBtC2x/yE6qLQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by DS7PR11MB5967.namprd11.prod.outlook.com (2603:10b6:8:72::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 07:05:49 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420%6]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 07:05:49 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: Pingfan Liu <piliu@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo, 
 Alex" <alex.zuo@intel.com>, "Lin, Shuicheng" <shuicheng.lin@intel.com>,
 Askar
 Safin <safinaskar@gmail.com>, Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Topic: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Index: AQHcN8iMlqXLmHFdTUuiKqVlWShhm7S3tkGAgAAYlsA=
Date: Wed, 8 Oct 2025 07:05:49 +0000
Message-ID: <PH8PR11MB8040EDBECAC02A4638DB4F39F4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com>
 <CAF+s44SVMWnCRGvtYCPHdSEORoRVwUNNH2JVva-FnXbdgUOevw@mail.gmail.com>
In-Reply-To: <CAF+s44SVMWnCRGvtYCPHdSEORoRVwUNNH2JVva-FnXbdgUOevw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|DS7PR11MB5967:EE_
x-ms-office365-filtering-correlation-id: 9797de1c-3726-4a25-f57b-08de06391c7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|42112799006|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Y0FQdUFZbVN6QytIbDloeDN2dTZUa1JHYVNpUXE3UVkxZTJHTzJwcWlQK1Ny?=
 =?utf-8?B?R0tycmdXcmhrZ09WQWp0S1o4S3kyVTFtOWFDNzJsbTlvdEI5NjY0WmJwZFVH?=
 =?utf-8?B?anZORDB5aHdSbWtKYXpmakVtem9aR2huQXUyRkkzWEhjODJZYXlGbVh5amlZ?=
 =?utf-8?B?b0VuTFRUR09PcnloSzk4MzgyRFczV05yZUhkbXNpK2RWN1hERDlDUGhyUm1P?=
 =?utf-8?B?UXFWdXFlT3dPSmp0Q0hLTkdWa2ZkMFlqZnhnMzBobkMydFRJV3M0Y3RMTkZO?=
 =?utf-8?B?aDI1bFVvTXpGYkU3T2ViR0txZXZxYnR2QnFvOWNRL2g3bit5NEVLOG9TWlZy?=
 =?utf-8?B?L0JuVTIxL1EzcGlwcFFuRUhBSG8vYU9xdG9mM0dLU1NpTFA5S0FSK2ZUUjRj?=
 =?utf-8?B?MVdiNDJtb29od01CUEF5bk9WSjczUkRCVnhveWZORnArbEZCRHZrdks3blI5?=
 =?utf-8?B?R3lEUENIaFZkVkVDbi91Z3ZPWnFwdG04bXZNTWdGS2VjS1NqU1NjbDJxVXc1?=
 =?utf-8?B?RnkrUGFXYzUvV2ptYWFGczA3UWFaV1dZVGJHY3Axd0RaSmt5K0ZuS2ZNck5K?=
 =?utf-8?B?YVcySUZySHhEd2VWVk9UdXowMkJPVEM5RTVNU3pZOCtSdHNlVmVqUUJkZ2lU?=
 =?utf-8?B?eTk4S1RORzlFemZmRnYvU3ZDdUlWSFprMDVtMmQrN0MwVFVXNDhEQjZwL3Yv?=
 =?utf-8?B?ZWJYTk1MN1RHMVhpc2duYTNvaGtvc0hKNjk0Sks5Y0c1eFVSRTdYOGdhL1hD?=
 =?utf-8?B?bWV3dlZDMXhGc1grMkdTS0ptZVErRy9hZVBaMmtNNGZjc2lQejhnU0xMbEM0?=
 =?utf-8?B?TTFuU1R2YTFVa3ZBbUYvYzc5YkZ5bGRKQWlvaGVsMUtmRU9ZQVduT0plckVX?=
 =?utf-8?B?WHhqWTd3LzU0YVpnTGxhK1ZUT25wYmNZeW1GRmdzeC81cWE2amE1d3pQK3RV?=
 =?utf-8?B?K2pYdENjVno4eTgxaEVCMm9uanZ2bzdXR0NEOElEL28yZGVQaW1NTDRTSXJi?=
 =?utf-8?B?d2NtRVM0aG9Jbk9XM05UaW9JQnltOHIwNitDcm40ZnpkQUdrOHBpNlUyRmh2?=
 =?utf-8?B?SlY4cFdKMzBVUllockQzUEtjd0NzN2k5a21ua3Bxb3A1Y045TzFBWWNJQXVP?=
 =?utf-8?B?c0xob2Y0Q05INlY4QmFNVlA1NjlTbTJWL2ZZbVBpMiswTzlDS0RXcGVJbk1l?=
 =?utf-8?B?VmJqVHhKcTBtdmRldFpVR0RZam1NTmZPZVJCbmxwSk5DQ2JzbWFwTjNGby9C?=
 =?utf-8?B?d1JkeTJtVU9xNlFQNk0vaXQ3QnAzQlp0YmRnb1h1QkFuanZXSk5qbGExWjUr?=
 =?utf-8?B?aTJyY2xRMU9peVB2MXREeE5TT254cGgrTFRCZEUyRzdPbFlGUjcxZHZKQTds?=
 =?utf-8?B?RlU5RUlpbmUyZUR5V2YrS25WVXhKZDQ5c25iSDdIbjc4SEJvUU9KTDNHNThN?=
 =?utf-8?B?cDlzWGptT0NmbEliMytOUjdCN0M0VnVJZlBsVWp4TThoMkRBZFpXRlQ0VndP?=
 =?utf-8?B?OFlCZkc1clowZ2xWZWtZSnVOejFsRE5OV3FiZHdUWTRNbjFFMCtQL0RSRGZw?=
 =?utf-8?B?K3pDVU9yZ01oazZwSHFLbk85TnJlV0RicUx2b2ZCc25DdXVwc0FlNm5yd1RP?=
 =?utf-8?B?YmM1MndYN0Q1aFZHYlhldWRCOXpxdzBNSzBhRnlNZ2t1Y3RYSzIxcXlqYU5j?=
 =?utf-8?B?N1NycUtyMDV5N1Y2VzRsaE13NXRHZWJabFFHcnpWZ2NyMkxweEFqbmNjN0Fq?=
 =?utf-8?B?dmhUT1pqYUhFOWUyaW9XVTVvTmEyazNUUVp5WmFzT1hRRnQ5aFJVM1N2bmJJ?=
 =?utf-8?B?THg2SU5oUXBJQm9oQUNQNFRYTkdMa2xBblhkZWpTU3o5TXJKd3hvTFJzM3dI?=
 =?utf-8?B?TDBiOUk0L01ydzM4QzRQMkNjd1FTallLbXVpb0xOeGR6LzRhMmQwakQ1bkcw?=
 =?utf-8?B?RHdNT2FOVVdWOWg1VXRseHVPOU1rd2dUL0VDaVJiQndWdFZtYkp1bGFyZktr?=
 =?utf-8?B?eFovTlJWZ0dnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(42112799006)(10070799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?LzRiZktMYW5LbFFpTmJzOFlhdTBZNG1OUy9ERXAzSWorYitpRVVHRWtBaXRt?=
 =?utf-8?B?SmNCNEcwQlV5VXJKVkJ4dWh5OVd0cmJjcjRVREZMRnFvZ1AzN3dEOUl5L0Jy?=
 =?utf-8?B?QkNGKzhHSHExMTEzU1cwY05iNTdFdW9pVWFmRldSdTZNNDdpWEhiTVpBanJO?=
 =?utf-8?B?Q29sbkFtVCtCcEZDenNDRU4vTXYzTXlCNTltNEFQRW5oV0dKWXpjNG1TaEFU?=
 =?utf-8?B?WUZ6UmhIVXp2bnh3eWxDdW1xK3FCT2tVWkI0Nzc2ZXdSdUFuaHB3VFlzNHdw?=
 =?utf-8?B?T2VSaXQ0SElIWHBCV1lHR1haOHNMdGRkVDhZSUFtdWpZcmZ0MUdWRG5ZT1Yz?=
 =?utf-8?B?VzNiUEZHOEZjMUsvVGl6Qm40RUFuUC9Xa2ZmdDJRampBWHlIYW80YnA4ZHFI?=
 =?utf-8?B?c0RUQUtEWnJaQk1UVHM5cWVrc1gzcXc2NGRxdEFtRDZsMytjV2gvNTkxT3ZO?=
 =?utf-8?B?c0RoenNnMFNTc0JqQkExV2tob1RyUDZnVjdrRFZpSnh3bi9pWmdyM2tNL0VX?=
 =?utf-8?B?RW11SGZ3MitNZ1p2MDdYellRRDNZamp1bTRPZW5zeG93Z2hSYkkzMFNYUnBD?=
 =?utf-8?B?a01iMXdDaDdiMTA1d0hWTFJjVSsvNGdHeWtrQy8ybk9zeko0ZTFiYm13L2FP?=
 =?utf-8?B?SGdDbXQ2VldPRkVmQlpOekxvVlo0b2pubVQ1eTJ1c3pxMFB5YTJWSzBhTjhU?=
 =?utf-8?B?QlR0R25va2lLLzFiaXpsRkwwTTNySUQ2SGxVTVhOeWJ4Mm1IaGJvbHo1TTh5?=
 =?utf-8?B?bmkrWDNzQlprNnNhT3dOYkp5RElQMlgxZEcwOTRUQkw3UWtHT2JwSXFER2N5?=
 =?utf-8?B?V1pIcmp5REl0U294RXZYV3c1YWNpV0FHTW9VbHBoNVhTL3ZGT2RKTytlMXd2?=
 =?utf-8?B?UW9qSkM1MlZJT3czUHZwM1dIUGVqcnZJMzgycGIzRFVzV2o0WExFTThmV2U3?=
 =?utf-8?B?OVhRRXlXRU9NMmNhcW9lWVVFc2k0QlJLemw4TldxL281eWY1K2ZQbkM4YUdw?=
 =?utf-8?B?dVZQemZNcWR3czNpbzJRTGVnamx1UXFoVkJzbVZQMlhBSGdSNFJXTDVBTkhY?=
 =?utf-8?B?QVdWbWxJT1ozeHppckY4MXUycEszOFg1YTlONU5LQ082VGoxNHVkRm14eENT?=
 =?utf-8?B?ZmxXMVpoSUlNbVRRRnlORWhTeEI5WC9Vb2tpRzNOcVJxSGd2N2VQL1oxaWww?=
 =?utf-8?B?dm9yZ3VURHNIbGYvVkxKZGdLWUsvMEZMUTZLbmJlNHA1YS9TZ1QzbmRzUlN3?=
 =?utf-8?B?Mi8zMlBadVNRd2xHRjFhSGNvZlVwWXphOFRTRWM1UlBVczBUUDJzNlJ0VzRr?=
 =?utf-8?B?dGRZaDh3Qk5vdXpDWkttQS9jMzdTbzB4TndKS3k5cWswVGI5bytCa3pVT29W?=
 =?utf-8?B?bU5Nd0J2STVmTlpZRUNsaytWcVJEWVlGT2J4TEZlZCtoUjgvR1gvVFFRSkx4?=
 =?utf-8?B?YW9STkFtRG9GUloySzNvYkk2bENEeGFsbHpzWnYyaGhVMkw3Z3YrVk5CY0VJ?=
 =?utf-8?B?S1JUZXNIUDBYQVkvamZoQ1BrSHg1R1NUR1B4NWpoRE1JS05Hc1BJT2NUTWdt?=
 =?utf-8?B?N0lKL25mRzlhRUFHejZZMXh0ZzlEUEJyOVpGK05wOHRQb1RIUUNqL0REYlZJ?=
 =?utf-8?B?OURISjlvNmhBOGJTVS83UjRiZjFvZ0RYQmdXMitYc0pFQVg5THdoQ1ZsdkZZ?=
 =?utf-8?B?RVJEaWdKenBqZmFjbC8xUzFxbWpGMlhUa00wVzdXdWJodnArWHp5cE1YU1ps?=
 =?utf-8?B?anQxbVhsZURVeVpvN0FMTnY2NXZJOEdNNjAzTkRYUzUvQkpwUWx0Rlptei9z?=
 =?utf-8?B?ZTk0SWlNWVY4QWJnbnBNVzhlOUdWb1NMSDdSVUsvYVJuN3dWZVZPeHAxWEZU?=
 =?utf-8?B?d0VET3dVOWlNWWNwM09pYnBaRVVQYTBDV2t5bmtVV2daTHpNM1VCZU1aMG9u?=
 =?utf-8?B?b2duaDBNakZiRnI3UVVPWUhMQWhqNzRhMm02Zk53RitYU0RZUkZqRFAyVW5N?=
 =?utf-8?B?YmpmU0RCbHEwaS81VEFYRDdTZWl3S2JSMTZqeWNRNWhRUXFqN1VVejdDQ2ll?=
 =?utf-8?B?WGt3TS9EYldoRFVQaVViV1FYRG1yWWJaSGxJck5JSE93a2ZvN2RHVENLeGNk?=
 =?utf-8?B?UjFJaVZRWEVhcko0Q1dhUC94NGNrdWpnYXVjTndOb05yVExkR3NWdEVUTWNz?=
 =?utf-8?Q?jCaN0ayV1oMxQtloCEfty18=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9797de1c-3726-4a25-f57b-08de06391c7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 07:05:49.3431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: la6EfjjAPcnDu/watE1ZwWQXipCXfoLBho4WKvS/hXCqDZ+ULvo+c/3VElKs+MkoBdcHHGVml02XeDmhco0hHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5967
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

SGkgUGluZ2ZhbiwNCg0KWW91J3JlIHdlbGNvbWUuICBJIGd1ZXNzIHlvdSBhcmUgcmVmZXJyaW5n
IHRvIHRoZSBmb2xsb3dpbmcgY29kZSwgDQoNCnN0YXRpYyB2b2lkIHBjaV9kZXZpY2Vfc2h1dGRv
d24oc3RydWN0IGRldmljZSAqZGV2KQ0Kew0KICAgIHN0cnVjdCBwY2lfZGV2ICpwY2lfZGV2ID0g
dG9fcGNpX2RldihkZXYpOw0KICAgIHN0cnVjdCBwY2lfZHJpdmVyICpkcnYgPSBwY2lfZGV2LT5k
cml2ZXI7DQoNCiAgICBwbV9ydW50aW1lX3Jlc3VtZShkZXYpOw0KDQogICAgaWYgKGRydiAmJiBk
cnYtPnNodXRkb3duKQ0KICAgICAgICBkcnYtPnNodXRkb3duKHBjaV9kZXYpOw0KDQogICAgLyoN
CiAgICAgKiBJZiB0aGlzIGlzIGEga2V4ZWMgcmVib290LCB0dXJuIG9mZiBCdXMgTWFzdGVyIGJp
dCBvbiB0aGUNCiAgICAgKiBkZXZpY2UgdG8gdGVsbCBpdCB0byBub3QgY29udGludWUgdG8gZG8g
RE1BLiBEb24ndCB0b3VjaA0KICAgICAqIGRldmljZXMgaW4gRDNjb2xkIG9yIHVua25vd24gc3Rh
dGVzLg0KICAgICAqIElmIGl0IGlzIG5vdCBhIGtleGVjIHJlYm9vdCwgZmlybXdhcmUgd2lsbCBo
aXQgdGhlIFBDSQ0KICAgICAqIGRldmljZXMgd2l0aCBiaWcgaGFtbWVyIGFuZCBzdG9wIHRoZWly
IERNQSBhbnkgd2F5Lg0KICAgICAqLw0KICAgIGlmIChrZXhlY19pbl9wcm9ncmVzcyAmJiAocGNp
X2Rldi0+Y3VycmVudF9zdGF0ZSA8PSBQQ0lfRDNob3QpKQ0KICAgICAgICBwY2lfY2xlYXJfbWFz
dGVyKHBjaV9kZXYpOw0KfQ0KDQpidXQgaXQganVzdCBkaXNhYmxlcyB0aGUgaTkxNSBkZXZpY2Ug
YXMgYSBETUEgbWFzdGVyLCAgIG5vdCBwcmV2ZW50IERNQSBhY2Nlc3MgdG8gaTkxNSBkZXZpY2Uu
IA0KDQpUaGFua3MsDQpKaWENCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFBp
bmdmYW4gTGl1IDxwaWxpdUByZWRoYXQuY29tPiANClNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgNywg
MjAyNSAxMDoxOCBQTQ0KVG86IFlhbywgSmlhIDxqaWEueWFvQGludGVsLmNvbT4NCkNjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBadW8sIEFsZXggPGFsZXguenVvQGludGVsLmNv
bT47IExpbiwgU2h1aWNoZW5nIDxzaHVpY2hlbmcubGluQGludGVsLmNvbT47IEFza2FyIFNhZmlu
IDxzYWZpbmFza2FyQGdtYWlsLmNvbT47IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGlu
dXguaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gZHJtL2k5MTU6IFNldHRpbmcv
Y2xlYXJpbmcgdGhlIG1lbW9yeSBhY2Nlc3MgYml0IHdoZW4gZW4vZGlzYWJsaW5nIGk5MTUNCg0K
SGkgSmlhLA0KDQpUaGFua3MgZm9yIHRoZSBwYXRjaCwgcGxlYXNlIHNlZSB0aGUgY29tbWVudHMg
YmVsb3cuDQoNCk9uIFdlZCwgT2N0IDgsIDIwMjUgYXQgNDoyNeKAr0FNIEppYSBZYW8gPGppYS55
YW9AaW50ZWwuY29tPiB3cm90ZToNCj4NCj4gTWFrZSBpOTE1J3MgUENJIGRldmljZSBtYW5hZ2Vt
ZW50IG1vcmUgcm9idXN0IGJ5IGFsd2F5cyANCj4gc2V0dGluZy9jbGVhcmluZyB0aGUgbWVtb3J5
IGFjY2VzcyBiaXQgd2hlbiBlbmFibGluZy9kaXNhYmxpbmcgdGhlIA0KPiBkZXZpY2UsIGFuZCBi
eSBjb25zb2xpZGF0aW5nIHRoaXMgbG9naWMgaW50byBoZWxwZXIgZnVuY3Rpb25zLg0KPg0KPiBJ
dCBmaXhlcyBrZXhlYyByZWJvb3QgaXNzdWUgYnkgZGlzYWJsaW5nIG1lbW9yeSBhY2Nlc3MgYmVm
b3JlIHNodXR0aW5nIA0KPiBkb3duIHRoZSBkZXZpY2UsIHdoaWNoIGNhbiBibG9jayB1bnNhZmUg
YW5kIHVud2FudGVkIGFjY2VzcyBmcm9tIERNQS4NCj4NCg0KUENJX0NPTU1BTkRfTUVNT1JZIGJs
b2NrcyB0aGUgYWNjZXNzIHRvIGk5MTUgUENJX0NPTU1BTkRfTUFTVEVSIGJsb2NrcyBpOTE1IGZy
b20gYWNjZXNzaW5nIHRoZSBzeXN0ZW0gbWVtb3J5Lg0KDQpJbiB0aGUgY2FzZSBvZiBrZXhlYy1y
ZWJvb3QsIEkgdGhpbmsgUENJX0NPTU1BTkRfTUFTVEVSIGhhcyBiZWVuIHNldCBvbiBhbGwgcGNp
IGRldmljZXMuIFNvIEkgY2FuIG5vdCBmaWd1cmUgb3V0IGhvdyBjbGVhcmluZyBQQ0lfQ09NTUFO
RF9NRU1PUlkgY2FuIGhlbHAgaW4gdGhpcyBjYXNlLg0KDQpDYW4geW91IGV4cGxhaW4gYSBsaXR0
bGUgYml0Pw0KDQpUaGFua3MsDQoNClBpbmdmYW4NCg0KPiB2MjoNCj4gICAtIGZvbGxvdyBicmFj
ZSBzdHlsZQ0KPg0KPiBMaW5rOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5
MTUva2VybmVsLy0vaXNzdWVzLzE0NTk4DQo+IENjOiBBbGV4IFp1byA8YWxleC56dW9AaW50ZWwu
Y29tPg0KPiBDYzogU2h1aWNoZW5nIExpbiA8c2h1aWNoZW5nLmxpbkBpbnRlbC5jb20+DQo+IENj
OiBBc2thciBTYWZpbiA8c2FmaW5hc2thckBnbWFpbC5jb20+DQo+IENjOiBQaW5nZmFuIExpdSA8
cGlsaXVAcmVkaGF0LmNvbT4NCj4gU3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzLnAu
d2lsc29uQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmlhIFlhbyA8amlhLnlh
b0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIu
YyB8IDM1IA0KPiArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyANCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RyaXZlci5jDQo+IGluZGV4IGI0NmNiNTRlZjVkYy4uNzY2Zjg1NzI2YjY3IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gQEAgLTExOCw2ICsxMTgsMzMg
QEANCj4NCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2RyaXZlciBpOTE1X2RybV9kcml2ZXI7
DQo+DQo+ICtzdGF0aWMgaW50IGk5MTVfZW5hYmxlX2RldmljZShzdHJ1Y3QgcGNpX2RldiAqcGRl
dikgew0KPiArICAgICAgIHUzMiBjbWQ7DQo+ICsgICAgICAgaW50IHJldDsNCj4gKw0KPiArICAg
ICAgIHJldCA9IHBjaV9lbmFibGVfZGV2aWNlKHBkZXYpOw0KPiArICAgICAgIGlmIChyZXQpDQo+
ICsgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiArDQo+ICsgICAgICAgcGNpX3JlYWRfY29u
ZmlnX2R3b3JkKHBkZXYsIFBDSV9DT01NQU5ELCAmY21kKTsNCj4gKyAgICAgICBpZiAoIShjbWQg
JiBQQ0lfQ09NTUFORF9NRU1PUlkpKQ0KPiArICAgICAgICAgICAgICAgcGNpX3dyaXRlX2NvbmZp
Z19kd29yZChwZGV2LCBQQ0lfQ09NTUFORCwgY21kIHwgDQo+ICsgUENJX0NPTU1BTkRfTUVNT1JZ
KTsNCj4gKw0KPiArICAgICAgIHJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBp
OTE1X2Rpc2FibGVfZGV2aWNlKHN0cnVjdCBwY2lfZGV2ICpwZGV2KSB7DQo+ICsgICAgICAgdTMy
IGNtZDsNCj4gKw0KPiArICAgICAgIHBjaV9yZWFkX2NvbmZpZ19kd29yZChwZGV2LCBQQ0lfQ09N
TUFORCwgJmNtZCk7DQo+ICsgICAgICAgaWYgKGNtZCAmIFBDSV9DT01NQU5EX01FTU9SWSkNCj4g
KyAgICAgICAgICAgICAgIHBjaV93cml0ZV9jb25maWdfZHdvcmQocGRldiwgUENJX0NPTU1BTkQs
IGNtZCAmIA0KPiArIH5QQ0lfQ09NTUFORF9NRU1PUlkpOw0KPiArDQo+ICsgICAgICAgcGNpX2Rp
c2FibGVfZGV2aWNlKHBkZXYpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgaW50IGk5MTVfd29ya3F1
ZXVlc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikgIHsNCj4gICAgICAg
ICAvKg0KPiBAQCAtNzg4LDcgKzgxNSw3IEBAIGludCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3Qg
cGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkNCj4gICAgICAg
ICBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheTsNCj4gICAgICAgICBpbnQgcmV0Ow0KPg0K
PiAtICAgICAgIHJldCA9IHBjaV9lbmFibGVfZGV2aWNlKHBkZXYpOw0KPiArICAgICAgIHJldCA9
IGk5MTVfZW5hYmxlX2RldmljZShwZGV2KTsNCj4gICAgICAgICBpZiAocmV0KSB7DQo+ICAgICAg
ICAgICAgICAgICBwcl9lcnIoIkZhaWxlZCB0byBlbmFibGUgZ3JhcGhpY3MgZGV2aWNlOiAlcGVc
biIsIEVSUl9QVFIocmV0KSk7DQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiBAQCAt
Nzk2LDcgKzgyMyw3IEBAIGludCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRl
diwgY29uc3QgDQo+IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpDQo+DQo+ICAgICAgICAgaTkx
NSA9IGk5MTVfZHJpdmVyX2NyZWF0ZShwZGV2LCBlbnQpOw0KPiAgICAgICAgIGlmIChJU19FUlIo
aTkxNSkpIHsNCj4gLSAgICAgICAgICAgICAgIHBjaV9kaXNhYmxlX2RldmljZShwZGV2KTsNCj4g
KyAgICAgICAgICAgICAgIGk5MTVfZGlzYWJsZV9kZXZpY2UocGRldik7DQo+ICAgICAgICAgICAg
ICAgICByZXR1cm4gUFRSX0VSUihpOTE1KTsNCj4gICAgICAgICB9DQo+DQo+IEBAIC04ODUsNyAr
OTEyLDcgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25z
dCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQ0KPiAgICAgICAgIGVuYWJsZV9ycG1fd2FrZXJl
Zl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsNCj4gICAgICAgICBpOTE1X2RyaXZlcl9sYXRl
X3JlbGVhc2UoaTkxNSk7DQo+ICBvdXRfcGNpX2Rpc2FibGU6DQo+IC0gICAgICAgcGNpX2Rpc2Fi
bGVfZGV2aWNlKHBkZXYpOw0KPiArICAgICAgIGk5MTVfZGlzYWJsZV9kZXZpY2UocGRldik7DQo+
ICAgICAgICAgaTkxNV9wcm9iZV9lcnJvcihpOTE1LCAiRGV2aWNlIGluaXRpYWxpemF0aW9uIGZh
aWxlZCAoJWQpXG4iLCByZXQpOw0KPiAgICAgICAgIHJldHVybiByZXQ7DQo+ICB9DQo+IEBAIC0x
MDAzLDYgKzEwMzAsNyBAQCB2b2lkIGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCANCj4gZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4NCj4gICAgICAgICBpbnRlbF9kbWNfc3VzcGVuZChkaXNw
bGF5KTsNCj4NCj4gKyAgICAgICBpbnRlbF9weHBfZmluaShpOTE1KTsNCj4gICAgICAgICBpOTE1
X2dlbV9zdXNwZW5kKGk5MTUpOw0KPg0KPiAgICAgICAgIC8qDQo+IEBAIC0xMDIwLDYgKzEwNDgs
NyBAQCB2b2lkIGk5MTVfZHJpdmVyX3NodXRkb3duKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQ0KPiAgICAgICAgIGVuYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZpOTE1LT5ydW50aW1l
X3BtKTsNCj4NCj4gICAgICAgICBpbnRlbF9ydW50aW1lX3BtX2RyaXZlcl9sYXN0X3JlbGVhc2Uo
Jmk5MTUtPnJ1bnRpbWVfcG0pOw0KPiArICAgICAgIGk5MTVfZGlzYWJsZV9kZXZpY2UodG9fcGNp
X2RldihpOTE1LT5kcm0uZGV2KSk7DQo+ICB9DQo+DQo+ICBzdGF0aWMgYm9vbCBzdXNwZW5kX3Rv
X2lkbGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAtLQ0KPiAyLjM0LjEN
Cj4NCg0K
