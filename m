Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97875B14A8D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 10:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887A989954;
	Tue, 29 Jul 2025 08:58:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AV7v+vVE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D61BD89954;
 Tue, 29 Jul 2025 08:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753779519; x=1785315519;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PnKrjs4bKEBbIf+c4P1LgEQfctqALavwDG7XCo1d9Y4=;
 b=AV7v+vVE2C7up+bWc5pwVyryinFbBEMhuugsjQg1VqyjncNMif2q9Yvr
 Mwc96kD5MFA5UjrVyXsboOsoNuPZ6/vVtN6bsDhGruut4pxBRN/xxIQlK
 aL9HBBjOwkUGwLa3xMkukd7abLY+3EvnEmetLR1/9GsPNqRMSZRt2TD1p
 7zZuEGaQb/Y1LcFjnMClgisyAMG2s4Uts0zHbzZsBrLo2/oC+rq8sEKys
 LYX0hSZVUeZ/Rx4JxyqY7bjpzuooTEX5xv9VW3GI6Qm8c/xtjY1GIKthy
 Ale2rousd+jL6zegmgIB7BgQLXTu81xVUKunWhno4yLS9gzIhJgqF3Pu2 A==;
X-CSE-ConnectionGUID: rNazRlhfSiuWI4hYodbFbA==
X-CSE-MsgGUID: gn3JkNMqQ/iX5Vs9XHZmUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="66313275"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="66313275"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 01:58:39 -0700
X-CSE-ConnectionGUID: +V7jGfLxTfq+Trn+fQ5PQQ==
X-CSE-MsgGUID: 5tMuyqoUTtuqUaIyaR2/GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="186300248"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 01:58:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 01:58:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 01:58:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.48)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 01:58:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rSWOHiY2/4wJRyYrDdOOT3ZtX2ZYiTBc+CBp82a0t8v6c0mjSNtgyN/HWNCAifLdOb2SjVuq8u6xEHqPeE0Pw/bc1Wu0onR6z83Yvl707bLRe9c9q/3bl6smQF+Y8pyYAb5llLpsEGE2GzhQc/3Bw9mefhCiBliALf7Lrpplt+Uxrr/7JUUtGKP7WnheX6Bf3BON/Jp8OCFe7G/TE3i8DujuXk0YasVMaiqtLRNMSuZldbnVlRzdNVx8UCqvyNfkEWzReH7lDsEcHMsQZ25VmWxEHaoYJswTiypDTalx/GAoCrJBdEC1sVwDxVJQjfdwXq2ZvaeY9qykY8aYHv3z4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D8fx3U3IaIYsarvKnLUPB+Brj3MVuq/csJykXdqCSRY=;
 b=YfZYtUz4uvRz9ob7dMV3f2oWgRE0jG0QE7LWNprj/W0hYGaS8a6XS24ZteL+9JdEcaYyX1r662cDyguecASqzjayZPTijFZz2wgLvlT1X6sHsFsnXwJxBSf4t4HuMUPXq3NsIRILTKpoFrid6JQHa/0Bpba+51Owl/S4XP8IfgHlLbeGVkMQyxaIj5CXfhSG10goVvfyw0ZomgzqHKy511SyRpgYkv/6/uvAbs8LdH/qXtaSteSQMqXi6TvcoCY/xB+LPLmOQN4m0KW+kZtDsyef+PtGSXrD/ku/FPG/j/w19NsUQtUspc+xv5Iaoa9wmD1RfYXj3uazIRDsHUdG8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MN2PR11MB4551.namprd11.prod.outlook.com (2603:10b6:208:269::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Tue, 29 Jul
 2025 08:58:30 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 08:58:29 +0000
Message-ID: <5902b8f0-970f-479c-b665-3a55a41f3915@intel.com>
Date: Tue, 29 Jul 2025 14:28:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250708)
Content-Language: en-GB
To: Damien Le Moal <dlemoal@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <linux-ide@vger.kernel.org>, <mika.westerberg@intel.com>,
 <anshuman.gupta@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 <lucas.demarchi@intel.com>
References: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
 <f4f147cd-5847-4efd-8dd3-9a00e129e133@kernel.org>
 <8f37fcfd-300c-42df-a65b-57c10f185287@intel.com>
 <d47b06b4-d2e6-4c0a-8721-5df15aa46378@kernel.org>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <d47b06b4-d2e6-4c0a-8721-5df15aa46378@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0013.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::11) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|MN2PR11MB4551:EE_
