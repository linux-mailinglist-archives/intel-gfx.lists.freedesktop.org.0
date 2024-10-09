Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1738996667
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 12:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C6F910E262;
	Wed,  9 Oct 2024 10:05:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cPeY/Tjz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB90A10E262
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 10:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728468316; x=1760004316;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dcl4uwTqPw7gmQRaFEpw8OS/gCuVnKq1ZZcvjVZsjiU=;
 b=cPeY/Tjzx9H3PZo6D8lONWTR2xjzart0ApaOnOoYBqH8qr0tF5S+Y7DX
 bgvng6CK1LmJuxVnji46oQXAsl84I5YMPbQA+idKJOdu+9mcii0cl/fef
 r2MGP7WOOleqQHa9GN7ymI4sxSY6EZFcHPHtqqlhHhLEmTlOB4mNX6MZE
 ITEp2qMDkGvIEu4+YMG/hEIXkLAW/Cz5CpNxvrkUYcNIGPbR1ED8eloBO
 gS+W8JSvQ7UQR2MgJlICctzGihL8McvRXvhFVFwXe+skItq8OnMwmItJ8
 pDY6ta9sa7Fx7kUqdZW7WHCWM9YB0kcd4LlS8gQH0Ba1xfPFesltjNX4i g==;
X-CSE-ConnectionGUID: fIqbUMbGRi2FqOTCi9T50A==
X-CSE-MsgGUID: 1cyFH47RSVaB7cJnlsAxdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27917066"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27917066"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:05:14 -0700
X-CSE-ConnectionGUID: nb2c2iy2TTS1RM0XjRANxQ==
X-CSE-MsgGUID: 3dbPUAp1SXKWpXNMzfjLdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="77023717"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 03:05:13 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:05:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:05:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:05:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 03:05:12 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 03:05:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W4YUQmZmNJJFPBQcTW8hL7GHqlvpF5dE6HbQ+WcTFtoI5DMUq+B/ASMQOh7PIqxYgKsERD0A+HVvUfyg1uT7PP1NDM0byMXiBIzSBn+gVufp3JfzwWQNEEXo5IX1ep4gdR4S8GvK6M0SA9WQA9Y/rUTiGoN79vplBYFHeocMwHENqGAKaT3XrbZ2LqjFWGVER9FlXl33lrbfiwLKmg+UI36TTz0qUMJAZYVBCI290sPdHjPUkG9iqXUnzwkALNRlKUBV4jrenNiPk3EfB8LGPMqxgjxZGIFHwigNJqnMzDlIUr7vlpE6rkGR/8Wzn9AJEZHomfLHR7PRf7XyaamS8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JXweb+M3Z7dRNE3t9b5SE+w9rqJ8s5X4lZrZ5VYSXdQ=;
 b=AuP+EEeF+9E3Ed1dk9FummuGFcr/EPu544ER/U/agCZt6DCwiCxf4bWUpPQBELRni9m0crwFMfanVytS2NMoyRi+s7EpaXjxOyCiuMUfLDG3Qp/hXvEXAw3pvJOogPQL3YxxOKPJPY3jzN76cVT5/qg2Ai+/rCmmPAleVV1adxYMLkIGLGSRMnMbpxM0hjfFywtWyyhDHTYlCNhsKeu+wAFB1ChIohLtH5zgcBBrT05hnX5SHRlya5Jci531+U8+i8oC20k3BuDCU2dDHlfa1u4CZQgmiQDWlZPpt4fYO6ogNnngD6fGAiqPDhUjzWkmnM5wW6TEZ0CovVOknf/xcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by BL1PR11MB5953.namprd11.prod.outlook.com (2603:10b6:208:384::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 10:05:08 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 10:05:08 +0000
Message-ID: <c7609ca9-4027-47fd-9b58-abf2cb7a0438@intel.com>
Date: Wed, 9 Oct 2024 15:35:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Remove unused underrun interrupt bits
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>, <sai.teja.pottumuttu@intel.com>
References: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
 <ZvQYGgYQcJnXl_wg@intel.com> <98eef4e7-1e43-407e-8f30-b7325c738956@intel.com>
 <ZwYyWdy8m38qnxOv@bvivekan-mobl1>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <ZwYyWdy8m38qnxOv@bvivekan-mobl1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0148.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::18) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|BL1PR11MB5953:EE_
