Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF5BA67189
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 11:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 955C410E460;
	Tue, 18 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lMZmxYqA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F05A110E460
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Mar 2025 10:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742294393; x=1773830393;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lL4oeUy0WPDInoguY42q3TN7sCbkSPweWG8yo4xNM2M=;
 b=lMZmxYqASxwnBcqL0//voNLiXW1Yg6zMBAhsE2gRyzrzRiiYAbfjNjxO
 c9P+kVJ8VIVa/vguzitlPF2uSP5gwFJHj3AII80zz3YgGIEts6WoSfYsS
 4bFhP+ld9pNcsNkQUw2U5+tKJTF14ZHi4M4JlvOYN811mE/cJNGdHc94k
 TYvRDcz8xPKYhv3AdGYD8UxuJQ/SOz+T1Hwa4KpOqNqQG1ovVxTG/sFKP
 ljijzI2Q8IZD7jjma5MYefteihjevTjDHsmqojv1/l1JOQu3VwqudTaPn
 TY/dAW267Fa/t6lRcLfs4eyMko9VTSnk/1T4L1QJbGNiacmKoI8zFHdGb g==;
X-CSE-ConnectionGUID: TRgkL/exQ5SidkJl+zYvHA==
X-CSE-MsgGUID: 6jyLrLZRTl+gn8oqaePzbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="54056781"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="54056781"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 03:39:52 -0700
X-CSE-ConnectionGUID: ZtrkpkygRYSYkyK5H/ioFw==
X-CSE-MsgGUID: DajW3VP0QRa/VinB96Bn2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122385660"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 03:39:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 18 Mar 2025 03:39:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 18 Mar 2025 03:39:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Mar 2025 03:39:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qe3OFaAQY778J33eJPYIfjyU/QfPGAkizqlq2htwI62QNipKTEaF1iOy1EIABODlUHv0vzZZzumeZoBclv96uohIe3bEUio+5p0UcTTNuq/Ph8YbcdV6vXRys4DSp64FuaKJ4thWPe3MUdYsY4vrrEDQBQdrg6OcCAQvct+Q5kUugZL6zMYl9svOrzqF6GRFFOSyAI4FGad431KdXQlrNdLJyZrKcGaxZye7R/zdBQQHBTb0vT+8bvVhIS90RiLeH7AmE4nNZ7qqsCEXxVzl3StYKNOU3X8DUlLhVW8S91KmkAEH2Vh5f2l5pvgEDWUkRCUwoar8wZ37yFpCMv0M1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bknwini08R5xB6QohyxWCXDMC6OGIgsIaLArWHKp+XY=;
 b=aQNQ+aCx7N6PiGcVZ4SSIN43bbW6rv1pFvph3m0HB7jkejlWd+I7Mz+iUvx40sECd9WEp8fb1Jk4bq6LdAg5LuWz815LpLv1QPCykMA8TffRtctm243eroL2czjxP3mrWgjFcucr/+QIoB1ubPVwz3yF1wWPuAkgzviWGivc7+BVE6DEpnfTs94IIJscssxxQLszHXPVvMoIpwYmOtoJMuvcISwm0a2VSO0TgE67Q7KRGwCny8UDPF25yp2y1IWb5wWPMXmDbJXWTpW87kebagy+7JtV3ZsfNbMAPILIRKC/YoquvZ0QbSxTK2/4eJKT11jFb7AYPHAQaORf68HKJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB5193.namprd11.prod.outlook.com (2603:10b6:806:fa::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.33; Tue, 18 Mar
 2025 10:39:50 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%3]) with mapi id 15.20.8534.031; Tue, 18 Mar 2025
 10:39:50 +0000
