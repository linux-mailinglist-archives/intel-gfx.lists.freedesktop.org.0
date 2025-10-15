Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D60BDFEBD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675E210E8A5;
	Wed, 15 Oct 2025 17:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5qdfVEq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F3B10E8A5;
 Wed, 15 Oct 2025 17:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760550246; x=1792086246;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=GcfkCnYPRiVAqvGs2kZKvVtDz62I2G4lkBra5VREDbY=;
 b=M5qdfVEqp/5jNTPTOR23TSZJb1T9P6OQiiC9fsAJ59N6oC+CWyeFYVuq
 h+36DuDAQVyHyVN9L/G2pdYhA3OQ97pQSxHRQjAesW0Jl3/Lo7i3LLjy/
 dla5GaVzdWRSR5xO5YWiz2n/octK+y97XXRFwq5r7DFBG4wcYDIqTeafi
 L2qulmyTmcOmag3jpzuiqAqaGd8GpLq3iY1cbFBWtI3WFm5sV338XWpq6
 f9RnTa5TF7wcofDB8Nv1YfDHeHWVb071I0mkFLPRkyopQtxoqkh5CtSBG
 JI4q92PR1kAgdcH70BLOnYdvrKZjCbIYhtaDSziQc1h5OmE3KiV0JwOVT A==;
X-CSE-ConnectionGUID: 34Z8unRQQYaklAXavV68CA==
X-CSE-MsgGUID: JJ4ZJZOhT+2r8RP1gB6+Zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62634245"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62634245"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:44:05 -0700
X-CSE-ConnectionGUID: rCtP/74zQ1S8rF1LZyXCPw==
X-CSE-MsgGUID: 3njJhrBDS/y9MstIYsQhdA==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:44:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:44:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:44:04 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:44:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TQX5VeQ1d9UHCKC9o09ERatTkuIfbwjf3yXlP8GJiXYRkZHqfB8CcV2r1tzp+ulwtUf2x+9wVpfDYDfLOY8J/vHAgn1LfXd3UGStReKtHiHAnGmmtn7wlrx1445JDh650tyCUSWqvB4hRiE6M1OAUnNwFlCyCXiabxwQA9bTG49qXYPBIUx2hap3iBBmfHnR7XmfDW/+OvRVK0OHo8JpztSkFW873RtrU5kRhVlvgjEluKP9bstGD6lqQbgnXSbRdJnHvOlQ+w1Uyrxp69dB2Y6MKnIvVVbbvji9q0V3O2qdhUVzWwdKX9wLs+1gw9dUYQsxTqYTslG5N+qwb98HFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sgTrsd7o1GMFwzLJ1JaR0vfEWNdKfYRiJgAfb/+YzeQ=;
 b=mwplN3P/AyNiVLE1i01tw4t7rcVC7usK/GtjmTNJvOGmXDupgLUCCtUlqUsicMlhttvtHPT30dmRe2fV41dLR+kHSvpAeIHkMKSlar2bntCs5/Rj55gJ5XQ50/pfFGqNLiZgvy3yqp9PiUXPiBkadnUmaWOIZda3egRTfRzgdGQNpnYN+kzoS7fAzBSpDGDuINKBhMaxEwRNLX2YrUWTwTtyDxiHNa7PLlgqvjZ9INOm19s7lSvbjgevFRVJgOBmtrSSfewj6k6xX52VAAXNwBXnNXK+yQDWZUshn7srolnVER3Dzxk2PEkNkk3+a4sMyAv/g5fYBcMmTxOxbJ1LwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB6953.namprd11.prod.outlook.com (2603:10b6:510:204::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 17:44:02 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9228.012; Wed, 15 Oct 2025
 17:44:02 +0000
Date: Wed, 15 Oct 2025 12:43:57 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 "Matt Atwood" <matthew.s.atwood@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 01/32] drm/xe/nvl: Define NVL-S platform
Message-ID: <isoqquc3ueq446ts2pdo7t5dzphicucscxbs3vuaws5omgermk@6f4cchnlbqxd>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-1-d2d1e26520aa@intel.com>
 <51e1126c-bf71-4adb-9d22-071b5d02021b@intel.com>
 <1fe5d1ca-c9d7-465e-bf8d-981c525f6230@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1fe5d1ca-c9d7-465e-bf8d-981c525f6230@intel.com>