X-MS-Office365-Filtering-Correlation-Id: f4267956-e360-4d63-572b-08dce849da88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eDF5aFQ2Y1BBZnhyU1pkcExraTZUL0x5c3A2Vm9tOXlUVlA2ZzhPcjE2czZQ?=
 =?utf-8?B?RHNsTDJYemwxVDJLZVZrU3dnankxM2licklRRHBValQ2N1ZqRHZ1RGYvemho?=
 =?utf-8?B?bUpZVEEvbzZLTVExQjdvbm1TWDFqc1dOZnFCWEV3MktFMHVmczMzN29QT2Rl?=
 =?utf-8?B?eGpUWnhnejFoZnoyc0h5eUk1K09JWElLbjZJTkE4bXNqUGFuajlVZVVtMENG?=
 =?utf-8?B?aVZpSDZRTGtFSzU2dlJCdXRrMUhkYkJUMmg4Nmx4NDlseWxGbjUreVJ2MUZj?=
 =?utf-8?B?Y0o2aEhjc0JZN3A4NG02WlU3Y0FzRDZTMGFLWkV6VEIrRHBtWWZEdm96eEhI?=
 =?utf-8?B?TkdVeHdYRGxOTTc1T2dYbGZoVVhaK2p4eC9JWTBSRjhNYUdqdUhlR3pCMG03?=
 =?utf-8?B?TGwxZ0dzL2tkUWxrYzVheTRhRzY3OW4wdlVMRFliZzBzRzA1UThmVWpTR0dJ?=
 =?utf-8?B?ZGFxc21sRHQ0NEtMUndVZnNySmFaVkhrRTFWU1dTWHdXZ1Rkempkcnd1U0ZT?=
 =?utf-8?B?QndvVHBkblhJUDBjVXJBamJNUC9vVnh4MmZnTHpOWjJaTDlpMm9YdU9ibzZL?=
 =?utf-8?B?b0JqU1lvb3g2a3k0Qnh1cHJsMlpZZ3laWUJ2V2krMXh6Z3NuZXdIbmtiWFds?=
 =?utf-8?B?S052cXBzdDZ6bXFIWHNLZjcwSlA3aUZpSjVDMDBCVWgrQ1p0bjI0czhzaGlV?=
 =?utf-8?B?aXp2T3IzeVYxU1FlVGZqYmwxTVIrNEd4SkxUQUhtb28wY0JZT1JDTmh6eXJR?=
 =?utf-8?B?RjVZSHpyRW4rSktta05aV2hmWTRMYnUwRGh3QjdIVEU3cTVCYkNWZTBhQnNO?=
 =?utf-8?B?Z1BpWElqbm0wQ3lMdDJNTE1xV2d3SXVWT2FqSFRnWFc2eERBTjBEaHBBTWNU?=
 =?utf-8?B?N1pTbWRMbVp0V2tKNlJQU3F5VmFvYzVCU3AxdHVOc1c0SmJWZXUzTjIwUXRR?=
 =?utf-8?B?NHJsRUdXOWgvMzR6bmtvZHNsVWNESm1MQmwwU3lZYXRpRDBVSStEUVdqTml0?=
 =?utf-8?B?bk9vaGo1d0d0S2ZsTFJJK1FrWWg5eFphdnV1YmVUNzJiRXB0UHp3dnc2dmZ2?=
 =?utf-8?B?TUZIbWtQNWpHZEkraXJwRDFxbWN0Y3hwdmw4cDFWRmJUeUhZVUVKemtjWWJ2?=
 =?utf-8?B?Z3lsRWtzNU9xZjhQRG9IUERwT0FKTUxwTU8za3RzZWQ0dTBTU01JL2sxT1pY?=
 =?utf-8?B?RFFOUitJcGc3dXYwajUvUDhkRlQvUjJOV2h4ZlZQTHhvTjdRUkgrRCs5bTZH?=
 =?utf-8?B?K01MY1dxczl5U1lSZFpJS0ZuQkVQR2V5SkY3cnBVNlltWmh0MndpMERlaytj?=
 =?utf-8?B?elA4NVowaXlkajZyMmZUNlI1MEJNcnhHTXZ0RWlpaWdmQmdNS3B5bmhkVnFT?=
 =?utf-8?B?eHdacWFIeW1WbnJ0anRaNzJXdjhoaEtlY1hTVHE4ekswVlpHTTkvQkhlYXRy?=
 =?utf-8?B?L0hmL2lubHFkWnAxM0JHME92N2NDQis5ekpsNkQ0R1RkRzk5MTBQNDFyV0Vv?=
 =?utf-8?B?WDhhRGgraGhJUU9uSHhCcmdUSHR0Y3lXWVFRRE5YTG83dnc5amVXbGNxZTBT?=
 =?utf-8?B?aWx0bXV4SWRXK3B0TUZTSzdmTjJMUkw1aFZsZFI0dTUrVWg3TXRHMXdadldu?=
 =?utf-8?B?TXYyM1VsYTFjL2xaTlEwNE8ySHZNaUpLY3E0eTUvamt5anNxb1YxREx4OGla?=
 =?utf-8?B?SE0rSmtsVkdSbmdYM3preHVyUWxVZnh0OHNTUnp1VHYrMjM4Umw2WGh3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MEJDZHpzaWE3V282WVpBTHIxa3EvWGd3YXB3NGZod2RYMnJEbmxoczMrY1Ay?=
 =?utf-8?B?RWNCN2d5bUs2SWVHeWRYc2lQMWpBUUZhWjRPRE5TSkdML3c2RWZuQS9DcVJt?=
 =?utf-8?B?SVlpUkxvNkJ5NlUzYXhUbUpCOERjdThkdFZ6OVB1TnZTbTE4cVFURm40c0o3?=
 =?utf-8?B?bmlXQ0NtM1paRHMybnBnZ0xkOFl3eEQydlhqUDcwUnBWUW9pcTU2VnllbGpz?=
 =?utf-8?B?UFBQVDB5ZU50WTVSQThGeitSV0xTajd1UVA0M21PWWE5eFhEUTQ3T0Q5cWpt?=
 =?utf-8?B?YkkyUXE3a3Z5Y29YQ0dlU01SdC9OU1FFMFh0ZU5vOHo3RU83VHgvNExsZDkw?=
 =?utf-8?B?eDBxaUlWckpvU0o1U2JjSjJ0OHQzR2h4TXdZMWswa0ppek5zM2MzcXRMeVZV?=
 =?utf-8?B?R2l5OGRNMER0T1ZveVAwVHc5WHlrSHk4TW1nZ0wxRmRFRzNET1hUYlVpeVlV?=
 =?utf-8?B?dTZQSzlLc2NUVEhGanV2dnVpU1lsNkw2M2U4QjdJU2FqalhqS1JDZW1MWUll?=
 =?utf-8?B?VVJ2TWluMnQ1N3RmakYrOTlOMVFQSW1rU1QwRERJY05oTGVyZ202eDJ6QTVK?=
 =?utf-8?B?NEhHMmljSkQ3VXBFanFOU0EzT2VjV0dtbDVqTi9VcXFWb0lvTVdYOUFZdkVB?=
 =?utf-8?B?RC83SVVDY1ZBQ3ZxcDNYQW82MFM5ekphZ3luRC9Vamd5MkVqT3lyNWY1RmZ1?=
 =?utf-8?B?MHlURXNwL0pMUDZHUGlNUGk1V0FHWng0bWtHTXJTNEx6WVQ0NWV0SzJUN1lp?=
 =?utf-8?B?OWVvNGRlTXQ1dG5LaVF6M0NuVElaYkd4Mm9EWWVSUVNsdkpQOEx0dEtBUGRZ?=
 =?utf-8?B?dGJpWHJMU3Q0dURwWnZyN0ZVRGlLOXdISHlTZVFzem1lbEZMbFFrTW5mdmkz?=
 =?utf-8?B?KzJLVUcyTEFVZzdXZ2hIekkvblhtTzJZS1pseXlGTkxvZUlmTGhOTFdvcndk?=
 =?utf-8?B?YWlSMi83QWViZGlnUlptdWY0YTh1bHhiM25DWjNMcEFUdHJHQXVqem5jOHRs?=
 =?utf-8?B?S3lBekFkdCs4UytRSEVrTWJxdi9DcTRqTzRDWU4xMlhReml4c0ZSdmM4Z293?=
 =?utf-8?B?a21jbVpoVThkSWloZnh6bGpiSUFhQVQ1a3ovd3hkU1g5SVdaZkhtQ1pROVlX?=
 =?utf-8?B?V0RYQURZWEIrSnZOV3J0WGpVTlppUHNGcHYxclcwQW4wVS9hMEUxSHFFK1Y4?=
 =?utf-8?B?ZTFFeEluNTRtNFdtcEl1WUlzQ254cHpCNTVpUkpDQnphNnZacjdyeDRYa29j?=
 =?utf-8?B?aWpjYVpwSDlqeGRPcFliTlBmdFIwU0R3SWpNYXV3WXR6SUoxbXFMc2dwRjRL?=
 =?utf-8?B?Z0NCT3FmNlVtcWg4OU85K1dxUjlqbm5MRmtGUDYzc2RqbWlLUjdXSEJxalZs?=
 =?utf-8?B?d1ZuWmpQZUdtU05TcFlXOVk4bkNtWUlmbCtMVFhFa3ZyRHVzeVF0WDFvd1pJ?=
 =?utf-8?B?elJsWThsbHc5a21xRzNYcmFENVJ3aFljUGMrZXA1YzgyRUg0VkZLcGJpbkVk?=
 =?utf-8?B?UkVycDliVWtlZTlldXhrNDBZUWw5YjR6NmdOeUVneWc2V2NZcGJidzNMeWJB?=
 =?utf-8?B?MGlYK1FOZVJ6SWRMdFJNZW5NMStreTRndnlablQ5WUhQYmtIMngvbW5CZHky?=
 =?utf-8?B?bmNObDhiSmlSQUVLUzA5ZlRRd0ZtKytNWlQ1TWdZUnJrUkQzNzdmc3hIZy9F?=
 =?utf-8?B?dlVOTDZlaGlkd21HN3lmZ3RrMVN0SWl5bUdrc2JFa25WVEozVTNSMTJVU05B?=
 =?utf-8?B?d2hiWFdSUlVSZ0szdVZsd3NncXp1a1JLRU84NlRGMVBUYUxGZjFwMUVrci9a?=
 =?utf-8?B?WXB2L0lBaHZTNVBwZTVGL3UxdUZFcFRzai9QL0lSUEd2MXM1WFhHSkxUaENz?=
 =?utf-8?B?bXBYZWpETmhnUXRIQXdENGoyTW1PYnJCRTBYVllzRHEwYUpOZm9DeXFTU3d3?=
 =?utf-8?B?YlRyUWt0dGQzYkgwKzU3S3Y4ald3Wkg3NzRPMzN3M2JjZXl4ZkRWUS9RcXJy?=
 =?utf-8?B?RkFuZDhGVGVLc3RDZHowdU5teTNXL0VVTXJpYUhtbDVKTm1FaTkyV1N3dkV6?=
 =?utf-8?B?SC9rMWxNUStydnJVd1ZHYjJvSjcrQ2xJRWpzTmpvbksxSnYxQk4wTW9HOVpr?=
 =?utf-8?B?VUsxUldlSUdSbXJMeEpudkNvY1hTK0FYM3ZNcmxlTFN6d0psWUROUVRjbDlr?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4267956-e360-4d63-572b-08dce849da88
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 10:05:07.9739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wqc2rDMSbm0IMSeFRfY8jU0Nck3yH9Q1dumIttM+/2L7bxWzOP8RQ0OrEY2uzmaeNhvnSFX+m6xJ4ZmPDjkoaihzV74RuKLSinu9mookb1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5953
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


