Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJ9vGu11w2ktrAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:43:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F6D31FE83
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:43:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4442710E768;
	Wed, 25 Mar 2026 05:43:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RpoV1q+u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B354510E0BC;
 Wed, 25 Mar 2026 05:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774417384; x=1805953384;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HMRmkhlSZeRPoWnIES04wsDI6+skUiaEX4drkp4hVbU=;
 b=RpoV1q+uierUP9SgclU7N77fo9r959G6RvSaPX7eJEO+7cYHz+YQuAhF
 ANTfU/SjzlQWnnr1soNDTk4YXKf8mh6I5N6oCUMatslfZI15zv07/i2aW
 3EvnZKUOrUV19fSzPH+NX5C7QJEb69A+ZdyMi5z2QHEOxEDMtp3d7PPzM
 QZxMBYr703nGYhD1hyGPhlmy797vwNbcf9rM6aZ1zJ33qnOPL7iVOXEVK
 1IkWc6DJp11IbspFiAKMDVRwF7BH0HBRtuOKM3OxAaShPLGNOCnGaq00U
 u3eocdN6vxO56W55PdMfQcoeYyFjfffDioUrERnFS9J9W+7EqOcXYRCd+ A==;
X-CSE-ConnectionGUID: 9FSZzIgVTuu4RtmH2WEVag==
X-CSE-MsgGUID: 5uFmuArnQb67ZBLHcp0e/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="98069647"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="98069647"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 22:43:04 -0700
X-CSE-ConnectionGUID: 8fNVdT17QbulUS5SiSNfzQ==
X-CSE-MsgGUID: tZTyXsgjRBezQGvy195nnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="229357659"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 22:43:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 22:43:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 22:43:03 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 22:43:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Clb+cUjq96zymSfwkHgfVC15dfGoLUhacklfGTtnh1cGl0Csm6bzrMNRWJWk0uMv9QGn8pZ+wdSHASESyCvbaPE1APWOWjYvdCJxTpqUitQF4VAxiAVtAYp0J5jHIoL68Sko5woSinNcwl8m9Ij8LvDzzRLUA0YxQAPYScdTqTSu03MXQ1kizMLWLb9RbLh+NoYKO/PU8/Nde5gSZbwd66ZDU6FWhFGOFMADAxQyVRtDo8kB11aXVeV5gwn31KjHPPHQigLq5hBp0rchavDyWPyFVP78LnfDQIt/O0sJXDWttBphA4zOn8oyxJmxn44KjedzpMZklOzdCNQgC+s4Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kJb2jkJrk+hOJPRB3UQ+XHOSGRlX25eErnZJWc8JDZ8=;
 b=RZSGQ3i+5VqSJ7kt933Xf+iLBOevRtDxGNeRet6FTA/3IrbmKVb5Bl01zaXzeH/PER3v61UnuIa3fhginuOuhMr1GFjKj2ujdyR1+g34urWGp+3fDsaSYtD/4BhLzBVrxvuSfQP03Fr4rzMimzfN2xKQpLvODCEFIX6ZLeTB5k2yvDdyp3iOi7BpUqOH0SfQZb6022MoipYylt/ZLiOdsMivvf3/PG9nZMwq6B+JC9Y5L90NlzGRocjrVDFf4cZJOe4QZdWRW5P62ONfch7PVcxWWU4TMu482hpyI4WpQI53LxA90tClLna81AsA3F8ap/Agspnx30/lXCqYYbG6tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH8PR11MB6732.namprd11.prod.outlook.com (2603:10b6:510:1c8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 05:42:54 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9745.019; Wed, 25 Mar 2026
 05:42:54 +0000
Message-ID: <d6a943e7-b154-4453-b05e-81d12234cf57@intel.com>
Date: Wed, 25 Mar 2026 11:12:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
References: <20260317063713.3288576-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260317063713.3288576-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D35471EE2EBE5EA7E3E92E341A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <4d7f5f9a-9ef9-47b9-9494-b7b67c2b774a@intel.com>
 <DM3PPF208195D8D6962842E2C2C7D797EE2E349A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM3PPF208195D8D6962842E2C2C7D797EE2E349A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::16) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH8PR11MB6732:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cf7b38f-8449-4507-2c68-08de8a315c5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|7053199007|56012099003;