X-ClientProxiedBy: SJ0PR13CA0180.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::35) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB6953:EE_
X-MS-Office365-Filtering-Correlation-Id: a86b8dba-1666-4ed2-d29d-08de0c126d13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?cIQ79sdcHfnJV0fgXtbcUHiV4WOQnegYxCfP/8RPFZpdnonq0J3q5C8yNl?=
 =?iso-8859-1?Q?1Awx8W7sek/CTlyR/1plbtrNfNPx1h2p2d5Pkxk28l3dBAdVPAlY23SAkS?=
 =?iso-8859-1?Q?f8mnzvtM1lup/XNm+pDgKQlTYVQeUDxZ6xOCLCdgt0KI9nvRS0UN8ErSoX?=
 =?iso-8859-1?Q?w6g86mcWvRyasK4THTPd8rmuKuY75CLuBDRclot6SsjqPYzbcRoihZYFmu?=
 =?iso-8859-1?Q?SU5CVpIoEWAXCmmDBY/7Z8Hr8w5xOs1VzbrF5Q9x0+V2XV/AOgNLWTmpvp?=
 =?iso-8859-1?Q?MAS47w0w+s0F2+hBMTcxKzLawp1NJCW8HB2ihtEOCaumLu0ugTqVtnf05d?=
 =?iso-8859-1?Q?eY99hNkErJFsc/5S7dq8Zn0acHBZ1Ilaggw7Jx/9NjmAaCttXSNOpMgThy?=
 =?iso-8859-1?Q?tz74vfV1+sehgnubSx/e9iNY6oUz2P/I2fAk5gS5oZ033+ut8pMCJGUz4T?=
 =?iso-8859-1?Q?QJ17Rc5vTM1reo4g+Ub6FyUYEQeYXRNP928LP1WbYxXLZMmSJLfx+GkyUY?=
 =?iso-8859-1?Q?Svj2b3iDByvFaDHZlOSzd1x+dPV4wmRkGRRqnWkNmgfZLUJYg3l33gvmXU?=
 =?iso-8859-1?Q?7XYxYNzb6rmlNorhmFLNFuAGtdL7bIesUnlxjk8ZoRYZL4wVgMF5o9scZH?=
 =?iso-8859-1?Q?36h1sbZ6VB4pea+n36IVWzYGe/dYoUqITMHq+95mQZ/IBED852nKKpNY4R?=
 =?iso-8859-1?Q?pwPahIKpX8YPkA0KlI6MEskIxot4K0KWlHy0erqzOqNL3Stg2nHkLuOTYt?=
 =?iso-8859-1?Q?VtTT1ebhTZ+PD2O6kY0WyW6855mhSccUoQ6Prs07QiJm2j52xuGdTyuNEm?=
 =?iso-8859-1?Q?e4Ney5nFpHU1c0xIUwdNhd/iua6dCpNdSEjKiNTwbSl6D0aI1HK3pDkfEG?=
 =?iso-8859-1?Q?Tc7zPa7G7/7/vWX0/8K+zvpGffrVUWoBzgeWJcEtLBPQiKbYmM/Mqr6ulG?=
 =?iso-8859-1?Q?6PreGNc/tqzTlJyIWZmN/7eQcUYgmsstO1OHdH0aHImtRVEIjJxRYyMCoc?=
 =?iso-8859-1?Q?sjMzzAaoCgZP7wweHlLHUGzr3rvYIjkXzHoCkvGv2zujT/eA7WaWfhhim3?=
 =?iso-8859-1?Q?AyhdLg0qldBTdQLfOx9OwHCBjCJGMXWwfCxNfZe1/B5MeQCzKFGExhXMAn?=
 =?iso-8859-1?Q?d8nJALN+74SuZmDDl36kvwVFyJFLa1Mh1oeaVTCxNmqmyAxDzG+poRRz6P?=
 =?iso-8859-1?Q?VYiJcNWRDdpEmv/CnOzSThKbWMITumi4FbLQ5BA9pC6Fynx+1o0Wk4q0Km?=
 =?iso-8859-1?Q?WFZX4pLa4JplAfhYT7Vrq4GButGUVl/cPfaX7q/UBfZVO62ptzk77ALofS?=
 =?iso-8859-1?Q?541E1ndlZjqRHQsVYRq6cBYaQV9S0KzGAIDBW+Ycc8ZILB9xRqVgwNmF+B?=
 =?iso-8859-1?Q?Ykum55m08u3yltddOJ1J9eaopcvBNfxTsDzAJOQfGVPT6Md1Zed2gIN9Bw?=
 =?iso-8859-1?Q?03KpLdYdP/EbUlEh4Dh+YJZ1FKN0LwORjijaJw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?oYcmz7NfywdUjTdwzGGBi2fFAabCIkYyV+Bqy+Gmgc4jzVXUZhUD2TXqNe?=
 =?iso-8859-1?Q?5oTCX7VTZoxL289NTXBSQtz7uGsdjoOmGdpmMPIMZqD8oM4E9LokFIvKID?=
 =?iso-8859-1?Q?XDHywmLmrUbdx6/Fq5/dxMUYsBqAQdCHeiw0ZZO7qS2Q7fVNA8aoPOG/vH?=
 =?iso-8859-1?Q?LHykiUpqjuB1Dps+ovVt1v7rjXXmqY6DER5zdpnVClVroZ2jqp8I6U5tYS?=
 =?iso-8859-1?Q?V+0z7ayODfO3ZKNmzzSnFjTCr0ZqcpTBMsFz/LXizoT7ZphDJa9ib/8a2G?=
 =?iso-8859-1?Q?hQg8yfEBl9llEmFBtfg7URO34sXCFHTFiqOZWRdyUC+0fPuOoD85GE90OV?=
 =?iso-8859-1?Q?iHU4VeOIyXp8hhJ7T3QTfX2WSqnEAjw2Zh/IyHdBDbnjMAY7OuLtLgJ7Lg?=
 =?iso-8859-1?Q?s3d2CzU3cqRxOLTaVx08ZR17vc3weXXNClnq/jk0uyTgAxKxaSgevFcYMe?=
 =?iso-8859-1?Q?SwBzI7okuSFq5HSbQmOedTCImAJVl0p00k0KSpmw9nMkY10+36i7FXpnOW?=
 =?iso-8859-1?Q?/oFP0wiZwI2NDJ6uyKwgSZQ24Jw3O0sL9Ut7zvwNdVbUNGoWjj4XHGABrO?=
 =?iso-8859-1?Q?N0VrwLwoumh/N4eSKPH/hJW3LYgK394EjgvT2ycd1mKm0EEYfAlkwyJ7zQ?=
 =?iso-8859-1?Q?OVocvlUQk/iM73Sl9gGTdrshBN7XARV8evH0R5jEd3RYxSQ27kqa94McKu?=
 =?iso-8859-1?Q?BQEsltFhkc8N7HX3eO0WVzgbtsytVOoRrIzfmbnp1SjzYGhGsWGr1SgyZq?=
 =?iso-8859-1?Q?67BjrHA4nfWghB0Cqc3KNfD1a+a7Nl1uLngFCZOD9No7gqlXvlwcifdXko?=
 =?iso-8859-1?Q?OidpqMEU2Wii76IhIldY8JH17bjSf0Ck/c+vNaxVcp9/HTFQV6gA7Anigk?=
 =?iso-8859-1?Q?M/AHnxCQcANJX/MgN4ld4pHjUL8N56VegvbNZVJflMet2ibAaWkaleVTWW?=
 =?iso-8859-1?Q?tpXyz9ygQreFcmc7nO7tcS21xxz1iEBUdFgqImAfxliYt5+ZE+GZNs3Yi2?=
 =?iso-8859-1?Q?p4Bj7Jf0RGjMMeXqvGLH4Vap+lGjMwa70gMrEV6l6nBiY74/iJSC78PO1P?=
 =?iso-8859-1?Q?M1SO8zmrnFp1E3LhPf4GxX51YRp1BBouchV7LqYt+6Ewf7U/Tgx/WT1kM6?=
 =?iso-8859-1?Q?jBrww3IwRuknkM3JIRqhxxO2i1EB7hlNbE+il+wfyoYWPmejnCqWJtHwNp?=
 =?iso-8859-1?Q?ibCl2Y6wFpZ4NkOOShim3J3aDzEbwkD+5F1zXhBLrNA9xW66TjXSxVI2+z?=
 =?iso-8859-1?Q?3Cgzk8Agf+vrMZz0z48b6h1uUVwXcpApaEOrqv3qBgWJjgHUPwQ+L4Racs?=
 =?iso-8859-1?Q?dphwXgyNeO2FYTN7ZpZgwliAB7EJOQ45W23DrDzm6J5ysySixFxeKNRlEI?=
 =?iso-8859-1?Q?7JYjuxKQUNCf46rk/WEOah1/j+/erzJyFLHuj8Tfcj8skNM8CK1w/dT6Jv?=
 =?iso-8859-1?Q?0YzU66euNK01G04yAPhQnCevFL0oJuzb2HnHQ3JE66Go0CVk6nOVBTjUDu?=
 =?iso-8859-1?Q?FiIIdAmYvHn2WxAECEU2UF9CzSyrk3wv5xYLAN/1sXC6Q6KTQKlK3KHOab?=
 =?iso-8859-1?Q?HbXVmabfW7m57LShm8FPgCDd6w42s9J7DEbVQUnoA8uUAIJpa4RXJ6z29E?=
 =?iso-8859-1?Q?OTtjTQZaB4hB4nevwDXGdBPMU5bDgwUmKyy60Zw62xnZAMv7DbGB8CpA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a86b8dba-1666-4ed2-d29d-08de0c126d13
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:44:01.5457 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V0x5ltfumG8DsQWYSr8FxI7Q/aDDtIGcg2xwK+Ha3GiSeQHY+1n8NO4xs6G3q01r/KQE2wEkaw8gVKPoCqlEsCyijV6I6cndSGx8HUdLKHE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6953
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

