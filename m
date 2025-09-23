Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D05B95717
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 12:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5383010E5E0;
	Tue, 23 Sep 2025 10:32:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JAynSp6W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8160410E5DF;
 Tue, 23 Sep 2025 10:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758623576; x=1790159576;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u+C9/JlaPC6sYfA0ygfJN00nD2+SU7FjvfHfWvzOwDk=;
 b=JAynSp6WXQn11xetZRozW22V3rXY7E55iVA6GETi3ZmqaKsqKjwA9YEL
 3zjKGXb6gx2e55PTrhO/x9eyERDS7fMuddJC56gFn9QeMpPqUfb58/6oJ
 aoXu41NKPpzJyqApA0fKnHdNuCt9+huWLwOrG0a+FfsawA2Sxh1pxUwZ+
 0RIyo0OhaQ61JNqsDrNMYL1PMciuk9zM9bZOTf+SS5YmUCc+0aOk1XFL6
 uiZNoznxAv3+Oj9C72Uz62NmIpN1sMVh9SUtdB9J37228y8rMnAzQP5Lr
 mISq7M6+MnOJydG7YE4PnqrybSjtgOllWWluenwWPouSFn9wwEQ9NDFNU g==;
X-CSE-ConnectionGUID: 816Ebqy9Q8iKwwxdnJ1Biw==
X-CSE-MsgGUID: +z/j1j+NQO2vbRAICh9hnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60816037"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60816037"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:32:55 -0700
X-CSE-ConnectionGUID: yRLPi1+4QJC+/ECkBd/dXA==
X-CSE-MsgGUID: 946IrPxDTsy6b0rZf1cRMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="177181620"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:32:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:32:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 03:32:54 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.44) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:32:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rwp8CoCVySMBEqVK2ubmNTZMaUYTxJOjpRBFnSFfe72NB3fXqkvRidvbaHVbhGFwAlgz9yet134c62PkBn/atiSUeGU9y7yJRsJ3O9xpLIUaEksVXXa2xI/3LbLIMGlzRuWBa6hrbuMU9U4LxeNEAlpfLdlh5Y3Ru3ngB+RGJ1ggVWN1FcUMZ5Szl5Dt/8WeheYGePZ6nCivUNSXnFqGwsLuc3uSVmkSfc9yKEM+WTdoHgUOtYgdODd1Zw9I0elUoAK2WslP1OUci4swqzjUW5u/gMF4bgR12pLCEAygdgqRVUqL414aWwEBueet3yp1vApFyRrfnZIP1uiRgi0cZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b7EVnLw41swuD/YCSoHn+hvTO6C4Nt4JmXHrXv1XvqM=;
 b=kL+lgpMydmnr2xY+ccVJm9SyZNfk5fpn1Fby1VEDuSCvJ7jP3KdF34xEtiNSVq6efC00JrD5RYQWB15QBnFqphJrdgWH6AO3X3y2hpLCLqCL8Ap+DZ9dbqg+YXr6xgVP8od+Abk5uSjTUHWHaIz/KPzCmyMjkLdNFU/89XuKOWnfmpTHzjO0R105hPSfubhhrSi3Dw9QJT4MvZvwtNgyN8zT+3LL/eDDwPxOQU2jtPVc0coFFKoPPDjPE5ACYpTloDvD7oPTj8DYeSFxwosvKb8k7qvMLngKqgSJPlof1Tv3VJ0Ng4eww2gU3ZbmoicrZ1+188azZj2Hsc6VIsNh7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6429.namprd11.prod.outlook.com (2603:10b6:8:b5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Tue, 23 Sep
 2025 10:32:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 10:32:50 +0000
Message-ID: <96463f12-bdbf-473d-936d-57d2483d435c@intel.com>
Date: Tue, 23 Sep 2025 16:02:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 9/9] drm/i915/vrr: Clamp guardband as per hardware and
 timing constraints
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-10-ankit.k.nautiyal@intel.com>
 <aNErtwXjQHDgMADC@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNErtwXjQHDgMADC@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6429:EE_
