Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4DAAB4552
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 22:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E9210E1C3;
	Mon, 12 May 2025 20:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="agjOr24m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FBAD10E1C3;
 Mon, 12 May 2025 20:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747080240; x=1778616240;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=pZzzP/nlmg4rYjuM6lBZzDMjzH9F1crBAStG+ZLGwX0=;
 b=agjOr24mz0Pz2qFVAev+YtW5lBQGB3Mr4koeChJ8ixcet011qx9iX07L
 BLhYM1FZvKBpfV+1/m8uGDwwXoyFSHoD1V6f0JR3YqEkRA/kDbwaeJMbC
 HD45sh8iLZK3xYds634NlYMd+2WMOaMwLZU45JcDz5F84zvylmJGWmuuv
 OLYuwJbPB00/9Pw4qiZ9sPZT93KL/rWtSZKZnfhwstqSfTEEBpB660YYz
 nyLwCjTg3U8plpsv/XmMiQwfgTHZa+LJHWAXhBfOm9uVO9IYRrWk4fVvW
 GvObLDAM+2J6yYvFKcOCygQu+81RPfp+Hv2CgpO1tBiGPArUwuQeJgZdx A==;
X-CSE-ConnectionGUID: g3UMf6wGQkaliJxID/Wdlg==
X-CSE-MsgGUID: dxsPA3XNQ/OTvmuMlZX7Og==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="74292257"
X-IronPort-AV: E=Sophos;i="6.15,283,1739865600"; d="scan'208";a="74292257"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 13:04:00 -0700
X-CSE-ConnectionGUID: OlhCZQUgR7e2UCgzsF//KQ==
X-CSE-MsgGUID: +x7BgZpuTsegM5u6lYCwcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,283,1739865600"; d="scan'208";a="142351148"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 13:03:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 13:03:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 13:03:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 13:03:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ow9Dzqgn8/OaNbOiMGCEI3ptTtKscS0mhIdZguDvNLTdE6qmpP4j0VaywQnnxqqPCUCSGAcRVA0Hmg1OaAbTSEv/6Q+8orOqflDgU/9eQ0F03dmNY3HQ1dpDWuOnilTKGhie1MTAKY3rjhAy9yXCt0fq7el3YBbP367hTiwLd1FCTdomNo5W4rzNCRh6ECQDHnyrEP3sPtqpVLbeknG4OKqt0r1LVbD4cixk2XUspc26EoC0Y8JjaexDmVfXuXEv9u2SkEZf8EXH2klsMpYkvWXWKw9a9m1Rh94l5MpxoaZUIAi9x/gEf7WvIU3h6FzCdEe2ffrq6l8jhwAiXqtaug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AgIXCPyia/nLdd5nZviEQFa37HEjeW50e9IcM/aeHMY=;
 b=ozxsJqnyXDtpLZ9lNDdrkv63oOfM2dEFVRw0pVN9PSKY/6WMHfQuuoKFsvZLMTNIbJ4+4+Q8t5fvn0uy7S51ckAOQu2SA4fUbenG2Y0rhWWe5Dv3GMJ+TsLATX3TH+aYXtcUWhwl1FrwiVB5JQ35HH9bInXCxjl4aGfRKmF2nBfupjLjBvSXOX9S2Tbt8fJCV2jk33Nwxi2o8KYAe6vGD0xwnYjZKJB5Z3sEQyhFwr9ePq34cvtDtgkUcMcXNqzSpMe3dPngn72CtcLcghMD4qxaPGxw6NJOVtKBoJFVWp2dUkeK0af+ocdskPrYEeREW7PaZETcV8CWMaARiPNbgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB6272.namprd11.prod.outlook.com (2603:10b6:8:94::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Mon, 12 May
 2025 20:03:57 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 20:03:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250512142600.824347-1-imre.deak@intel.com>
References: <20250512142600.824347-1-imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/ptl: Use everywhere the correct DDI port clock
 select mask
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Mika Kahola <mika.kahola@intel.com>, <stable@vger.kernel.org>
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Mon, 12 May 2025 17:03:52 -0300
Message-ID: <174708023231.10493.6499863984617165104@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: BY1P220CA0016.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB6272:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fad33b5-b362-426c-b2b1-08dd91902099
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|16122699012; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bzc1MURBdThkeHZnQkNHdTdjT0RsRDZGVjZET3loSmtNWnoyd0ZSZlNBYkRX?=
 =?utf-8?B?WEZJNjRPNTQyNERQWFBBZlNldENEc3ovTytXTFRMTkhNTDhjQlYwUFR0SFdu?=
 =?utf-8?B?UHRhUjdBNDBhWVJIaUJ2dnM3SVBNSmpFN2d3QTdnL1FCVTZoQmVXVVNVcDM3?=
 =?utf-8?B?cmtZQmJWSjJnQWZzSWxHREZpSitxM0FnNElQOHplVzZ6NVowbVRsMGtXVS9D?=
 =?utf-8?B?VURraTdsdXk4RmNrc2JmTzBScTVlTm5OeGdLY3pnNVdiaEI5Q1Q1UURZM2FF?=
 =?utf-8?B?cW1aR1V6bzRJbEpJTkp4VE1oRXJ4T1FlTkRQMDkzY2xJMkM3RXYxUjRLcXRL?=
 =?utf-8?B?R3d5WWFqUkhSOC9yK1JJRERZc3dMeU9CWk5GTWJZT2ZQdDk4azRsL2VYWWZq?=
 =?utf-8?B?VmtKanVBSjR5WDUzdE16bkprdEFPSGZqUjNVYXZPSFkvWDNUcWxwVUMxd281?=
 =?utf-8?B?MUNzWnBocnd5SnQxbXRyREpzWkNDTnE4U2tXRHpmYkYwMjZQOTg0WUtKc2c5?=
 =?utf-8?B?WjZ4N2JoUjZVSDV4K0RXWkdCR0NsTGJ3SFh5aDQzNE4xb2RqNkNLVGRmVDd5?=
 =?utf-8?B?akErcGlWR1NLSGtvcVd3bkp6ZWxTYWpqclN0NGdwdVdFNWU5UEN5WC8yeEcz?=
 =?utf-8?B?eng1cEZjNGkzVDlnMk1DVnU5V0JDczQ0a2RNUHFVVFNIWU5nbnozT3dnSEd0?=
 =?utf-8?B?VUhNZ2VuVVRuMWI5SzJabG9tclFLNDIrVjJyUEVEWFVxTFpCZ0pNL04yOVlO?=
 =?utf-8?B?dDl2TFVldUgxQkJxOTFYbmxDYWcvWDhWNzBVOXp5em5PNitVc2ZlMVA5bllH?=
 =?utf-8?B?b3JUT1pVTll5T095MmVNSGc0bVp3Q1BvNTJlWHMzandRN0JlcWUrTjRlczRG?=
 =?utf-8?B?dVJWd3B6WlRaSDFzVmtiOGFjVUdsYjNQdVhXcjlqZ2Vwc3N2U1hRdWt3MmVH?=
 =?utf-8?B?a0xGK1RvOEVYelE4aEZzQ1FKQnJ0YURGbGJZa0lUTVRLVm1zMkFJSlhPbWNC?=
 =?utf-8?B?clV5UnJvMWVUMW8xNGJPMFZNdTFJRVliL3ZpTmxTdEI4K0pHQzFkVG1xdVMw?=
 =?utf-8?B?WE02UGdCalBRMG9yc1gvT29tS0dSNE1qQ2puSjZ6UFFBVmFOLzk3Z0pnakpT?=
 =?utf-8?B?MmJ4T2dRdHB0eklMSzYrKytjY1FVSXFHRnRsRkdkZmRySk5GQjd6S0J4cEVS?=
 =?utf-8?B?UXN2R0lTYU0yeUdaVDI4eE5nWXJPa0pwVzQxMEdxcDE3bFNKWEtJTHFyTmkv?=
 =?utf-8?B?azlibUNwNElER0drMmFtdzNsYXJ5dXYwUHhYa0RYWE4yazhMWFlweEhxUEFU?=
 =?utf-8?B?ZGlWM3kzbUhrcHhxRWlNa2pZbGlBbWc1VStsZGxKRGZkRlRJMUE1aHhVeWpp?=
 =?utf-8?B?MDM0OXIvSjdxUEF1RlVERnR4TEFBR1FTTUxnREg3ZVB2c2RuRk1iMUs2NmhF?=
 =?utf-8?B?aHdaSzRtRXRqTm5pTXNKS2xwQnVBdGYwVjNZbEtNemxIOFdFREVFbmlvUUxv?=
 =?utf-8?B?QzlCTjRkUDMzUnRNU25IYXh0WUZUWW5sN1NpdnpXMURTdnpaNmtRSndwQTJK?=
 =?utf-8?B?TjZnNm1hM0ZrWG10azlzMnZBUUtJbVlSanI2VWdwRzAxS2ZmWnFGR08vYlhy?=
 =?utf-8?B?NFJKQVdoTUk4a0c0UXJQeGx6RUVTU01NaGxpZ2IwSFd1TkNNTWgyMm5ldTlq?=
 =?utf-8?B?WUF3bHBLd3JHMzZHYlFoTzZJWUYxd3NqUXR1VlVCRjJLVytzamJmN0JJN1RV?=
 =?utf-8?B?cEFHZHljcXJwaEh1eTJweWhpaHUxSlJ2V2FrWGxTcEJ1dHNzYzlTNjNEYTB1?=
 =?utf-8?B?dk5nSTNHNFdGOTFLelRCNXpaZEFUMU1SR0hlQU01ckd6QkwvYUlDdy9hMlp0?=
 =?utf-8?B?eUUrMWlJcFNMUVljb3ArQnF5ZzlIYm9iNmI0NSswbEY5RlRqN0oyYWdGaHFK?=
 =?utf-8?B?eXlLc2IvdlY1eXBNTkwzUjlQY2RFZTZkaXN3aDdNaXA1RzJjNFQyZ1dONFlk?=
 =?utf-8?B?dkdqZitaMlF3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(16122699012); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0Vqc3NDejNGQzJnU3c4L3JCL0VQaEcxeVFHNkdmVmdBUE8vMFhwdW5UaE5I?=
 =?utf-8?B?SGMwcS9VZ25MaUowa00wNzJlVjVYUjMrNmlKNFRLRzRCSHY4WjNTZ3VEcDdy?=
 =?utf-8?B?K3pteXp0b280MkcxeFRxRzNZUVFFa21VaVFVQjRqakZqTDU3YlZYNERwVldx?=
 =?utf-8?B?VXh1TWljT2VDcHZHWG45QmQvTUtHUkd6YmRseEViYlNKTm1RdHJVMDNidE05?=
 =?utf-8?B?aHFud1lWU3dvV3ZyTTdrbitESG01Q1hBSVFoek5ZYjd5UWp0Y3ZLVXJmNkR6?=
 =?utf-8?B?a3pTcTJiblVVT0lPdlBGdU1vU3pzYlMxOW9McW9rUFRhdUxaMkw0MEFjaTR1?=
 =?utf-8?B?ZU15aE0yVGZjTmlMOVBqbERuTEpkMTY1ZHE3c29sMWhnbzdabkV6YWtFa0JC?=
 =?utf-8?B?UU04cTQwZnhnMVM0S0F2dXdYRy9Bc3p1WHJEaEJ0SnpQMVlDVnpja0cyenUz?=
 =?utf-8?B?M0tPTmNtRTQ1NHJMNWpYNDZJcVVMNWVGRkNUMVVZOWd0VVpJbjNaVFRwOHl4?=
 =?utf-8?B?OGJFYXBjOFlOZ254bnhXeWxTTWtmbHdZS1N1Q3NVK0ZYVkJNbFJoT2JYZWZn?=
 =?utf-8?B?YWlIYitMc0d6S0lwT0hnNE41MTUvblI4bkRSaVJlOTc2TzE0am1vT1ZReWtH?=
 =?utf-8?B?MGxrYmNsdStBSVdjS0kwaVprdkJTZTdscXArS1Z4dDZJamlaWTUwSHZMalJJ?=
 =?utf-8?B?Nm9nYTNTajFPNE95YzZBV3BLaDYyY1lPcjUrMitRNThSUDN3UVRFTjFSWVJm?=
 =?utf-8?B?d0k4NWFaTWYyeGlRZ0VBcUlmWVMyb2VvMkcvYk8zaGVoVGFlZXk1QTRpbnZR?=
 =?utf-8?B?SFpNbVE1NW9tNFVTb3VORlV0T2VrOFlGaTRLbTdkZTUyNmRnZkRrYnNHdERj?=
 =?utf-8?B?L2JrSmVWa2xXQmZyY0FBNGo5K01EVTQ2TlJOY1d0MWlSZ2NFUlg2MGNQWVhX?=
 =?utf-8?B?ZHVnMDZvc0Q2N2NReWhDb2s3NlZ0V0RxQUYyVTFUWmtzREdGQXZoVkM1bnNn?=
 =?utf-8?B?Mlp6bEJHVXppTm50VURpbEgrekpzdlkyZXBGQ0pXbk1hNXJMWC9Xam5EanFE?=
 =?utf-8?B?S0diUzNGcHY2cXlKUG9OUjZPT0F3MDJxc1BLZFIrL1lYTWpnVFpTWjMwU3V6?=
 =?utf-8?B?aXJsZUUwN2MzQUZmTFpob2xlRzlBQm9qOWpnaVZ3Q2hBM1FxelBIZGhPQ2Nw?=
 =?utf-8?B?SlpFNjl2U1VPUXlTWFFLdWJLUXpvOXh6b2dGblBlVUZEbDBYMGcvdlorQmlw?=
 =?utf-8?B?OWZlNlVoQllNd3QvSWUzcERLZGJid3hUc3NhQW02MlBKZzBhZjRBaDZMVWU1?=
 =?utf-8?B?amZWWUJSazhZQ0Z1aEdDS0xIWnBqUTNBdUZHRVJ2cllxZDZwaHB4OUJpajFm?=
 =?utf-8?B?ajFQZXZPdlhxUDA2bDhnWEtKQ3lUbmFlSExvaU1lNjZscEUwMTBFMkhBSXVT?=
 =?utf-8?B?YXJldW1SZXU1VjBpVzBvQy9pdmI2dEM5amFQOSszMmRTQnJzNkhia3NHYjlt?=
 =?utf-8?B?OGRscWZTUlQ4YXJid2E3anRNK1IxNEkwNlhPT3Z2THQ5YmFWSjFrZzVEd1pV?=
 =?utf-8?B?cXljdXkyVjdwT1NRNXBvenVoUFAwWE1aLzhZNnN6b0NYWXBER2pKQjJmdU9U?=
 =?utf-8?B?dHI0T3prMTh0ZXZYVFRGU2d6eGVZclhVOVNPNjBHR1g5Uk5TSEkvZUxIYmY5?=
 =?utf-8?B?WG5mSm1yY3NzaldkS2R6RkY0WkI5RHJhckl6S3hLcjFNNDZwY0ZBcDVlSk1J?=
 =?utf-8?B?NUtlSDlWTG9OcE5TOGtodm9UcW1aU29PVy9nTm1paGFpRFEwRnhmNUF1K3FO?=
 =?utf-8?B?Ym9ONXQ1cXVLYi9CRDVBUm9RUU9CeEpoRXhCUjBzSWNjczdRRmxpa2pYdkds?=
 =?utf-8?B?SkRWQjJRU0JwWnJjQkhteU5kbklIRXUrbG5DSGxpdkRtSGNPdjZYYm14cVU1?=
 =?utf-8?B?TWluMHkwQ0hQTFc2QU9VckozTzJFQ1B4MFBnb3NMeWJwdElRUEViRVA3VzNl?=
 =?utf-8?B?RE1qMTZHRlZWY1RBMXRia1hRK0pMUWJOT3phUkpyeU9kZXFKMjc1N3Q2Z1JG?=
 =?utf-8?B?MjhmODczMUxUTG0vNHczYjI5QXpsYi9iL3ZkZXZPVHBIanNYdVkxa01yY0V6?=
 =?utf-8?B?T1BQaU9vN1F5RVEySmdVWkEyRGhON2N1NjNJTHZRelpTR2lJYVpHcDRqSGo0?=
 =?utf-8?B?Snc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fad33b5-b362-426c-b2b1-08dd91902099
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 20:03:56.8047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v6IQ4n/dx5+bsTwsCDQF2sW93Kqs8WQAlFBudf+1rUoYQerQuBIeAazrcYAbsQK2G1nX+uO5O9YlU3k+q2TYiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6272
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

Quoting Imre Deak (2025-05-12 11:26:00-03:00)
>The PTL XELPDP_PORT_CLOCK_CTL register XELPDP_DDI_CLOCK_SELECT field's
>size is 5 bits vs. the earlier platforms where its size is 4 bits. Make
>sure the field is read-out/programmed everywhere correctly, according to
>the above.
>
>Cc: Mika Kahola <mika.kahola@intel.com>
>Cc: stable@vger.kernel.org # v6.13+
>Signed-off-by: Imre Deak <imre.deak@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 27 +++++++------------
> .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 15 ++++++++---
> 2 files changed, 21 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index b09f724c3046b..a82b93cbc81d2 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -2763,9 +2763,9 @@ static void intel_program_port_clock_ctl(struct inte=
l_encoder *encoder,
>         val |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>=20
>         if (!is_dp && is_hdmi_frl(port_clock))
>-                val |=3D XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_=
DIV18CLK);
>+                val |=3D XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI=
_CLOCK_SELECT_DIV18CLK);
>         else
>-                val |=3D XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_=
MAXPCLK);
>+                val |=3D XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI=
_CLOCK_SELECT_MAXPCLK);
>=20
>         /* TODO: HDMI FRL */
>         /* DP2.0 10G and 20G rates enable MPLLA*/
>@@ -2776,7 +2776,7 @@ static void intel_program_port_clock_ctl(struct inte=
l_encoder *encoder,
>=20
>         intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>                      XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK=
_UNGATE |
>-                     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLL=
A |
>+                     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_E=
NABLE_PLLA |
>                      XELPDP_SSC_ENABLE_PLLB, val);
> }
>=20
>@@ -3099,10 +3099,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_enco=
der *encoder)
>=20
>         val =3D intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, enc=
oder->port));
>=20
>-        if (DISPLAY_VER(display) >=3D 30)
>-                clock =3D REG_FIELD_GET(XE3_DDI_CLOCK_SELECT_MASK, val);
>-        else
>-                clock =3D REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val=
);
>+        clock =3D XELPDP_DDI_CLOCK_SELECT_GET(display, val);
>=20
>         drm_WARN_ON(display->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
>         drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
>@@ -3170,13 +3167,9 @@ static void intel_mtl_tbt_pll_enable(struct intel_e=
ncoder *encoder,
>          * clock muxes, gating and SSC
>          */
>=20
>-        if (DISPLAY_VER(display) >=3D 30) {
>-                mask =3D XE3_DDI_CLOCK_SELECT_MASK;
>-                val |=3D XE3_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(=
display, crtc_state->port_clock));
>-        } else {
>-                mask =3D XELPDP_DDI_CLOCK_SELECT_MASK;
>-                val |=3D XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_sele=
ct(display, crtc_state->port_clock));
>-        }
>+        mask =3D XELPDP_DDI_CLOCK_SELECT_MASK(display);
>+        val |=3D XELPDP_DDI_CLOCK_SELECT_PREP(display,
>+                                            intel_mtl_tbt_clock_select(di=
splay, crtc_state->port_clock));
>=20
>         mask |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>         val |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>@@ -3289,7 +3282,7 @@ static void intel_cx0pll_disable(struct intel_encode=
r *encoder)
>=20
>         /* 7. Program PORT_CLOCK_CTL register to disable and gate clocks.=
 */
