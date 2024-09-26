Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C46A986BF9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 07:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E73588735;
	Thu, 26 Sep 2024 05:23:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PcJAYi9a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA6710E0C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 05:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727328162; x=1758864162;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cfkDOHW9iofm3eYr+mcTQkG9kK+30USH62zltKnMIOI=;
 b=PcJAYi9aQYaf4tYMGVbmZirw5zyNRmO0R5863AiHRL0MciRZrbCrJ7cQ
 H0amFoefiMCN8nhAOrmpQOlTJrFvAQC0tHIkaU5AJ8QLeFJ5Nn28zShKX
 J/26vqopgCMHoX1s/IyLhs+naS5Bo5YZ5vQAK/LCSWArdwx8/QUBuUVa9
 6XcDiNtDUbBMI+yGvb1wmMQKaukjRc4pKmypGdSrMA5/LPEojtasHxd2k
 1Td5aIaW64Xt4qDaOnlMXkT8DT6yz9a5s3LC472LoUTP1s049KafeD+vo
 sERX6LIOxe2wpandr3eaVKqSJ9Pj7RdVUggPetokTIaT0f4m+6EHnoNkh g==;
X-CSE-ConnectionGUID: vnKRa+CbQcKG6pg7FZ2OUg==
X-CSE-MsgGUID: jw5TeLAjRXihGm3q/OpVOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37784823"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="37784823"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 22:22:21 -0700
X-CSE-ConnectionGUID: 2zyXDfquQam8ZjSDsQSfRQ==
X-CSE-MsgGUID: apCaoCv4SRK3ieatmX9byg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72808567"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 22:22:21 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:22:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:22:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 22:22:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 22:22:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GcljUPf8eCReR/G7Db3PlZdfeFIMgS/hyZkA54tNXu/NRkVZ0MXm+KLJL8u4kUuPFoggXNDXo8ZA41sAeISRRu/G4i8cJfV8/WD800jcAOf+VE1UTOx433BJfFcUuii2xcqsFz1PTfvg5d7wmd94awNOC75txIEq1/9+3kXHGfQcfJI/t+c7xQdNYoFnUJMBs0MPkAxN5mNZj5yg71BIsJ6/Fwt56iG2WcpVptUuMN2Mq2XFi5Wrx2p19VwA6Pi9yI13rcQwH9Jxr0SI0fRLovkVTMpS0zQB54iseJ54OrE4U22H1+thCOub/JR21lO1iG94R2cizSA3HfD6cra+hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dq4FcVDhcCOsJnQe+tpfBSYvIuWSgE4T7dXMsZSJgDY=;
 b=qhJdXnusWgNQe2sIJBGg0nIjTwdVN0eXmbsUNN2bHPTk4sl0VuP3BbXWmbBC6qZwQvYAimbss0YKH5BV051eXwNc1S+4rThJqPvhTpSGeEg8e6//TFxd3vUgyLL/HSgoWcYOCsf5uVlOIFBU5TZOr/CN9oDAc3Qv+l6LYNfB+EjHs9DfALAgc8cV9OKqgk0Rj5H0symaR+d3Asij39TtkezhQECY/KTsg6o6xUhmxKvipSud0XL8xXK/W2+kg/ueEvdYLhNhGJsWl+XR88mpKqGqWm2tkUl1d2nWY0/DUddl5HGXGzq6Wi47+mZ4O+HX4yNzfpZwcNGtJNuYvcVX8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Thu, 26 Sep
 2024 05:22:16 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%7]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 05:22:13 +0000
Message-ID: <98eef4e7-1e43-407e-8f30-b7325c738956@intel.com>
Date: Thu, 26 Sep 2024 10:52:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Remove unused underrun interrupt bits
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>, <sai.teja.pottumuttu@intel.com>
References: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
 <ZvQYGgYQcJnXl_wg@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <ZvQYGgYQcJnXl_wg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::8) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|IA1PR11MB6193:EE_