X-MS-Office365-Filtering-Correlation-Id: bcc0457f-8324-4e1a-2cdc-08ddfa8c8bcd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXlvTzB6RENoNTBpVW9RVUxuZ1FYMlRhL0l6VW03NHBlOEYxWUpFMUJ4NVVJ?=
 =?utf-8?B?MnJzbjE1ODdsN3hRNmZqUDNkWUFOTUtGcEcxanRqZThtL2xicDlTdEtESjdh?=
 =?utf-8?B?c3NIeFZFQWt1TElibG9iV1ZraFBXYjBHekpWQ3JQRUNGWHJNRFJ2ZG8xREk0?=
 =?utf-8?B?SGw0V2dxUC9nb3RMWnNORlAvU1lqYzYwbUNMbG81SzVqaUE2QW5zUE1wYUVj?=
 =?utf-8?B?NXJENERCanc5bVRRMDNkYmxNd0tjdFVoV25KcWdBSWJmdm5pc0cvWVZhbVhB?=
 =?utf-8?B?SGxEYXQwWTV6YnJCVXFPTm5uMVQ0eGJDSG1iVlhXdlR6Q3g0RkE4cUE5OURn?=
 =?utf-8?B?cElrOCtzRXhWcFJWbDQwOVdJeVN2dm5lTWhIeERyRnBYQnBUTk1pZnBxZFUy?=
 =?utf-8?B?Z2xsUzZ6aW93WS80Wk0wVEV0YUIrSFNBVlpTN2NVeU9xVFRqdS9aRjFLTHlj?=
 =?utf-8?B?aExoZnROVXhLVEpQaHN5ZUJTWE9qbmUvcENsbDlHNk40dHRwdjBBb1dRUGw0?=
 =?utf-8?B?dXFrUHBCOVUybTh2Q3BvaE9aaFlHKzczT052UU9uNkFheGR1MnVDV0FHZXBk?=
 =?utf-8?B?YUlkMStrTVBZTllpSlhJL2JDTFZHOTcwOVVoSWZJVXZncitWOFZQTFBZNEUw?=
 =?utf-8?B?aGVKckZTUThhelFKVitTTFRlMnZwMytRaTQwMER2TTVWZWFFOUdJZndnQ1BS?=
 =?utf-8?B?b2lRM2hhK2VPZVE2R1JFZ2RnNzJ4OHh0N2dROEFjdTI2cHlIdmpLbkdHMjNq?=
 =?utf-8?B?ZzI2RGM4aTJ6WUNuMVQvZFh5bDc4Y3VxYythMFA1YVp6dGtXTkQ3bXRaN0Yv?=
 =?utf-8?B?VTZGV2haWDd5cnFTNFhKdFRFZ3VKek45MFZzMVo2SlF6eDlpQlZQS3ZPS2Q4?=
 =?utf-8?B?T2svVVp5bG1QcUtOQjBHVDNNZG1nVE1YaVpvbElubERubkdUSyszUGt1WkFI?=
 =?utf-8?B?czlhS1JsMW81c1NQMkQ1YXBiK0N1ZnVNQlNTZ0YyOFQxZ3hIbmdkd3JyTUNH?=
 =?utf-8?B?dy9ZWXptQUN4NndvMWVEYW1jOEpzbGx3b05vSHU4bVZBcjN2NDlYbnVqem5N?=
 =?utf-8?B?YWUrV2dMM20wQXhsRk1wQ0xXUVE3QkFpN1AxS1Y0cllabE5hQmZHTTYwSXla?=
 =?utf-8?B?WEMwMllKcks0WUhyR2g4dkVKOTRwVi9GZUk3Y2I1NkpVN2JVNkEySldsNVkx?=
 =?utf-8?B?blh5czlJdlZYYUhmVnJFQU51NnRKUzBIZHZXMkhnald0UFRXMTNBMmtjTDd5?=
 =?utf-8?B?UnBPeGE1dmpQZ2YrNHBVQ05OdVFrZnFrNFA1b01VMEF6Sm5UMEoySjNKYW0r?=
 =?utf-8?B?cWx1MkZyQW01OVI1R2pWMzlRZmZoa3FsVVNsS1piU25qSmE5NlhFOUVMTXE1?=
 =?utf-8?B?ZE1uZERtMGk5ZlRNeitRNVFvUk1iZUp2K25NZTZ4b0ZIZnBYYndMellvQWND?=
 =?utf-8?B?dTQvZlZRRkR0bVE2L2pyaytXRHNrd3gyRjZpT2RwUXhwc1g2VFJzdjdpMGx2?=
 =?utf-8?B?akZBQVYvT2VPL0JjT2RXN2E1aUdEd3A0TDF4cjMwSWk1eCt4NjNBVVo0SUJ6?=
 =?utf-8?B?ZWhRSnNWWTZvb2VHWHFiUU5iZ0dDbUloT1BQQkphM3lOd2lGNFFaOXRjdWFh?=
 =?utf-8?B?bFRhNnJCMlU3OVVUcE1TVnAwa3dUS2RhQkM2SW1CemptajFBMFpZM093amlv?=
 =?utf-8?B?ZTFqN3pMVGx4dDZoYTA5TVpHMmxzWmRZSThyT0FiRkMwbG5qUVNGaUN6b3Rr?=
 =?utf-8?B?WUdHd28wdURzT2VwR3F2NlRzNU9KNmtTQ2VaNGw3eGZmU3pFakFCRmNxeHJs?=
 =?utf-8?B?d1pRMVFpUGFQb0JTQ3lITSsvV0QrckRRbXNOcHZZbEdKdXVXYlFTVU0zZVNF?=
 =?utf-8?B?Sy9yU2R6a3Z6OHlFQjZ2aWF6cHVseWN6U1dSbm1sUlZEb2R3MkNleGgzZnBW?=
 =?utf-8?Q?sWcXNymTwBc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L25NamlHRUIxU3FtQzRxNmMyRjcyeXNkdEdGNHJzeEY4dFBaQUE5ZnlNY3FR?=
 =?utf-8?B?UDc3bUhjTDczd3RXL3U2Y080QkpKd2dSS1pvb1d2VTRnY09XaU1FYWtmSzVR?=
 =?utf-8?B?K2pNU1N3Qmpyd2g0Vm9PQVlNaDFOQUVxMWF6NUp2bkI5WVhJZWVHbVJUcE9x?=
 =?utf-8?B?V25PQUprV0JrYmtBUGV1OFRaNWlHV2luT1l5SkxwZUpyaUNIMGt2dWRvUCti?=
 =?utf-8?B?SnV2cFZQNytoQzRZUmd5anZvZm5adElCU2ExL1M5R093SzNMU3g5NEFJTHA0?=
 =?utf-8?B?WjRmdkJQbGttMGVZYXlYd1d1YXE2K1djYjdrcHN2U2FMRWRtRG1kR1dXR0dU?=
 =?utf-8?B?dGhGN29WU0ZnbnhoNXNpQ0JpbW5wTzBNSkFvYWlmVWJkSlp2ZTVIbENSTkEx?=
 =?utf-8?B?N3FZNjk1SDhpREljOER2R3hyZVFDc1BZVnhCdWwwTFhxQUxVeVN0NTh2YVJ1?=
 =?utf-8?B?emw4R1BxZHJDaGlmWG1ZTHdUOVl5MnQzMVNocW40MHA0U3BDQTJTV0EzV0Vt?=
 =?utf-8?B?TWp4bDBhZGp1Y2dDODRienRQUU9KYmVveDBtVFY2aEdTKzRLZjhWWlVpTTBq?=
 =?utf-8?B?SWl1b29JblJDcVd3R2laWEVyU1JUSWY1ZGVTUnE2RGlGaFhHNFphMmxBbnVV?=
 =?utf-8?B?TGNWcXNRWkE5N1lqamdqNnUwQ1BnMGNVaFhWR1JpZjhKdnRZdVJjL3JRN3kw?=
 =?utf-8?B?REFWRVZkVERuUWlhSzB5Y2txazBRWEw1U2ZnT3ZvRGlKb2VHM3Z6dUxIMlFn?=
 =?utf-8?B?Q1p5ZE5tRDY3b2NaelZORmRFNE11MEVIdkIwYW42Y0lEd0Y4eUsxb3lRcHZw?=
 =?utf-8?B?MTM4OE9URlBkNmNrTzI0QllIejIwN2k3WXlnQ0hBc0E4eVV0Z096aWJZcVZr?=
 =?utf-8?B?WG12ak5HWlBwUHdlcjNTSkdTL0hVbDloOFlCQ0lkZUpXVS93S2lEejhrRDE3?=
 =?utf-8?B?K2xPTSs0Tlh3K3htZWovMVMwTU8yT01oUWhSbmFkV2RjMUQvQ29JS2hSaE5x?=
 =?utf-8?B?YnZwWC9ud3RLWVRTd0lycXQ0S1daR3o5Qmg5bGVUM1l2eGFaODh5b2ZNaTg5?=
 =?utf-8?B?OUhveElZclFwRVVIeWFMelRpeVAwZEVtL0RRN0tLU1JoRDVESGR0bGJWVWJH?=
 =?utf-8?B?amM3WGxMQ0lhQVRxcXNEdmZsWXFvME5xRmRpbGRsQ0MyRUxZaEdmLys1OXNK?=
 =?utf-8?B?b3E4UkJkcER3OThaMHltbHVaKzhKeFF2V2NOblE5bDBUNkFDSkxvVGNleTl6?=
 =?utf-8?B?aUlpb0dlMzE3TWl1YlViUlF2SzQrb01sMDVTN00rbFU2L09mT3VwZFNvSEta?=
 =?utf-8?B?S3VURXpadktjdWpRU0RKSWR2U1BMSWVxRHVyRDgyTGZiZzR2aVVqRlRrcVNo?=
 =?utf-8?B?N2ZQTFRDRmZQWWRoVVQyWGFaK3h5dE1GTmdiWVk2SlUwR2k4cUVYS3J4ditW?=
 =?utf-8?B?cEtqRkVPT0xVT3Rna0tOZXhnSVlXL0NoeEVScVk5eVNSbktkTU5FbjlIblJO?=
 =?utf-8?B?ZnZjM3g5WFJqVkl0NGZOc3ZkSGVRTThaVnpEVWZmYjlNeFJKL2EwRDZmdWxV?=
 =?utf-8?B?VHU1VFhmc2tYd2tXcEtSSE12M2VLQ3JoUHZtT1pXK0VyYzZ2VFl6VEZFMmdL?=
 =?utf-8?B?MnJBN0QvaGIvcDh4Ym5yOERwVGM1QU5JNmQ0eXhEbW1JUDdOeG1mWXVERktQ?=
 =?utf-8?B?bnZUai9pODh0YUlhaHJyRnNoTFhkNE1Vd3JIWG8wbVE3TzRoaktGWlVKVGRJ?=
 =?utf-8?B?dnVNTUl5WFYzRTNMbEVFTnpOL3AxbksyYmFOUTM1bnNCbVdLT3NJL1dSUmNN?=
 =?utf-8?B?ckFTMXFZeVcwVmZYbzM5cndkVXlRVVpMV0t4bnRkMVZJajF1MWJTbU02L0ly?=
 =?utf-8?B?aENVRlBTc200c0QzdllEdGNnQ2xLVTMvbFE0U3pqK0k4cU9hZjZINEVZMmNX?=
 =?utf-8?B?WUVZa0ViWVhaQllVcnVhQVhJcUhRejZoSjJaQktwZmhtVCswZkU0QTl2M2dO?=
 =?utf-8?B?VmVKMTVaeHF6QUNFVFdBWld3T3NrZDBJZksxbEJjQk0zNytMcnhXWFJqYkw5?=
 =?utf-8?B?UEgzZjNLb0NBNElHZTNNSi9WRHJXS0VVRE5ZY1pza3FnOVVBeTdGL2xPZ05R?=
 =?utf-8?B?M0FReXBVTWlaendyc2dBbzRtT3RNdDRhVjlQYmd3KzU1Szk2Nk5ZUEh5WFFi?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bcc0457f-8324-4e1a-2cdc-08ddfa8c8bcd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 10:32:50.8517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /5LoA+ugXOGEjIyuPGIg3H+eoz9Y+BjJSXcCc3TUdCVvDzbImmZawGhB6daWaBGQU9YLyPPHWLuIwJABAbj4XeArMB3/cnvXPZhk8eYCVDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6429
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