>         intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>-                     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
>+                     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
>         intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>                      XELPDP_FORWARD_CLOCK_UNGATE, 0);
>=20
>@@ -3338,7 +3331,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_e=
ncoder *encoder)
>          * 5. Program PORT CLOCK CTRL register to disable and gate clocks
>          */
>         intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->por=
t),
>-                     XELPDP_DDI_CLOCK_SELECT_MASK |
>+                     XELPDP_DDI_CLOCK_SELECT_MASK(display) |
>                      XELPDP_FORWARD_CLOCK_UNGATE, 0);
>=20
>         /* 6. Program DDI_CLK_VALFREQ to 0. */
>@@ -3367,7 +3360,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encode=
r,
>          * handling is done via the standard shared DPLL framework.
>          */
>         val =3D intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, enc=
oder->port));
>-        clock =3D REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>+        clock =3D XELPDP_DDI_CLOCK_SELECT_GET(display, val);
>=20
>         if (clock =3D=3D XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
>             clock =3D=3D XELPDP_DDI_CLOCK_SELECT_DIV18CLK)
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/g=
pu/drm/i915/display/intel_cx0_phy_regs.h
>index 960f7f778fb81..59c22beaf1de5 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>@@ -192,10 +192,17 @@
>=20
> #define   XELPDP_TBT_CLOCK_REQUEST                        REG_BIT(19)
> #define   XELPDP_TBT_CLOCK_ACK                                REG_BIT(18)
>-#define   XELPDP_DDI_CLOCK_SELECT_MASK                        REG_GENMASK=
(15, 12)
>-#define   XE3_DDI_CLOCK_SELECT_MASK                        REG_GENMASK(16=
, 12)
>-#define   XELPDP_DDI_CLOCK_SELECT(val)                        REG_FIELD_P=
REP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
>-#define   XE3_DDI_CLOCK_SELECT(val)                        REG_FIELD_PREP=
(XE3_DDI_CLOCK_SELECT_MASK, val)
>+#define   _XELPDP_DDI_CLOCK_SELECT_MASK                        REG_GENMAS=
K(15, 12)
>+#define   _XE3_DDI_CLOCK_SELECT_MASK                        REG_GENMASK(1=
6, 12)