Date: Tue, 18 Mar 2025 10:39:41 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
CC: Mikolaj Wasiak <mikolaj.wasiak@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>
Subject: Re: [PATCH] drm/i915/selftest: allow larger memory allocation
Message-ID: <qphk2egnvvuaavj3g34vdfkf64sahttxdwqpi7m2mbyneoyo4u@a23mww3t4o3d>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <wv4aw6syqjox52lpgkddxykr5namvan4eb7b4obj3rligwyp7m@33c3ko2mj7sp>
 <wf7iikxwpvqx77267aaxqhdtg5qjisdowuh5bnnv2o47jowzvb@avicp6k6yjtj>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <wf7iikxwpvqx77267aaxqhdtg5qjisdowuh5bnnv2o47jowzvb@avicp6k6yjtj>
X-ClientProxiedBy: ZR0P278CA0011.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::21) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB5193:EE_
X-MS-Office365-Filtering-Correlation-Id: 2aa38220-57c7-4069-c54f-08dd660935a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TFBvTDdHamRGa1pTb2pkU2dlUFREODYyT09qVnZib0ZtQjc3emFnS1BzTFVR?=
 =?utf-8?B?cWpZL3BlMzhMQzJIOXZjUkprNmg4bUVUajRZTUVPWEFWS2loRXVYUDVnbGoy?=
 =?utf-8?B?a2FTa2hMdUhORjZwNVBaNXlwcWdCU3FZaWNyN1dMNEl5eTRFdFd6NFhHUmtE?=
 =?utf-8?B?NmNjQW1tS3BST1pNVkhJTGpPOEJkRHZrZHBVaU9BVk5XQm1RZmlJVHk1K0RU?=
 =?utf-8?B?dDJVdlF1NTBOZmxodklHUEJFMVBrWnIxTEp0YXkwdWYzUWtWeWdzSnMrOUpt?=
 =?utf-8?B?Q1FTZEN4eGpkeFVOT0xTcnQ5bCtFY1FIWGt2UEhFUkVBK2tMRzR3aHo2MVhh?=
 =?utf-8?B?b0xCRnJyWlI2Z0JYUVd2SUdBblFMcXRrYVhoTGYxSitlS2taZ2ZzKzYvak1C?=
 =?utf-8?B?TWRZNjljWjQwYkZKcEdXc2VjdEpYOG5EZXF0czh3YnVCL3RhNkpnTWVNYkEv?=
 =?utf-8?B?VDNyUXYzUWtUMnhqR1R3QnFTWDJDUXVPTFVZT1FONCt1VjFIVk94czB3R1d3?=
 =?utf-8?B?bVBkUWJOK3F6cjhaVnVsU2RTdEVUK3ZrNEJuUENObWRuYll5MnE1a0tXNER6?=
 =?utf-8?B?ZWE2bDBkRWNycFVPS1JWK0pHU3NCQ2Z4dTZMbGNRV2oxVEJlamtFWHgzbWt4?=
 =?utf-8?B?NWdBcjhnMjlHam1oOUVBOXpnTVRiKzJlZEJsVnFPN25MS1RwUzh0M00vTnM5?=
 =?utf-8?B?ZXFTcHpTbVl6MzVaTENtS0pha21YWjAxYUlYWnNKVzd5cCtSM1ZTZ0NnaVgv?=
 =?utf-8?B?SXdxS3BZZWEzZDNPVzdmdFFZb1BTRGdQVmR3cTlBSDZoNHBZS1dRL25BRysv?=
 =?utf-8?B?bVJTK2pqeUdFZ1dYVnU3Nm1YdFk5MFArQ0tDR1pCeG4yRXZtNkdTeVRCajVY?=
 =?utf-8?B?WUZ6dUZrVXZnb2dsTmhjVUs4d0JtSWlENnI3TkdQZ1NHRjNtMXQ5ZmIyMlQr?=
 =?utf-8?B?ZmdPMXJGemxYbTN1T2NkUlZIS2dlRXVrNEIyTmR6MFl2MnR4MlMxV01uZEV4?=
 =?utf-8?B?dmZmRE81b3I1QmVFOGNINnZNZTlmYWxFSm42aXNLZHdLb3IvUkp3WkxSMS9s?=
 =?utf-8?B?WUtWUzEra3JDb3BoRWFHNzk4dG9LQVNKbkUxdzN1SWE5WUJuK0tJdFNNdTJT?=
 =?utf-8?B?RU5DOTVsbmtMMUlNMjRWRlpmK29nSERkSzhKUGR6Z3kxTldKZmN3VllMaFBB?=
 =?utf-8?B?ajJIZTR1aExrK3ZUQi9tWmg1QU1pSU1FZTJSMjd4aGdDOXpPeVo3eS9KV1RV?=
 =?utf-8?B?Mm85VXREKzNsczFmck1Xa0RLVEVmZzE4VnNFTlppS2crWVVmSjlBSVF4TUZK?=
 =?utf-8?B?anNQLzlUUDlIQ1pwbEZUSWxmZVNKYWxNTDRzSkIreHV4L2psNEFuMWZvYk56?=
 =?utf-8?B?Q0x0OUlhaC9xK2hCRE1mdWFnekJTSVo1QXRQeW5SU0wyc2FOeWFkZlZEZmxn?=
 =?utf-8?B?UEIwbUVSSlFtOXNCSEN2cjBiUDJVMzM4Tm1uR0RYK0hUOFg5RnFCWDNjTVJw?=
 =?utf-8?B?UWRtemxwZEtieHV3YW9TM3poNURBRnpUUjBmOGZseUJjMTEyOFpESFdic2pk?=
 =?utf-8?B?VGsyTzg3djlWcFlleTlBMCs4MWxBZUQwVkxiUEZxYzZ2cTVES05PMHV5OEdn?=
 =?utf-8?B?NDRtTG1jUDZOeVZ4NEtPZk9wcDlkUXI3aTZRc295T1BQbUhhcENUUjlrREpy?=
 =?utf-8?B?ZGREVm9zMjRnZHZQTjBMQzAwTlRKRWgzdFJ4RVlYZDFYa3U3MmY0c0hJOGZo?=
 =?utf-8?B?b2Q4b0NmSmdnaWgvSUY0U3pxdmMvNjZBVGlRZU9tK3pEaEd3VXF0cGRURElL?=
 =?utf-8?B?MmtVRE5iWUQ5M1VBQVFXT2tyNy9vcVk0eVgwQUQzVXYrblhIaGNIMU10RDBZ?=
 =?utf-8?Q?HleAxgMHY4Zx7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnVmL2o4NXFVM1MrQkZsdk82S0xWckNiMFJ1V2ZKOG1BWnhlZzEwQWQ2YW55?=
 =?utf-8?B?N2hrK2hDdHBtUU82Q09hWEZrWnVNYTBHbEJWc0U2cXZMdWE2MjFuSjhRYzRD?=
 =?utf-8?B?aFNwQjRyei9OMVJaOWt4b0Q2UzZobEpmQ0JKcU1HVU9VeVQ4SngyVzZJbGZM?=
 =?utf-8?B?VGx4VFlkU3RZMkpvZm9ld2pkY1RaSHByWE5xVEFhS29NZHNvV2p6Z0xVV3Mx?=
 =?utf-8?B?MFkyRG1zTzIrKzZEY3ljNy85bzVWeG9zMU1TdStIcURvR1laN1pCa3FlTUQy?=
 =?utf-8?B?azVyeG56SVBZYXRNSlB5Y0ZsWFhFanFNTElnN1AyY0hkZXZZTWZQamxDTGxv?=
 =?utf-8?B?c05WTDVGdU9ISUJrVmNCSVBrQ1lnY3Bvc25LdjJKazFIeUliWXNuREF0cjRp?=
 =?utf-8?B?a1Fjb1UxWGJsYzZteXl2TVN2R0VFc0YxV3JDTzBJR3RqR3BSbWF3allEQWlM?=
 =?utf-8?B?eFZtNlJUUXU5Tzg1cEtzZlZpdGxxNjMybTFTNnpaMkJ5YUtYUzNnaEZOQndv?=
 =?utf-8?B?TzhTRldUVmVVZC9QajJKdVJzZDdaOUE0bU1NdTg3UHdBTWZnUlJqaGJBVzRm?=
 =?utf-8?B?WG05R3haeVhwWHJVcGJUL1JhMEtEcXhPdG9MNmVUdVdodXIyQnhvc0UxcWhu?=
 =?utf-8?B?NWdvVWdhejJ6dHI2cUVRZW9ZdU5yaDZEVitpUU4xdzAycHkzWVBFQkE3SjBZ?=
 =?utf-8?B?Sys5cWljdWdCcExsTzM3c3dPS2hMUHlwdjRZUkJHbk95WHg2K1BTMVZLbCto?=
 =?utf-8?B?MHAzUGRxVzJpVlZaRzBaeXhOZk5UZWMyUkJKZFhYdzlnNzd4aHVhaG1Jeiti?=
 =?utf-8?B?b3ZPQ1RwcjRaclFyV01sSS9ycWMzbWpHc3VrcDR5ZmVMTXdMZ0tDZnRFRGVi?=
 =?utf-8?B?SDRuZ1p2a2xjeDhTakJSdFdiVk4ranYwYlFsVnJqdkh5Qm9qVitzNUhSRU0z?=
 =?utf-8?B?YzQzWm50VTM2L2pRTmNTbGNhVG9NQVVRTzcrNHcvZFZ1clVrU0RHc3JnM24w?=
 =?utf-8?B?WmxEdStDcVVoZW1XTHpkb28xN1FRd0FhOTJFZEJ4K1RwYVp5RGpXQ01SOEZR?=
 =?utf-8?B?QWhoNFRzMDNYNTNNVlZKTG92MjgxZ1ExWkxjUUtKN1dNUHdRM1FMZWY5dDU2?=
 =?utf-8?B?RTRhVUwrdG1VWkg2TDNsMVR6YWQxOTdvQjExaGMvWU9rMWdQRkJXTGNJb2tF?=
 =?utf-8?B?SjFFVmZXN1BPNnJIdDY2VEREN3cyeHpFTWE4SGNYbG90UEpwQWgvSmY2RHd1?=
 =?utf-8?B?azczR3ZoMlUvcXZ4eHJQVXFyKytsMUJvcnFleVZaWUdFWmQ0MmZwOFBCZHRR?=
 =?utf-8?B?TFhPaVNpNUR0cjNvbXhVcnpLMFJyelpZY2xEWFFpWW0xYmhYc1RvV0FKcXNX?=
 =?utf-8?B?WlU1R0ZQMEV4VFBXeHNLMFc0bFUxbXlWczl3TW1BbVdQUitVTmJnSlc2Uzg3?=
 =?utf-8?B?eUVNZGE2bnk2QjQvQ0JVREYzbHNUUnFhUHo5SmlMRWpzTWkxQ01mbzhDbEw0?=
 =?utf-8?B?R3BCbm5xU3hLMGQzYjNncWRHbHN4T0JWSWV0bkJlSjh0alczT1RCMEpKUzRM?=
 =?utf-8?B?T3AxUXdibC82WXdlQkwwUEsrSkw3MHdGcWphOUFnUVozSWU0NXVuWTRVcmRw?=
 =?utf-8?B?YnJETGQwL3BXZGVWbkY3RHg3eU1oMWdkaFBiS25lWUVxWElSRVc4cnA2MTFH?=
 =?utf-8?B?TEgxQXh2WFNNNE9NTHlSeGM1ZlpWWjNDdGcwNmxPV1pGL2FBYU40MEZZMlpM?=
 =?utf-8?B?Q3VubkR3ZjBJQzRMOTliQ0pvcS9Ea2o2VjAzZ1VLbWJtS0d3TWVCNzBVK1Nk?=
 =?utf-8?B?c3Z5d3BMaHB6ZW1YMmdweEtMRm1PaTNWOXUrRjhjM0g2T3B2UmZUS3F2bUpB?=
 =?utf-8?B?YWJQc3dFUGdXcUdVd2YzbGpEd2lwdkZHL1plWm4veXAzSWc0R280WkVaY1Nh?=
 =?utf-8?B?ZHZpZUJubEVYL1BrNnR4UjdHTkV0ekNGVmJiZTN4c2l1UG5ya3pGWkNjNWx0?=
 =?utf-8?B?MmRIT0NldVhydUdzZ0lRY0lLSmVGU2FGRGdkZFhrOVNJUXd1WW5nUm44cTl5?=
 =?utf-8?B?VUcvN2wzR2FKQms4ZStQT1hSbjNyQ1RsM2NIYW5Lcml6WFJTTG5sSktvWldE?=
 =?utf-8?B?ZFdNWk9qTkNjcmI2MmJxdTAzWVBGUGJteXptUGVtL29XcDFQakhFR2creHhS?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aa38220-57c7-4069-c54f-08dd660935a4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2025 10:39:50.0663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZQBAXOlWpTKgJ1SBBLFjLPufMpHtK/FDvnAW31AhoOUC0RYbUs/iCFS/pqPhBsgsXROXqPu7z76zy0MTg2b2tKG8YrS5P/ofyvxAydVTeXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5193
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