On 9/22/2025 4:27 PM, Ville Syrjälä wrote:
> On Sun, Sep 21, 2025 at 10:05:35AM +0530, Ankit Nautiyal wrote:
>> The maximum guardband value is constrained by two factors:
>> - The actual vblank length minus set context latency (SCL)
>> - The hardware register field width:
>>    - 8 bits for ICL/TGL (VRR_CTL_PIPELINE_FULL_MASK -> max 255)
>>    - 16 bits for ADL+ (XELPD_VRR_CTL_VRR_GUARDBAND_MASK -> max 65535)
>>
>> Remove the #FIXME and clamp the guardband to the maximum allowed value.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 36 ++++++++++++++++++++----
>>   1 file changed, 30 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 5fa86356a791..9bed273f96df 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -409,6 +409,34 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   	}
>>   }
>>   
>> +static int intel_vrr_max_hw_guardband(const struct intel_crtc_state *crtc_state)
>> +{
>> +#define VRR_GUARDBAND_MAX 65535   /* based on XELPD_VRR_CTL_VRR_GUARDBAND_MASK */
>> +#define VRR_PIPELINE_FULL_MAX 255 /* based on VRR_CTL_PIPELINE_FULL_MASK */
> Magic numbers aren't great.
>
> We can get those straight from the register definitions:
>   REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, XELPD_VRR_CTL_VRR_GUARDBAND_MASK)
>   REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, VRR_CTL_PIPELINE_FULL_MASK)
>
> or perhaps
>   REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, ~0)
>   REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, ~0)
> to be a bit less repetitive.
>
> Hmm, yeah I like that second form since it seems harder
> to screw up the masks that way. I suppose we could even
> formalize this sort of stuff into a REG_FIELD_MAX() macro...