On 09-10-2024 13:05, Vivekanandan, Balasubramani wrote:
> On 26.09.2024 10:52, Pottumuttu, Sai Teja wrote:
>> On 25-09-2024 19:33, Ville Syrjälä wrote:
>>> On Wed, Sep 25, 2024 at 04:48:02PM +0530, Sai Teja Pottumuttu wrote:
>>>> Underrun recovery was defeatured and was never brought into usage.
>>>> Thus we can safely remove the interrupt register bits introduced by the
>>>> feature for detecting soft and hard underruns.
>>>>
>>>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>>> ---
>>>>    .../gpu/drm/i915/display/intel_display_irq.c  | 19 +++----------------
>>>>    .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
>>>>    .../drm/i915/display/intel_fifo_underrun.c    |  5 ++---
>>> There's a lot more related stuff in that file.
>> Assuming that you are referring to the ICL_PIPE_STATUS register and the bits
>> added there to detect soft, hard, port underruns,
> Is it only the underrun recovery defeatured? Do we have the reporting of
> underruns caused downstream by the port/transcoder working?
> Then it makes sense to me to still keep the Port/Transcoder underrun
> reporting as it would help in debugging any underruns.
> Still there would be stuff related to Hard/Soft underruns which can be
> removed from the driver like those in function
> icl_pipe_status_underrun_mask, printing of soft/hard underruns in
> intel_cpu_fifo_underrun_irq_handler.
>
> Regards,
> Bala