X-Microsoft-Antispam-Message-Info: C51bRkafP36mZSY3U7BvrBIxmnXUVVQ417YixQlKUNfDHyf0s5kaztYrxbNUqhRrN1yJluCCxq6mR3VFan4tp+CLU2BRMXIpGUyARYMEGybehonukHzsBEsjAb+DMnHBA77NF2cP4SBgAjbs9V2GSKH1w+ttRJ7lUZBYl7+/7ZWMlmk4ZGqRBQ/5RJMVvXdteeaft+HjHYDgxFmg3V5AQrrhXCHFlSTWHjZtGShmWfvhtcnTel7SVL5DM0T9mzE9guMbtFGfLGgHckvhhCDwsl08epJ9Rlwd2fljHHlT7KWkyL3sy4s17zYMnBL61H/gKsR92Wx/BhxDggCUlnCv/TT6c9zGp8MPtzenXoRsb2+vfINi0pu/XdgcKN3ApQ7rLMKzVVbFrmneSGwUkMkmh/hMc/BMVzcV4L/RQOhuWEXH4oCxyeSDWA4y2z1LVlTzgiH/pB9GL+DrOQRoy1VZmgFCx/IB0VvK7X8utYTYFV0UMH90ACb3aI+B8foH4vc/NM1pWhgPyobI3M7VHMacAw+VFr38ibmsHmbcp0kb1LM9mT2yCVVe25DYE1qhn9k9ReEB+4hV9K+aDaIOwBjpwQsDY5GyGCxI2nD7FvsMva3mI56x/5WPKNoBUB8j7y5JKPeMFAyO8DZ5oiY3ZnhteAivbY4PzEqf+2ieMPMJv1C/rhoLPmeFjRLKzZxAz44/333IBTnrDLLLVHDqe9sxbosh7mTtNpraM5xzfC/7l/4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(7053199007)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1FId3AzaFQxOXZ3S2c5cEhvQTF1U1krNGFsT1gvNS9RTWhraGlybUxYVWNl?=
 =?utf-8?B?dkYyU3pNd1dsNG9aZFJTTTZQSTRLOGZtNm9KWkl0SjJZZ2tzd1g3TlltenFQ?=
 =?utf-8?B?N2EvK0d4YnFIc1plVi9tMkd3dTFvWXNvQ3pSdVhUMFJyZndVWHdYcnJIZWdk?=
 =?utf-8?B?dGhYNzVvVHZZUWtPMGFEWW1jbG9keVdkK3JhQktYZWhRTUt2RzJxVUNIZ3dX?=
 =?utf-8?B?TE9jZW41OUhDWjlLYjBUOGgyUGVBdGp2TkdNWktCWTN5c2dDUUlRWTNXbUk2?=
 =?utf-8?B?LzlsMHF2ZENoQ3Q4MlY5Y1F4dXNtWXJlU3lYV21YQUI4MGk4c1VjMUhHZHFq?=
 =?utf-8?B?M0UyY0o0ZGI5ZkJKM0RlNEVITE1BbE42TVprazVrQzdjWFZHbFBVZEp4d3ow?=
 =?utf-8?B?QmczTW5xazc1d0pQMHl1c3QzUEg1UGF6UktRcVdWL24zK2gxUFJtVzNPZ2dz?=
 =?utf-8?B?dm1meU41Vkdna0xmcW84OVBaSjNScHB5bGFkTFFDa2FRdm0yaGFlTU93RWRQ?=
 =?utf-8?B?eVRwUmJoUUs5RU1tWGcySlNPWFhrSlRmVTVkOVFIVUQ0cDB5WFF1Sy9zc1FO?=
 =?utf-8?B?TnVNbE9mN0tIeG5ZQ1l0ei9paWFpaW5JK3hwT3pBaENwVmFpOE56WXc2S1Vh?=
 =?utf-8?B?WjBvdlRQVVdSOUxBNFZBVmdUQk9HUHpVbjZpQ0gzZ3oyRVJ0cVhEVVhEOVph?=
 =?utf-8?B?RHJ0d2RQOU1sVENZSTRvL1p0RHVCNjJvakRYNW9nL0hVYUZEMWFBR2dib2Ex?=
 =?utf-8?B?aUZCSE0vNlZtNnppLzB1Zy9COEY4bW5CbHBXYUFGL1dWdlpyMzh2Tkh4OXlx?=
 =?utf-8?B?VW43OCtJTkhVdDVET3krR2Q2UFA0cDNLTlR0dkZNNVY0dm1RazZYUzJmdGJT?=
 =?utf-8?B?Z0NwK25rdnFsSTdJVjlRS0s3d0JsTjB6cjFSZ012MzRBSmVIbWNaeGMvbnZq?=
 =?utf-8?B?OGV6aUJXcXBSQTRhSWl5ZU5LN0xzTU5JK0U2WExFVUdVWHFSelJPZTdOQUVo?=
 =?utf-8?B?Z2JaVnZrWDhMcFNYYmt5MkZNSFdvTWtjSmMyK0ZMZkpoNjhLS2cwOTRLSStn?=
 =?utf-8?B?RHhhbnV5UnpNMGxoTlRTRDZKZlM2R01lK1V6bi9CNTZBM1NkSHR1azd6enNS?=
 =?utf-8?B?R3k3WERNVUdzNC9TRlNqbUl3YXh4K0M2bE4rd0hYWk51c1ZiRGs5cWZWWnE0?=
 =?utf-8?B?Vmh1cnA4NmhVcW5NaWM1Q3pIY0pacER2MEtPaGVVVDE1dVBWQ2FWZ1NlOW9R?=
 =?utf-8?B?Zis1ZWM5bGY2VnZxOXJXR082UHpoSFFidWl2TGo2NTNrYmxVQms5bDVaZGlt?=
 =?utf-8?B?cHowQVdiN1VtbSs2UW8vZXJNL1JrTFE5enpnUDRRV3FYZVdLV3BOM280N2dJ?=
 =?utf-8?B?MlJMWFhBUzlTK1R1aUoxQ1F1QTZRUjNlejVRNWFHVWoyTHdaRDVXS3JFRzJ3?=
 =?utf-8?B?UExHOW5EMkNwTmhMNUNtV2JHN29rbUdIbWdHQnRLUVl0M2t5RGwyR20rZ0Rk?=
 =?utf-8?B?TUI2bFU2WEZ3WnNUd0QrKzlKRkZnVnRWUjc4SVhHSDJXSDFNOUpaeC92R1RV?=
 =?utf-8?B?VUZEdXYzL0o2VlFYbTYvWEtsYnBSSGtFcE5wYlI4WTB1WmtoMjYwRzNRWGF3?=
 =?utf-8?B?M1ZZU3dabnZtcWhkQ2R5dGlnRi9Nd2Y2OER4TUl4V0I1VVp1T3RaMm1lQll0?=
 =?utf-8?B?RGMvL3k5ZEhqWGVwZU9INURLYnBhcWtiYzBBVzRUQk9xeW53Sk5ucEhuTGtq?=
 =?utf-8?B?aXhwSEZaeDUyVHRzRmpvTGF5UnFSeUVuYm9Cd1BZWmJycUNOZWdLdk82RXZC?=
 =?utf-8?B?K3U2YnpvdmVscElWQmF3b2tXOUNFTVA4NktrNktleUNkbFhuSlpOOTg4b1Rl?=
 =?utf-8?B?UkNKYmdROGJBWi9sKys1bStGNmlsdUhnZDNqWlVvTjdZZElQWnhuVEp0eVRG?=
 =?utf-8?B?b0daaVEwZGZmQUlWWUs3RmlrSUlndmJzZEZnSDZiMXZ0N2xURXF0M05maDNt?=
 =?utf-8?B?YkRDd1FRVldDa2kyRkpLZGFGMm8rSjNoMVF6SUhaeFR3aFVja2VteHlsb3lk?=
 =?utf-8?B?bVlHOHN4c3NOWkttcnNZZFUvS3hDZEdYV2Q0YlliTGxFWWorV2ZrOUtUZVhn?=
 =?utf-8?B?UjBoS0JQbm1KaXNudjNSVG9xaGlGeG9RWHF1QlNwSUgvcS84L3pqeWVObmVB?=
 =?utf-8?B?c21Ob1A0VUt5OWNRVVlKbmdPYkcvS3ZkUFdXL2tvaW1PdU11eWttTkQzOG9j?=
 =?utf-8?B?emw5OEY0bFd4U0lqWk1EeVJDU2RXUWlBajlqQ3FRemgzK1crODdyQXBhRGxj?=
 =?utf-8?B?YmxHNEFqakF3NzRIV2VlMzhWeWZFdjRUUmIrY2xQUU9xVmhORFUyUC9pLzI4?=
 =?utf-8?Q?sjkoNcw01kNYTNLeHpNl8omh7LE5olewEpy8E?=