X-MS-Office365-Filtering-Correlation-Id: 2391d6dc-91f5-48bb-f5a6-08ddce7e160a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dkFsQjI3aXlDaU1zQm1aSWtPcW9XTDBVd3cyVWc0MnBPYzBxYjBjZ1grYTR1?=
 =?utf-8?B?YVMyclMyWjNjNWZlZDJYdGVJcDVSY0ZBMGMwRENaZjFwWnZyenpUYTVsMlV3?=
 =?utf-8?B?VWxFdzBYZlRkbndNMEZ3eXVHUS9MbkY4TGFxWmRKSHdzaGowWEVzcFNCTWZn?=
 =?utf-8?B?bkN1Kzc0T21INFZ5L2hXMktBWSt1NWNMYWxaMit3dnpoaGZRQ245dzgrZXpM?=
 =?utf-8?B?anl5d2dIZ2grVFBCd2thN2ozZTlxQWJ0dEl6Q05sQVhRMVVhRTI5d3R1d1Fa?=
 =?utf-8?B?bGNERjZ1K1V4S2laTUR6eHZwN3l5WE1Zd0laV2xWZng3M21rOUxlenJMdFNY?=
 =?utf-8?B?TUhYcWI1aWZ4dnV5Skhua3gveVhWZjN3bnRyeW84M3NRclhRdEhZRXQ0SEk2?=
 =?utf-8?B?aktYS2VDWS93Wlp5K0IzTjZPdDB3K3VJRHI4dkMxYnVoaU0rZEtiQ3VBR2VJ?=
 =?utf-8?B?aXg4all0UzBIOTVKaUFMY1FtU3oxYTR5dXRKc2RuVFlmbmpWV1RvdEJESjlu?=
 =?utf-8?B?YTVxR3dHNWtBVCtjdjhCdWx4YTNJcTFqMVdISkt1aG50eDJTZlJMc3k4Z0p1?=
 =?utf-8?B?bVcyaUxMQzlHYkZoaWRNZG9FYVprSktGbmpoaE9sc2lBUGczSnh5ejBaejVt?=
 =?utf-8?B?eXJvVWxMajhGMzRPQm1qT3RVYXdnSXVZdWw3WjVNWkVCU2Jma0JHU2kyZEh2?=
 =?utf-8?B?UEVBT2kwZ3ZGTXhKb0V1OWhGLzkwR0FrZ2hTOXpyaEg3WEdnZnhqUmMxa3pU?=
 =?utf-8?B?aFVuOUR5cHlySHRRb20zd2FhdGNNSFRPQXlGR1ZnMmdmbTBTazhHK0ljZ1RU?=
 =?utf-8?B?VUswYUxWVyt1V3JaMUpFZHQrRmN1azRnODZBVDUyMG1IdVFOMVpVOUk4Y1Iv?=
 =?utf-8?B?MUJjYzBsdWVJU1ZsS2FZZjg1aWw3UVh5OTEySmdvekF6dGFPQ2RkUnJOQjZx?=
 =?utf-8?B?TFAyUHRXUThBRXR2eWtrUU1tNVdJNVFFM3JSSk9RMnh0a3FaUXkvb29KalV5?=
 =?utf-8?B?d1hoVlZrYmV6YkY2WCtvVXluNU55ZzJQRWdFdEpqcGpHZFNkLytoYlNiOHor?=
 =?utf-8?B?YTRhaTY0bVFiZTVYRUxIWDBJTitXV1laRDFyMGNjelZWcm1tTXY3N0lsOTU5?=
 =?utf-8?B?VDZ3M2wzMWlkdi9URVZVS3lLQkNhSTBINUc5NlZ4dkRTM3FxOWFOREUrY0NO?=
 =?utf-8?B?ZkNiNE9GYlEwSzhCbFVxdnJ5TEt5aFlmeFd5M2ZUQWkvd2sxMXFRNGFaemw3?=
 =?utf-8?B?ZTlKdmZEcjZOanhIRC9xUC9MNmtnSEdkSGp0c3FQR2hUVmdXUWxQRDZpTWxh?=
 =?utf-8?B?SWhHMmZIMW1RM25KZUk4Tis4bU10S1VpZVB3VlpmY1NudTMvcnU4NEJVekVV?=
 =?utf-8?B?MFZKeVFFZ2pJRTdmcVY3dzV0Q2hXUVQwb3JIdjRxOWxVS2FSQ0F4RFhqMTFK?=
 =?utf-8?B?S1hsakF1MkIxOHB0MXZkZjZPQm1sdHhqRVBtVnVEb3o1TkVjSDc4NHBFVEJB?=
 =?utf-8?B?MU80V0s0S0VqN1U4TmdGRFcxNmtzL3BHZVJpTVk5QmNxT2ZIeUhVN2RDaGl2?=
 =?utf-8?B?L1l3Zk1BTVhyR1pGNHFRMW4zamNRSUNsRndsWStqbTRBSTVDODdXVGozOVRU?=
 =?utf-8?B?NTM2WUg1UnJva2FTYWp3ZDkreFRleTl2RlJvK083U0FrSThuNEgxTTNVclpu?=
 =?utf-8?B?RWh5REh0WE1JbzVveTlsZ3YwOXNNVGRQN3dLWjBzS1FZQXVTRGVIMkJ2alZ6?=
 =?utf-8?B?eXZyelc2a25HUVJOS3RXZFdmYzF1OWp6bXZ0Mlk3RU9tdXMyVGtCcW5kdmJI?=
 =?utf-8?B?bkttZERCdmJINHI5b0pBM2x5Y3F3V1lFbGVPazkyYzN6bXY1U0k1NW9MZEg5?=
 =?utf-8?B?c1ZMbktkWWdIc1VQcTVKV0xOb2NET1I2cjM3K1ZPTmNyc3RNMmFzUERPZjVr?=
 =?utf-8?Q?ThdkrLLwxP8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXVKU1FNS2d6UjFHR08wWWFzWEFwWWN2NjhTMWpoYlFpU3M2R1B6eHlscVhp?=
 =?utf-8?B?Wld0Y0o3V0g5b1kwWFFUZ2UyNDdMdlBsUGN4T0twN1YrZDltQzZEWG9vNnNK?=
 =?utf-8?B?b1hpL0tyWWEyQWJYeFdEeE0yMWU1U1RhdWlRWkFQbHBIMHFweXNGUzhWZkF3?=
 =?utf-8?B?emsyNE12ZGZreGJXSExqY1Q3ZmxFWFRBQ05lTnJONnFPdUdmOGpIV3l4Y1BU?=
 =?utf-8?B?YUpBWkVERzNhbGd2dmJkb1UzR1kxL1orWnVXOEZjSDdIeW9VQ0ljMWd0R2xO?=
 =?utf-8?B?ZG8rVHJoNzdhN2RPdk9udzllOU5rdnVJK3hjUkVjeURpYVhiRXBsMUsxbEt2?=
 =?utf-8?B?aWxrdG0xV2FUaWN0bDJmSWVNdkFIbkxNeWV1QTcyVnZjNXNOVGloa2JEWDE0?=
 =?utf-8?B?T09CaVNtUTB5ano4VTdOUFR2S042Y3lmdzJpT1lBelVVNUpacnprVUw2cVRY?=
 =?utf-8?B?dWw1S1cwZjBUQm5hVEFrSlUxektnMktvOVA2b0tXVDBVdHFKNkVJL1NXQ0dw?=
 =?utf-8?B?TkhYVXhIc1dGekhOSmZGaURReUdhL3h1WVU5dDNQQmp1WjhUZHdjYXRnTHpn?=
 =?utf-8?B?MUFpQ1VYNzZwOXkvQ3pkT1B0SXpVSW13Z3ZWVTdaWU9WWG5xQ05lK0hSMjE3?=
 =?utf-8?B?VnRLOTVpVlNYYTJ3b1Z0aEtxZXZ1RnlZU3oweGE5MDUyTWxRWXFnUkxZVXFo?=
 =?utf-8?B?Yk1ZeitkK09Nc2gxaVg4OUNBVWZFcXRJWHZJR3I4b1RLOTJWdy9xVGJ0YVVs?=
 =?utf-8?B?RTdKc2NxUC9qdWJFanZyeHY0dmw1cEl4aDJzTzVJMHRGUmQwUy9Yb2NKU05Q?=
 =?utf-8?B?cW5LbmZDRlhZcktRU0NRbHZhVWQrQ1RrYTB5MktnL1RmampCakxyZ09FRDA1?=
 =?utf-8?B?c1YweTIzVjM2ejVjOWZwUnMzdHUwdGQrRUovdWxORFlyOUpHNjhEMVZhbitV?=
 =?utf-8?B?NVBtblRINkhZcWxHUk4yQ0J2RlRpd2VuS0VFQUloTXI1MjRvdGtTbkpseFZy?=
 =?utf-8?B?V2ZraUxYbWJPbXdMamxlUnY2Q29ORDNhT3JxWU1Sd1BDZUZYOEc0VUpsRjlH?=
 =?utf-8?B?S0V0RTVWSFZyRk1qSmgzODdja3pWNFJaaUdvZVZGZDhUMWsyVUQvR2toQTdH?=
 =?utf-8?B?d3dqdFZRSm0ydG5XQ2NjRnRtVDgza3NHbndYdVczbEl5MS92eFRGVENDVVFk?=
 =?utf-8?B?VEVMOC9qNDhrYWlYdGFZTFVqV1ljTk45aGFUVXZHQkdiSWdGU3FGNWd0Tm1s?=
 =?utf-8?B?TWRlSEkwQmkva0dVSUJOYjBFWTR3RlgyYUFaKzRKK1dRWnZhcTcvai9Mdjl3?=
 =?utf-8?B?UVJnNG5BT1czREdWRzhWcmhyK1hWdm9POWxhNEN1Yy9yTXlJeHdKVGFmRDhI?=
 =?utf-8?B?MlRwSHU2emN0aC9ieEU0c3A1cFErVm9GaDJwMjhiMzYzT1lOcWtJWXNhRjVx?=
 =?utf-8?B?dTNqcnM4RzJ5blJlME92VFMzNG5wNWplOWhORHZaMzdJbzUzOE9jRlR6eGJi?=
 =?utf-8?B?UG55MmIvKzc2aURqczB1cEpYa2tlbkpnRGNKbmxzRkZ2MTdyNEY0Y093UDYz?=
 =?utf-8?B?NzIzN2h6TFRhVitCaEx3RU5xOElobGZSc2NaRFk4VHhNcTlHeXVENWRZSldo?=
 =?utf-8?B?WUsrL2FIbnBoMk95S2t6TExJK212SC93TFFRUTVlSitQYVpqWTc2OTFZTmVJ?=
 =?utf-8?B?RklzbjhDZmM0cktEQkpMblowNXAwTEZRK0dzNUFnem0yLzVMTlBnZlFMa1B0?=
 =?utf-8?B?VXVqN3AzMEhkVGdQS052anJ0WmpCdm5mU1V2VW5XY0dMRGRxazMxVnpZWjdM?=
 =?utf-8?B?OUErVHpqTDZ3VEwyM2FsUzAxVDZaakFjTFF5K3p2djJzVi9GRFpPMzM2VGVj?=
 =?utf-8?B?V293MmN0NXFoRlk4M2toUmVoNDFZRElicDNzTFNNT0dMOVJBbHcybFUvNVVh?=
 =?utf-8?B?OFJCazl0eHRmK3JpemMzVTJ1bFpERXhKeFFnb2lhQmNLbXRZWU5uY0xHejdU?=
 =?utf-8?B?NlhhQVFXaTdqbUY0QW9kWGdFRlpNYnF4b3JWc2JCdjVHM2FMSklxU2FQMnMx?=
 =?utf-8?B?OHBzR1J5Sys2SDdSMWxRSzM4SUwyNG9ZQ0V6QmRkOG5pZkhoZk5XUW4wRXV2?=
 =?utf-8?B?UzdnVWpZRCtCMlZQQkZVcUZrWmVFTy9xUzRxOWtxVUVJbEI2c1c4b0hBZFl0?=
 =?utf-8?Q?womEVCSLevXHc4kl+XFj5iw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2391d6dc-91f5-48bb-f5a6-08ddce7e160a
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 08:58:29.0454 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /h2NBCUgWj3PExJcfeA0x97sLPs0Qk3I2yEbclPKFXZcu4GWfKleGeCSvxc8CDL5a1KWdHTT7s0OLGqCshPeRJs7FdStIg05+S3TYmxcx34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4551
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