Since bit 16 is unused for pre-Xe3 display IPs, I wonder if we should
simply redefine XELPDP_DDI_CLOCK_SELECT_MASK to be REG_GENMASK(16, 12)
and add a comment noting changes by display IP? Are we aware of
something that would be wired to bit 16 that would prevent us from doing
that?

I remember something similar was done to other register fields in the
past. Some examples I found:

    3fe856180c94 ("drm/i915/xe3lpd: Add new bit range of MAX swing setup")
    247bdac958fc ("drm/i915/adl_p: Add ddb allocation support")
    d7e449a858ec ("drm/i915: Just use icl+ definition for PLANE_WM blocks f=
ield")

--
Gustavo Sousa

>+#define   XELPDP_DDI_CLOCK_SELECT_MASK(display)                (DISPLAY_V=
ER(display) >=3D 30 ? \
>+                                                         _XE3_DDI_CLOCK_S=
ELECT_MASK : _XELPDP_DDI_CLOCK_SELECT_MASK)
>+#define   XELPDP_DDI_CLOCK_SELECT_PREP(display, val)        (DISPLAY_VER(=
display) >=3D 30 ? \
>+                                                         REG_FIELD_PREP(_=
XE3_DDI_CLOCK_SELECT_MASK, (val)) : \
>+                                                         REG_FIELD_PREP(_=
XELPDP_DDI_CLOCK_SELECT_MASK, (val)))
>+#define   XELPDP_DDI_CLOCK_SELECT_GET(display, val)        (DISPLAY_VER(d=
isplay) >=3D 30 ? \
>+                                                         REG_FIELD_GET(_X=
E3_DDI_CLOCK_SELECT_MASK, (val)) : \
>+                                                         REG_FIELD_GET(_X=
ELPDP_DDI_CLOCK_SELECT_MASK, (val)))
>+
> #define   XELPDP_DDI_CLOCK_SELECT_NONE                        0x0
> #define   XELPDP_DDI_CLOCK_SELECT_MAXPCLK                0x8
> #define   XELPDP_DDI_CLOCK_SELECT_DIV18CLK                0x9
>--=20
>2.44.2
>