I was thinking to have a wrapper REG_FIELD_MAX() using FIELD_MAX defined 
bitfield.h

Or should we have  REG_FIELD_MAX(mask)    REG_FIELD_GET(max, ~0) as 
suggested?


>
>
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +
>> +	if (!HAS_VRR(display))
>> +		return 0;
> No one should be calling this in that case.
>
>> +
>> +	if (DISPLAY_VER(display) >= 13)
>> +		return VRR_GUARDBAND_MAX;
>> +
>> +	return intel_vrr_pipeline_full_to_guardband(crtc_state, VRR_PIPELINE_FULL_MAX);
>> +}
>> +
>> +static int clamp_guardband(struct intel_crtc_state *crtc_state, int guardband)
>> +{
>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>> +	int vblank_length = adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay;
>> +	int set_context_latency = crtc_state->set_context_latency;
>> +	int max_hw_guardband = intel_vrr_max_hw_guardband(crtc_state);
>> +	int max_guardband;
>> +
>> +	max_guardband = min(max_hw_guardband, vblank_length - set_context_latency);
>> +
>> +	return min(guardband, max_guardband);
> You are missing intel_vrr_extra_vblank_delay() here.
>
> To reduce the clutter I'd pull the max guardband (in terms
> of the vblank length) calculation into a separate function:
>
> intel_vrr_max_guardband()
> {
> 	return vmin - vdisplay - extra - scl;
> }
>
> Or maybe call it something like intel_vrr_max_vblank_guardband().
>
> And then we could have a
>
> intel_vrr_max_guardband()
> {
> 	return min(intel_vrr_max_vblank_guardband(), intel_vrr_max_hw_guardband());
> }
>
> to give the final number.
>
>> +}
>> +
>>   void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -421,16 +449,12 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>>   		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
>>   		intel_vrr_extra_vblank_delay(display);
>>   
> I think the initial guardband value here we could change to be
> simply 'vmin - crtc_vdisplay' (until we start to optimize it).
> That way all the hw details and whatnot will be handled by
> intel_vrr_max_guardband().
>
> So in the end this could be just
> guardband = min(vmin - crtc_vdisplay,
> 		intel_vrr_max_guardband());


Sure, will make the changes as suggested.


Regards,

Ankit

>
>
>> -	if (DISPLAY_VER(display) < 13) {
>> -		/* FIXME handle the limit in a proper way */
>> -		crtc_state->vrr.guardband =
>> -			min(crtc_state->vrr.guardband,
>> -			    intel_vrr_pipeline_full_to_guardband(crtc_state, 255));
>> +	crtc_state->vrr.guardband = clamp_guardband(crtc_state, crtc_state->vrr.guardband);
>>   
>> +	if (DISPLAY_VER(display) < 13)
>>   		crtc_state->vrr.pipeline_full =
>>   			intel_vrr_guardband_to_pipeline_full(crtc_state,
>>   							     crtc_state->vrr.guardband);
>> -	}
>>   }
>>   
>>   static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>> -- 
>> 2.45.2