X-MS-Office365-Filtering-Correlation-Id: 49630d04-376d-40e0-4aad-08dcddeb2dff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c3ZneC95ZytoOENKUTAzR043RHM3Q2RyUWVJK0QrTTV5YkRVYmdmS1lXSlNJ?=
 =?utf-8?B?enE1S1pOeis1YklmekhsNm9acnFEZ1NIVWZySjIzQ1ZmTUgwWXRFREcxVGNq?=
 =?utf-8?B?b2ZSWUl3QSsvVWJJSExyUjNlbWx5VFlQcm5UdjA2aVpIb1V3MGRCajFIRDR5?=
 =?utf-8?B?QWdQa0phTmZHVDF5cGZYRWV4em5pTXVmOEVUaFM3MUgraVlDRVZBUUdqNUh5?=
 =?utf-8?B?NXlIMkpsU2lzbjcxMmFhSHVJSC9XVzMrQmhNaUhJMHBXUXlkeHJyWlVXRjdB?=
 =?utf-8?B?bm00QjM5UmtpNUk2cTZyQ2JHQWpWT3BpWmYrMHFvTVJybjJzZzA1MjRxYi9z?=
 =?utf-8?B?RVNuMFFZQUxqSWNIVGFUaWplNVFQOFBqbTd0SW51YzJUZXVJZS9oYjViZ3ZH?=
 =?utf-8?B?R3hURzlxVW1naEd0bCsycDBOTTNZNnJ4bFExck9Yb1BzTHJZMFhCbHdCRWdj?=
 =?utf-8?B?UXlMdlNoR0lzSEN6TzR0UFVzTTRHRkVDTTIrRFA5TWk1cUxDYlVpTU1BVmJW?=
 =?utf-8?B?a3Y5Mm13QjJHWlErdHhWNEFzTTNSclM2VTE5d0tJVHJac0dxSTY1cTI2c2Uv?=
 =?utf-8?B?eEFhU3I2WWt1TmIrVng2SjlFVkpOMmpnM0Y0WXdRZjRLcHhhK1Z1K1pGR2VW?=
 =?utf-8?B?Zk53WVhLcFBkMGJOcHEwRngzWXROZ2hMcFNVL3JZUk0xa0RDNG96N25OY21L?=
 =?utf-8?B?dTZRN2ZMSWFHMEM2cUZ6Zko4R25qMmthU0dYUWI1M2xrN3NOaDlLSFdnMHVN?=
 =?utf-8?B?ZVhQZkFLTjIxcndPbTNXaHpRVnhxdUZkSUxVaEhXSjVDQlZSdTNwQnhLVVpX?=
 =?utf-8?B?TUtVL04zdWZtS1dWQTRDRnNUdWpKY1RjaUtnRS9HNEhnVGxub1hKMm5nT1Er?=
 =?utf-8?B?ZkhGdVpuU3djcjY2VFl2Yk9Ub3RiUVY5T3BOeEorenp0d1NsYittMEh5ZVhF?=
 =?utf-8?B?ZlRRSnN2NjlGVjFiWC9tY0tHQnp2ei8vUndCMStVMzFpVTVUMVY5UUVWVnRl?=
 =?utf-8?B?dm5KTC9kUDZZQUFObEFZcytqckJ1YTRwK3dRaDhya3Ird21VNmVQVlBPallH?=
 =?utf-8?B?TEJycEhKRTZzbzFaSGk3VXhmcGdsOG8rZ20zM1AySjdzNFo0bzFtQ0c5eGtY?=
 =?utf-8?B?R1l4L21YMGswdnZlaVB0dEVqaEZ4a2FLWkdERlZnK2xLVnpmSllDb2NpSmM1?=
 =?utf-8?B?QzZOZnFJMW9ORGczTzFuUC9ZTDQ2TDBVS3ZSTFJ6KzR5YzFNQis3M1pWVlNH?=
 =?utf-8?B?TmtSbVh6YStSZ1hnUS9USWxRajhRVi9XSkhSYzF1aTlHVDMzVmRERjd2S1Uw?=
 =?utf-8?B?OE4ya3FrMlNDWitRRXBnb2lRNHJQdjZBalBsOFlYSmZySFF5YXY1cFd3Sm9C?=
 =?utf-8?B?OEtqZWpzd2UzRENHRjBoOVRWOGxxWVNSdXc1NkJSRUtUWkpCQWZCK3hCMFNF?=
 =?utf-8?B?SjFZTDAzbkpGeEhJVHcvVWZkSmlQV1RSNGM3MWlVZlVCc0hOeVZPV3FnR2Zq?=
 =?utf-8?B?NnF5VHNmYXYrd2NQMDhsaFh5VGN3YUdnUS9URXp6UEYxc1JZRUNxY0VnZGpl?=
 =?utf-8?B?UDloOGJIT2Jtb3FFTVpzcUR0cGFCQzlQWElPTTBRYUpyYmhKdXl5UzFCRklh?=
 =?utf-8?B?MURMd0JnT3kyYXpoK05adU1FNUVRaDhOem4vbWd4TWFYd3BQVlpCbWFidU9L?=
 =?utf-8?B?dVpabHdEeFFGYUV0dDE2b2c0d3dzN20yRmRLajlQYlExWTV0VnM5Q2ZtdTFt?=
 =?utf-8?B?aUt2RkdUQzROWm94Q0NlV3NNc2JDa0dUaDVSZXg3OE9KWUJrUHZncWk1TUhM?=
 =?utf-8?B?SUNvTk5MZzZNRmNCUUNRZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1F4LzJNb1podFNreTY0UmU2eEZsSm5CK3Rwbk1pdnlmWjNhbUlhRXIyU1Vy?=
 =?utf-8?B?Y2tJYWJpNSt1UjZxOWNqYWM1UHkxaVM2cjZQS3VTRW5pWGhxa0hJcndpVHdr?=
 =?utf-8?B?ZGhveEpROGM0MStFcW1nUUhMS1MwbXUyY09CMHFvMVVwQ21aeXE4WExaeG1J?=
 =?utf-8?B?a1MwYXIrdnFlTW5FZDNaMVJSTzVSSVd0blhLL3oyaDMrMFJrb0dNK0VwbjRr?=
 =?utf-8?B?K01yMjVPYTNTNHRXWTVWWWttdTRXQS9EQWNNVmxPMXhqREl5RElpS3MrSysv?=
 =?utf-8?B?ZEIvKytDNjNnZHR3cnFZQVZlbGJwQmdtY0N0ZzZkVEExL3BLVUlFVTBZaGRQ?=
 =?utf-8?B?WVREeW5Nc2F6OXBLMXl6SlR5L2FpNUczZDZyOEJjVXNiL2ZqRjZjcFdzRVh4?=
 =?utf-8?B?c3RyOExSUVlUVzc1S2ZuVUNCanBYL2g4VHpEamFSVy9WU0cwa3ZyeWp5RW9F?=
 =?utf-8?B?clNYK1dnT2dzc0tldFR3TW83eGYwSW1RRFZWU3hLVitkN2hsK3lDaGNGbTU5?=
 =?utf-8?B?aFNKTXhtV3NIVkNONWwxU1BhaHJ5UXY0cEk1Wkg2cjR0ZjNSWDFnaXI5Zjc3?=
 =?utf-8?B?ekJOa3I1WmJaenlOSmo4eDNLUnBUUlRQR3dySXJmbGhZU2N3TVV2dUlTOVd1?=
 =?utf-8?B?elEwQUw0UTdxdndUWk9MK0FNS01GNkZMZUdEMWo2QlduUmFoLzM1NDV5ajFS?=
 =?utf-8?B?V0QzWmtJSGpPTUpwZUVnZVpYUU1WaTgzNVdWRS9nb3AraWlnRTJTVGFFOWtV?=
 =?utf-8?B?RVMvUGFMcFVwOHdGbGxIdHNxZEx4UThKRkhyRkpwd0IwbmpSM0ZROFJYWlhS?=
 =?utf-8?B?OWxpYVdpdk45Y3ptdE54dzBRZnBjby9tYTRyd2RmSlhNOGh2TytUbUEvV3Mr?=
 =?utf-8?B?RXJNL1lkVlpXRmcvSTJXMmRJZEhFMkx6aU9JTFIvOHVLK3drejRDWTB2Z1pi?=
 =?utf-8?B?Nllra3lBYjVXS210VjV4Vjc2Zm5MMW1UU1RIc2JlZkNiTTlYRVlsM01QZDV5?=
 =?utf-8?B?Uk92UXBobmJTVjBseFRGTEw5VklVYytPYnUyZjhPUzZtTDR3dTdNSGkwcTM4?=
 =?utf-8?B?ZE4wNHAwRml6UWFwUi90a3NaL3JFZWRoN1FLL0s1SnVZRi9ncUVHOHRiSlNw?=
 =?utf-8?B?RklvTENjTmdraDA3a3ZzY1pIYVlPZVU3TEZkWkdDVitoL2FyNUlOelpUYml5?=
 =?utf-8?B?Z1NCcXpqSXhtaSszQUhFQmN1WmN4ZWFjR0NIRVdudjM5NFk1ZTg1cVJWSUJs?=
 =?utf-8?B?Q0tKMXNSOGJ4MFAyMjhOU1Z1VktBTFFadnk2b1ZkM2Y2RUp3bytmck4vTEI4?=
 =?utf-8?B?Um5oTlQ0V3FUMzFNRldqU1FsSGhuMHdFMWZIeFdzdFd0MDJXUmFwdldIS3Rl?=
 =?utf-8?B?cm5xSUEvUlRWMzJyb0FjWEFHdG91cmJMZU4ya0xtRTZrSmZSY003a1dwZm5N?=
 =?utf-8?B?NC9Ba2IyM05uSUlZaGpVNWp1OU5NdVEvK2FjY2Q4SkJxMWczYXFHdW0yUE9T?=
 =?utf-8?B?UG1OMC8yNlFFMDdqTnRkcWRZK2sxWjBCcXRPeTNjZGcrSGxLREZkNHUxbDRU?=
 =?utf-8?B?MXlJQk9LR085RCtGb3Q1MXpGUkJQUnU2RUdNQkkrQVlPZHNZYWpTWmFnT2FD?=
 =?utf-8?B?UmdRYUE5VC9yRnJEc0c2enNYbHp3dU1qeWtWWXpqaW05ZWo5N0dJNC8xbU1j?=
 =?utf-8?B?ZUREWmVVZEI1U1cvZ0RBNHFoRjJ0cy9hVGRhN1J4ZW1rQUpkejdFU2E5bm5a?=
 =?utf-8?B?SXNXbkFlbDVFcFBJc3pCaWJuQlVRQnBCQXhsV3VoZ00vck1DaEZjZUN5WmlP?=
 =?utf-8?B?MTBQMHd4VDJTbGhSRWVveithcnRkRy8yWmh0bmcyQmxpQ3BXMkdORTlnMk05?=
 =?utf-8?B?MFdNc1hMVTlVUHNmMFpxS1EwUUhTY3N1TzloN09obGkwUVJ1NUQ3MmtkV2xZ?=
 =?utf-8?B?cU5QV0JiMDladkhHV29CZ0FDUHU4RS9wRFE2bTJ1RkFRbmk4K3ZKWjJubTRw?=
 =?utf-8?B?THpNaENBTjR3bzJMNGZuNjRvUTJDUHV5MkQyeFRJNnM3NnlCbmkweDVpNkMx?=
 =?utf-8?B?QWhpbEluZjR6OWcwK2dWa0EwZVVlY0VhdU91bnYzMjlhSWo0bnpuNjZONXI0?=
 =?utf-8?B?QlRJWlVpY2hYSzd2dHlRQjBrWGEyc0pOMVR3akNOOTFPdXlBZ2NlZEhPWVFE?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49630d04-376d-40e0-4aad-08dcddeb2dff
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 05:22:13.9391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nMlHp02FUJB5eNZOaDmuzQTA8SpDk3nCjxxDBSHMl3DS+kKBHkqk2w6g64Q5i3TecnwLokLW8y1XFEOzUS8DtR+WL/g3qhBardMuhejRUpg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
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