Hi Krzysztof,

> > -	/*
> > -	 * While we should be able allocate everything without any flag
> > -	 * restrictions, if we consider I915_BO_ALLOC_CONTIGUOUS then we are
> > -	 * actually limited to the largest power-of-two for the region size i.e
> > -	 * max_order, due to the inner workings of the buddy allocator. So make
> > -	 * sure that does indeed hold true.
> > -	 */
> > -
> >  	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
> > -	if (!IS_ERR(obj)) {
> > -		pr_err("%s too large contiguous allocation was not rejected\n",
> > +	if (!IS_ERR(obj) && !is_contiguous(obj)) {
> > +		pr_err("%s large allocation was not contiguous\n",
> >  		       __func__);
> >  		err = -EINVAL;
> >  		goto out_close;
> >  	}
> >  
> 
> If I understand the test correctly, the goal of the part that you're
> changing is to see if an attempt at allocating more memory than
> max_order is properly rejected. Since the allocations are more granular
> now (not only limited to powers of two), and size doesn't get rounded up
> to the higher power of two, we should be able to allocate 'size'
> exactly. Meaning we lose the intended functionality of the test (check
> if we can't allocate too big of an object), because we're not allocating
> too big of an object anymore.

Since the allocator is a lot more lenient now, we could focus on
getting a contiguous object instead.

> I guess a check for contiguousness does not hurt, but the test behavior
> is fundamentally different here. Maybe manually rounding size up to the
> nearest larger power of two would be a better idea here?

Before changes were made to the allocator we knew that there
was a corner case with rounding size to the power of two. Now,
we know that the allocator will take in any appropriate size and
give us a valid object (correct me if I'm wrong here) - if that
is the case, then this should just be a check if we fail on a
size that is too large (unless this is covered by some other
test).

> 
> > +	if (!IS_ERR(obj))
> > +		close_objects(mem, &objects);
> > +

This code would obfuscate the original purpose of this test and
just pass regardless of successful or failed object allocation.

> >  	obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
> >  				I915_BO_ALLOC_CONTIGUOUS);
> >  	if (IS_ERR(obj)) {
> 
> I'll paste some more lines from that test here:
> 
>         obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
>                                 I915_BO_ALLOC_CONTIGUOUS);
>         if (IS_ERR(obj)) {
>                 pr_err("%s largest possible contiguous allocation failed\n",
>                        __func__);
>                 err = PTR_ERR(obj);
>                 goto out_close;
>         }
> 
> This is the next check - we see if the largest possible allocation
> (according to the old logic, it would be 'size' rounded down to the
> largest smaller or equal power of two) _does_ go through. The success of
> this particular check isn't affected by the allocator changes, but since
> rounddown_pow_of_two(size) is not the largest possible allocation
> anymore, maybe it's better to change this too (e.g. drop the rounddown
> function). This way we keep the intended test behavior here as well.
> I suppose this is still in scope of the patch.

Yes, this would be a bit different than the original behavior,
but we'd be sure to fail object allocation. If no other test
checks this condition then this test could do that here.

Best Regards,
Krzysztof