On 7/29/2025 4:00 AM, Damien Le Moal wrote:
> On 7/29/25 01:33, Borah, Chaitanya Kumar wrote:
>>
>>
>> On 7/28/2025 11:01 AM, Damien Le Moal wrote:
>>> On 7/25/25 3:43 PM, Borah, Chaitanya Kumar wrote:
>>>> For some context in our kms_pm_rpm tests, we enable min_power policy for SATA
>>>> so that we can reach deep runtime power states and restore the original policy
>>>> after finishing. [5][6]
>>>>
>>>> IIUC, the above change is based on spec and not something which can be
>>>> reverted. So as I see it, we have to drop this code path for external ports.
>>>> However I am not sure if we can achieve deep power states without enforcing it
>>>> through the sysfs entry.
>>>>
>>>> Atleast for the basic-rte subtest, the test passes if we comment out the
>>>> functions controlling the SATA ports. We will need more testing to determine if
>>>> this approach work. Any thoughts on it?
>>>>
>>>> Also, are there other ways to detect a port is external other than receiving
>>>> EOPNOTSUPP on the sysfs write?
>>>
>>> I completely forgot to mention one important thing: please check your test
>>> machine BIOS settings and see if you have "hotplug support" set to enable for
>>> SATA ports. If it is, set that BIOS setting to disable and you will see the
>>> SATA port as a regular one, not as an external port. So LPM support will be
>>> back and your test program will not need changes.
>>>
>>> Not all BIOSes have such setting though. Most of the machine I have do have it
>>> though and I checked that it does affect how the ahci driver sees the port
>>> (external or regular with LPM).
>>>
>>>
>>
>> Found a "Hot Plug" setting (thanks to Mika!) in our testing device's
>> BIOS but it does not seem to have any effect.
>>
>> We also have an option called "External", toggling that did not help either.
>>
>> There is another configuration which was *readonly*.
>>
>> "Configured as eSATA" -> "Hot Plug supported"
>>
>> Not sure if it is relevant to our discussion.
> 
> It is and that probably is the reason why disabling hotplug does nothing on the
> port external characteristic. Does this machine really have eSata ports ? Do
> they correspond to the 4 ports (out of 8) that you see as external
> (link_power_management_supported = 0 ports) ?
> 