On 25-09-2024 19:33, Ville Syrjälä wrote:
> On Wed, Sep 25, 2024 at 04:48:02PM +0530, Sai Teja Pottumuttu wrote:
>> Underrun recovery was defeatured and was never brought into usage.
>> Thus we can safely remove the interrupt register bits introduced by the
>> feature for detecting soft and hard underruns.
>>
>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_display_irq.c  | 19 +++----------------
>>   .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
>>   .../drm/i915/display/intel_fifo_underrun.c    |  5 ++---
> There's a lot more related stuff in that file.

Assuming that you are referring to the ICL_PIPE_STATUS register and the 
bits added there to detect soft, hard, port underruns,

I have not removed those bits in this patch because we are logging these 
bits in dmesg and specifically the PIPE_STATUS_PORT_UNDERRUN_XELPD,  
PIPE_STATUS_UNDERRUN bits seems to be set always because of which "port, 
transcoder" string appears in a lot of underrun issues filed by CI. I 
was under an assumption that if we remove these bits and the log, it 
would create trouble with CI filters and we might start seeing 
duplicates of the existing issues as new issues. So, my plan was to 
remove those bits at some later point.

What would be your suggestion? Should we remove them now itself and work 
with CI to see that filters still detect the existing issues without 
"port, transcoder" as well.