X-Exchange-RoutingPolicyChecked: i9fB0VlGtzcbVAYNfaSxOuBZu5xJ+fwdnvBdsjM8+5Aa3jjxzYui+5CFu/AGn58/0qDR1MTilsYcyl+fyDMq9KepbaIiyfnl72lyiXabrlaUIgmEyzj5wLyJfZPcOoadr6OX51Xq0Q/h6lFb/H2H1GEU8AZYfaqCYMyPzlYWtMNpxrB897GAk5zeUVWi7HPuOWw2zHfWUXtA/KEpUnlwJh6ranHyxYUd0/Gz6mAu3x9sJdE07Q+hZEtvAhj8UjxBuD+uDgJQHoGnq1KaWKSjHA5UCSSqr6ncmI0My/aW38pZTZK7+tH3hMbN72cFWv2YFj8WHMOUMEM0CVURz0OLWA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cf7b38f-8449-4507-2c68-08de8a315c5b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 05:42:54.4865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RB3NoYbHs84WoHxr4ymIU9nUkaXQzzdw/mnBqJUjeSt5IyfEu3H95g6axVa7tBs1LKR4sjYsuvesCT5tIDhWUHoZGYgyziKR3Tdhh9zHLFwF0ER9cPohEfJ+mmB+6HnT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6732
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C1F6D31FE83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 25-03-2026 10:26, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Monday, March 23, 2026 10:14 AM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.org;
>> intel-xe@lists.freedesktop.org
>> Cc: ville.syrjala@linux.intel.com
>> Subject: Re: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>>
>>
>> On 17-03-2026 13:06, Kandpal, Suraj wrote:
>>>> Subject: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>>>>
>>>> Enable PIPEDMC_ERROR interrupt bit for display version 35+.
>>>>
>>>> Changes in v2:
>>>> - Move PIPEDMC_ERROR interrupt enable to a separate patch (Ville
>>>> Syrjala) Changes in v3:
>>>> - Add Bspec reference (Suraj Kandpal) Changes in v4:
>>>> - Add TODO to check the enablement of PIPEDMC_ERROR for PTL (Suraj
>>>> Kandpal)
>>>>
>>>> Bspec: 70296
>>>> Signed-off-by: Dibin Moolakadan Subrahmanian
>>>> <dibin.moolakadan.subrahmanian@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dmc.c | 8 +++++++-
>>>>    1 file changed, 7 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> index 38b284a0db82..6c803b2dcbcd 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>>> @@ -510,7 +510,13 @@ static void pipedmc_clock_gating_wa(struct
>>>> intel_display *display, bool enable)  static u32
>>>> pipedmc_interrupt_mask(struct intel_display *display)  {
>>> The TODO comment needs to be moved here
>> I placed the TODO below 35+ version check, so that after PTL validation it can
>> directly replaced by new mask as below.
>>
>> if (DISPLAY_VER(display) >= 35)
>> 	return PIPEDMC_FLIPQ_PROG_DONE |
>> 		PIPEDMC_ERROR;
>>
>> if (DISPLAY_VER(display) >= 30)
>> 	return PIPEDMC_FLIPQ_PROG_DONE |
>> 		PIPEDMC_GTT_FAULT |
>> 		PIPEDMC_ATS_FAULT |
>> 		PIPEDMC_ERROR;
>>
>> Are there any specific conventions regarding TODO placement?
>> The current location  seems to be correct to me, but I can move it if
>> i915 prefers placing TODOs at the beginning of the function.
>>
> When you add the TODO where you did you are dictating where you the think change should come
> And how it should be.
> That should not be case. TODO should come just before the place where you made the change saying
> "Enabed PIPEDMC ERROR for DISPLAY_VER >= 35 for now since 30 is untested. Enable it once validation passes"
>
> Also the code you mentioned is once way to do it the but the same code when optimized
> Will look like this
> mask = PIPEDMC_FLIPQ_PROG_DONE;
>
> if (display_ver < 35)
> mask |= PIPEDMC_GTT_FAULT | PIPEDMC_ATS_FAULT;
>
> if (disaplay ver >= 30)
> mask | = PIPEDMC_ERROR;
>
> return mask;
>
> Hence we move it on top there
>
> Also a basic cscope on i915 to check where TODO are added will give you where we usually add TODO's ; )

Will move the TODO to the top of the function.
Not convinced the mask restructuring provides a clear benefit or constitutes an optimization.
The additional variable doesn’t seem necessary in this context.

>
> Regards,
> Suraj Kandpal
>
>>> Otherwise,
>>> LGTM,
>>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>>
>>>>    	if (DISPLAY_VER(display) >= 35)
>>>> -		return PIPEDMC_FLIPQ_PROG_DONE;
>>>> +		return PIPEDMC_FLIPQ_PROG_DONE |
>>>> +			PIPEDMC_ERROR;
>>>> +
>>>> +	/*
>>>> +	 * TODO: Check if PIPEDMC_ERROR bit enabling causes errors
>>>> +	 * on PTL, enable it if validation passes
>>>> +	 */
>>>>
>>>>    	/*
>>>>    	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>>>> --
>>>> 2.43.0