The reporting is also de-featured. So, as part of the logging/reporting 
we had 4 things being reported and following are there statuses

1. PIPE_STATUS_SOFT_UNDERRUN_XELPD: This can safely be removed.
2. PIPE_STATUS_HARD_UNDERRUN_XELPD: This can be removed as well.
3. PIPE_STATUS_PORT_UNDERRUN_XELPD: This seems to be the problem, this 
is de-featured as well but currently is always set and thus the string 
"port" appears in the ci bugs. Removing this might cause duplications in 
ci bugs if it fails to understand that its the same bug even without "port".
4. PIPE_STATUS_UNDERRUN: This still tells that the underrun happened on 
the transcoder attached to this pipe. But then as far as I understand, 
the underrun interrupt itself tells that its an underrun on the 
transcoder so we need not use this bit specificially I believe. But then 
again removing this and the "transcoder" string there might cause ci issues.

So, we have two options here

1. Either just remove the SOFT/HARD underrun bits/reporting for now and 
remove the other ones at a later point of time.
2. Or remove all these bits and make sure CI doesn't start filing 
duplicate bugs.

What would be your suggestion here?

>
>> I have not removed those bits in this patch because we are logging these
>> bits in dmesg and specifically the PIPE_STATUS_PORT_UNDERRUN_XELPD,
>> PIPE_STATUS_UNDERRUN bits seems to be set always because of which "port,
>> transcoder" string appears in a lot of underrun issues filed by CI. I was
>> under an assumption that if we remove these bits and the log, it would
>> create trouble with CI filters and we might start seeing duplicates of the
>> existing issues as new issues. So, my plan was to remove those bits at some
>> later point.
>>
>> What would be your suggestion? Should we remove them now itself and work
>> with CI to see that filters still detect the existing issues without "port,
>> transcoder" as well.
>>
>>>>    drivers/gpu/drm/i915/i915_reg.h               |  2 --
>>>>    4 files changed, 5 insertions(+), 22 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>>> index 6878dde85031..9d8a101b2415 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>>> @@ -1031,17 +1031,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
>>>>    		return GEN8_PIPE_PRIMARY_FLIP_DONE;
>>>>    }
>>>> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
>>>> -{
>>>> -	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
>>>> -
>>>> -	if (DISPLAY_VER(dev_priv) >= 13)
>>>> -		mask |= XELPD_PIPE_SOFT_UNDERRUN |
>>>> -			XELPD_PIPE_HARD_UNDERRUN;
>>>> -
>>>> -	return mask;
>>>> -}
>>>> -
>>>>    static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
>>>>    {
>>>>    	u32 pica_ier = 0;
>>>> @@ -1187,7 +1176,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>>>>    		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
>>>>    			hsw_pipe_crc_irq_handler(dev_priv, pipe);
>>>> -		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
>>>> +		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
>>>>    			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>>>>    		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
>>>> @@ -1607,8 +1596,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>>>>    				     u8 pipe_mask)
>>>>    {
>>>>    	struct intel_uncore *uncore = &dev_priv->uncore;
>>>> -	u32 extra_ier = GEN8_PIPE_VBLANK |
>>>> -		gen8_de_pipe_underrun_mask(dev_priv) |
>>>> +	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>>>>    		gen8_de_pipe_flip_done_mask(dev_priv);
>>>>    	enum pipe pipe;
>>>> @@ -1797,8 +1785,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>>>    			GEN12_DSB_INT(INTEL_DSB_2);
>>>>    	de_pipe_enables = de_pipe_masked |
>>>> -		GEN8_PIPE_VBLANK |
>>>> -		gen8_de_pipe_underrun_mask(dev_priv) |
>>>> +		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>>>>    		gen8_de_pipe_flip_done_mask(dev_priv);
>>>>    	de_port_enables = de_port_masked;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
>>>> index 093e356a2894..1b3f559a0638 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
>>>> @@ -33,7 +33,6 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
>>>>    void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
>>>>    void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
>>>> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
>>>>    int i8xx_enable_vblank(struct drm_crtc *crtc);
>>>>    int i915gm_enable_vblank(struct drm_crtc *crtc);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>>> index 745ce22afb89..fb01c128e1c5 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>>> @@ -209,7 +209,6 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>>>>    					    enum pipe pipe, bool enable)
>>>>    {
>>>>    	struct drm_i915_private *dev_priv = to_i915(dev);
>>>> -	u32 mask = gen8_de_pipe_underrun_mask(dev_priv);
>>>>    	if (enable) {
>>>>    		if (DISPLAY_VER(dev_priv) >= 11)
>>>> @@ -217,9 +216,9 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>>>>    				       ICL_PIPESTATUS(dev_priv, pipe),
>>>>    				       icl_pipe_status_underrun_mask(dev_priv));
>>>> -		bdw_enable_pipe_irq(dev_priv, pipe, mask);
>>>> +		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
>>>>    	} else {
>>>> -		bdw_disable_pipe_irq(dev_priv, pipe, mask);
>>>> +		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
>>>>    	}
>>>>    }
>>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>>> index 7396fc630e29..c379d875f432 100644
>>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>>> @@ -2491,9 +2491,7 @@
>>>>    #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
>>>>    #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
>>>>    #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
>>>> -#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
>>>>    #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
>>>> -#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
>>>>    #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
>>>>    #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
>>>>    #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
>>>> -- 
>>>> 2.34.1