>>   drivers/gpu/drm/i915/i915_reg.h               |  2 --
>>   4 files changed, 5 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index 6878dde85031..9d8a101b2415 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -1031,17 +1031,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
>>   		return GEN8_PIPE_PRIMARY_FLIP_DONE;
>>   }
>>   
>> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
>> -{
>> -	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
>> -
>> -	if (DISPLAY_VER(dev_priv) >= 13)
>> -		mask |= XELPD_PIPE_SOFT_UNDERRUN |
>> -			XELPD_PIPE_HARD_UNDERRUN;
>> -
>> -	return mask;
>> -}
>> -
>>   static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
>>   {
>>   	u32 pica_ier = 0;
>> @@ -1187,7 +1176,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>>   		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
>>   			hsw_pipe_crc_irq_handler(dev_priv, pipe);
>>   
>> -		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
>> +		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
>>   			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>>   
>>   		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
>> @@ -1607,8 +1596,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>>   				     u8 pipe_mask)
>>   {
>>   	struct intel_uncore *uncore = &dev_priv->uncore;
>> -	u32 extra_ier = GEN8_PIPE_VBLANK |
>> -		gen8_de_pipe_underrun_mask(dev_priv) |
>> +	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>>   		gen8_de_pipe_flip_done_mask(dev_priv);
>>   	enum pipe pipe;
>>   
>> @@ -1797,8 +1785,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>   			GEN12_DSB_INT(INTEL_DSB_2);
>>   
>>   	de_pipe_enables = de_pipe_masked |
>> -		GEN8_PIPE_VBLANK |
>> -		gen8_de_pipe_underrun_mask(dev_priv) |
>> +		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>>   		gen8_de_pipe_flip_done_mask(dev_priv);
>>   
>>   	de_port_enables = de_port_masked;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
>> index 093e356a2894..1b3f559a0638 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
>> @@ -33,7 +33,6 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
>>   
>>   void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
>>   void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
>> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
>>   
>>   int i8xx_enable_vblank(struct drm_crtc *crtc);
>>   int i915gm_enable_vblank(struct drm_crtc *crtc);
>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> index 745ce22afb89..fb01c128e1c5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>> @@ -209,7 +209,6 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>>   					    enum pipe pipe, bool enable)
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(dev);
>> -	u32 mask = gen8_de_pipe_underrun_mask(dev_priv);
>>   
>>   	if (enable) {
>>   		if (DISPLAY_VER(dev_priv) >= 11)
>> @@ -217,9 +216,9 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>>   				       ICL_PIPESTATUS(dev_priv, pipe),
>>   				       icl_pipe_status_underrun_mask(dev_priv));
>>   
>> -		bdw_enable_pipe_irq(dev_priv, pipe, mask);
>> +		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
>>   	} else {
>> -		bdw_disable_pipe_irq(dev_priv, pipe, mask);
>> +		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
>>   	}
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 7396fc630e29..c379d875f432 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2491,9 +2491,7 @@
>>   #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
>>   #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
>>   #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
>> -#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
>>   #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
>> -#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
>>   #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
>>   #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
>>   #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
>> -- 
>> 2.34.1