On Wed, Oct 15, 2025 at 01:39:02PM +0530, Shekhar Chauhan wrote:
>
>On 10/15/2025 13:37, Shekhar Chauhan wrote:
>>
>>On 10/15/2025 8:45, Gustavo Sousa wrote:
>>>From: Matt Roper <matthew.d.roper@intel.com>
>>>
>>>Provide the basic platform definitions and PCI IDs for NVL-S.
>>>
>>>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>---
>>>This is brought as a dependency from the series for Xe,
>>>https://patchwork.freedesktop.org/series/155866/, so the display side
>>>can be reviewed independently.
>Wait, I realise, its the exact same patch brought in for dependency 
>issues. My bad. Though, the patch looks clean, the RB stands.

I prefer that we apply this through drm-xe-next branch, so it makes more
sense to apply together with the other series. Yes, the patch is here
only so it can be built/tested on previous platforms.

Lucas De Marchi

>>
>>Some of the changes below are redundant w.r.t the Xe series you 
>>mentioned above, but maintainers can take care of that while 
>>applying these patches.
>>
>>LGTM,
>>Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>>
>>>---
>>>  drivers/gpu/drm/xe/xe_pci.c            | 9 +++++++++
>>>  drivers/gpu/drm/xe/xe_platform_types.h | 1 +
>>>  include/drm/intel/pciids.h             | 9 +++++++++
>>>  3 files changed, 19 insertions(+)
>>>
>>>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>>>index 24a38904bb50..cc29678be1fa 100644
>>>--- a/drivers/gpu/drm/xe/xe_pci.c
>>>+++ b/drivers/gpu/drm/xe/xe_pci.c
>>>@@ -373,6 +373,14 @@ static const struct xe_device_desc ptl_desc = {
>>>      .vm_max_level = 4,
>>>  };
>>>  +static const struct xe_device_desc nvls_desc = {
>>>+    PLATFORM(NOVALAKE_S),
>>>+    .dma_mask_size = 46,
>>>+    .has_display = true,
>>>+    .max_gt_per_tile = 2,
>>>+    .require_force_probe = true,
>>>+};
>>>+
>>>  #undef PLATFORM
>>>  __diag_pop();
>>>  @@ -401,6 +409,7 @@ static const struct pci_device_id pciidlist[] = {
>>>      INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
>>>      INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>>>      INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>>>+    INTEL_NVLS_IDS(INTEL_VGA_DEVICE, &nvls_desc),
>>>      { }
>>>  };
>>>  MODULE_DEVICE_TABLE(pci, pciidlist);
>>>diff --git a/drivers/gpu/drm/xe/xe_platform_types.h 
>>>b/drivers/gpu/drm/xe/xe_platform_types.h
>>>index 3e332214c7bb..78286285c249 100644
>>>--- a/drivers/gpu/drm/xe/xe_platform_types.h
>>>+++ b/drivers/gpu/drm/xe/xe_platform_types.h
>>>@@ -24,6 +24,7 @@ enum xe_platform {
>>>      XE_LUNARLAKE,
>>>      XE_BATTLEMAGE,
>>>      XE_PANTHERLAKE,
>>>+    XE_NOVALAKE_S,
>>>  };
>>>    enum xe_subplatform {
>>>diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
>>>index 452c1de606ff..13c592e1a28c 100644
>>>--- a/include/drm/intel/pciids.h
>>>+++ b/include/drm/intel/pciids.h
>>>@@ -887,4 +887,13 @@
>>>      MACRO__(0xFD80, ## __VA_ARGS__), \
>>>      MACRO__(0xFD81, ## __VA_ARGS__)
>>>  +/* NVL-S */
>>>+#define INTEL_NVLS_IDS(MACRO__, ...) \
>>>+    MACRO__(0xD740, ## __VA_ARGS__), \
>>>+    MACRO__(0xD741, ## __VA_ARGS__), \
>>>+    MACRO__(0xD742, ## __VA_ARGS__), \
>>>+    MACRO__(0xD743, ## __VA_ARGS__), \
>>>+    MACRO__(0xD744, ## __VA_ARGS__), \
>>>+    MACRO__(0xD745, ## __VA_ARGS__)
>>>+
>>>  #endif /* __PCIIDS_H__ */
>>>