I can see the BIOS setting available for all 8 ports.

> Likely, you have the SXS host capability set for this machine because of this
> BIOS setup. From the AHCI specifications:
> 
> Supports External SATA (SXS): When set to ‘1’, indicates that the HBA has one or
> more Serial ATA ports that has a signal only connector that is externally
> accessible (e.g. eSATA connector).
> 
> Hotplug is reported as a separate bit, but handled in the same way as an
> external port as we cannot (easily) support LPM if we want to preserve the
> hotplug capability (LPM changes the PHY state constantly, which clashes with hot
> plug/unplug PHY changes and is hard to differentiate).
> 
> Note that you can see if a port is external in dmesg. Look for:
> 
> ata4: SATA max UDMA/133 abar m524288@0xaa500000 port 0xaa500280 irq 112 lpm-pol
> 1 ext
> 
> A regular port will not have the "ext" at the end:
> 
> ata5: SATA max UDMA/133 abar m524288@0xaa500000 port 0xaa500300 irq 112 lpm-pol 1

Thanks for the hint. I see the following logs with our default BIOS 
configuration.

[    6.125670] ata1: DUMMY
[    6.125673] ata2: DUMMY
[    6.125676] ata3: DUMMY
[    6.125678] ata4: DUMMY
[    6.125683] ata5: SATA max UDMA/133 abar m2048@0xb8263000 port 
0xb8263300 irq 128 lpm-pol 4
[    6.125693] ata6: SATA max UDMA/133 abar m2048@0xb8263000 port 
0xb8263380 irq 128 lpm-pol 4
[    6.125702] ata7: SATA max UDMA/133 abar m2048@0xb8263000 port 
0xb8263400 irq 128 lpm-pol 4
[    6.125711] ata8: SATA max UDMA/133 abar m2048@0xb8263000 port 
0xb8263480 irq 128 lpm-pol 4

Enabling the "External" option in BIOS has impact on the "non-DUMMY" 
ports but has no affect on the DUMMY ones.

After enabling the External option on port 1 and 7, the dmesg becomes.

[    6.366145] ata1: DUMMY
[    6.366148] ata2: DUMMY
[    6.366151] ata3: DUMMY
[    6.366153] ata4: DUMMY
[    6.366160] ata5: SATA max UDMA/133 abar m2048@0xb8263000 port 
0xb8263300 irq 128 lpm-pol 4
[    6.366168] ata6: SATA max UDMA/133 abar m2048@0xb8263000 port 
0xb8263380 irq 128 lpm-pol 4
[    6.366174] ata7: SATA max UDMA/133 abar m2048@0xb8263000 port 
0xb8263400 irq 128 lpm-pol 1 ext
[    6.366182] ata8: SATA max UDMA/133 abar m2048@0xb8263000 port 
0xb8263480 irq 128 lpm-pol 4

Also enabling "External" hides the "Configured as eSATA" option.

-Chaitanya






