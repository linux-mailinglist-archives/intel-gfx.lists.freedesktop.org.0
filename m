Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2680C47CAB3
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 02:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E6710E139;
	Wed, 22 Dec 2021 01:21:52 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5530110E124;
 Wed, 22 Dec 2021 01:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640136110; x=1671672110;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FvPwYLV6cOjJL70yNSNvtHAXdayez3vITf+UBfBm7cA=;
 b=VnnVEa/sZzStb1f6bXYidOUWh1oTP52GFHoKkTUKMo07V5VxB7vAYPVj
 MhAPD+bmASNkTFgHz7qxDdrt9l8DW30I82zQvYoZKs4DmtBjymkoSZxSb
 zNZET3IXLFYZcJQfXWb2thf+Nt92QCwUQbJVPMiqIpw3WnRdj5nE0O63v
 X3riA9aqPKGL66djER/xhmZbsGApP+bLzFrAajSIyOKVpHVIFxAiWZmr7
 NVbaqMvxnHOsjYr1CB/49tStHgMQh4PYtY30RFLHyKi/AVr490Reb/SvG
 qxrMpNUR/pKYhZd9mIJLWlmbQ1HyJK+ECxm+5t967ldGy4V/ey7xmZ9cX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="227372474"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="227372474"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 17:21:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="616964820"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 21 Dec 2021 17:21:49 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 17:21:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 17:21:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 17:21:49 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 17:21:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6yie5YMKImSTn0Smqocc5HSzIF95A2EGk/Cj0MsqXN0kYN4gte8g6wWGXRtKnNAYqJyZrxx6cAECF8diAeTIs0iRaFy0u0xWg5ZjbISNMr1Jeg/ktgEiYfxsjE6sWRcTMrsnW7I2J8W9TCMDBw0dCI7hmm1zXUkhOqIZ/T4qNvhc9UIIN4SehOFAm/1SN1/GWAjeEywLRXiIDoZGP355sCnxx9WkFJH8h8ryouEB6CxLOUmBhwRFpWZDOVBbtS3XAEFEHTbheu7LMMwtYm5NA0GXuC1Bz6b3VQncflWIhXMnpckKx1gIwkTunuvqDAx9+tIbNAk6PTzqlTb4mScDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5ptDGwXQCmP+VFn3wCSkdqXwwH4CIU+mSkzZMeyJX0=;
 b=iPCkIEar26XrqRofeXOsIU09rwAfTbgRwaztBrWMVG4sPNE4ck/Nlr/x9SIfMLelm8pRMFDGNJhLEo1UsQNI352nhXi+TTPW/TnQWfYkCtUBceGcvZoNuLJW0wRkZq3AEVkmB1VWJ/vuOANfwDNFwIkVU+fTGrEhRMNK/+e7yLNReePm3eodnv/ZxgAAszB6sX2+cP6JPSaTfkCVrfqsU1weFGSa6B2ImfEeIYHcau4Rw8XZFOtZ4/xanE3xZo7+TJCN4u0taTbVAwq+6ACGII/0rMvaYRh6S1XoAsKkTElC9w2SU4PWFI9HLK33bYVEbDTVNGcE+EVqlmIz2IoQSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ0PR11MB5088.namprd11.prod.outlook.com (2603:10b6:a03:2df::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Wed, 22 Dec
 2021 01:21:47 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::2ce1:2a7:cd07:81df]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::2ce1:2a7:cd07:81df%6]) with mapi id 15.20.4823.018; Wed, 22 Dec 2021
 01:21:47 +0000
Message-ID: <68fcbe39-09c5-4df5-8288-1fb07e287990@intel.com>
Date: Tue, 21 Dec 2021 17:21:44 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-GB
To: "Dandamudi, Priyanka" <priyanka.dandamudi@intel.com>,
 "IGT-Dev@Lists.FreeDesktop.Org" <IGT-Dev@Lists.FreeDesktop.Org>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-5-John.C.Harrison@Intel.com>
 <DM6PR11MB4492860E286EBE5F6CB8D1648D7C9@DM6PR11MB4492.namprd11.prod.outlook.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <DM6PR11MB4492860E286EBE5F6CB8D1648D7C9@DM6PR11MB4492.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR2101CA0021.namprd21.prod.outlook.com
 (2603:10b6:302:1::34) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3328afc8-1543-4a28-8bbb-08d9c4e96c50
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5088:EE_
X-Microsoft-Antispam-PRVS: <SJ0PR11MB5088265FB834A21E53D4B811BD7D9@SJ0PR11MB5088.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fYBsHhkma59V7/8VL6TsCEs2h3HK+PzwFe5fpgbr4u/+cCWffvP8alHGHrH3t0PQRuDBkMqLs+1YEnIinxLXdZ6fzrxbgcMH38NByxzLm1OqFbts+/hMET5f8UdbrhrLmnsiiInk+NVOuflwtXE+q3KesUrqfl5lDGDKmpIBGzbBNLn3dO4rFCDJZvUnAvAl/+mZZ3f8DcoqxZG8B55UJC1xMvo+UW1rKQMeArs+r4AUDESYLSP7B17g5ZQ82jd4IxZEafVU9izwnBaq7Orj/3rIvUeZyujdLzP6Oz5Nx6zBkN8bolLuymd368+S4h+fhJFcTw4s3Xl2Mq6GH8oOlTG3/bd13CnnmqLXvhwRwjiDRKzXl3s/BbLk6ILuPrXICgv//uQ7eXle3bppDkmh8XzurNvDOxp9mpk6WZlWKzax0F40Dw99ThYMVmftFdEXYTkGFD3o7Vls1mbM+KkwtBb+9hPuSKIOau4jJgqip/iS6skXoIqpUQ/mlguyroEYwKnUwy/vb4FH/VHAUZAmb4345MeCiI7/G12OG4tNqin8sV/Vxe7hpemWZatFbRPiEC+40YM8ojuPiZJMTNGFwJe0WD9tc9zbpwxX+q8qwFBu1dI4ib2/Ynd0rK75A7hzy8nDtwq+dVKZ0W28sCtAdN2tLCy7MG8QNP3QNWVt0RkOH4MlTrJzTw5cI8v2yAan8eZQkr+Tf65AWUSlv1gEyBFMd3/v1aMHNSd0BIpT8S4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(31696002)(186003)(66476007)(6666004)(26005)(53546011)(86362001)(6506007)(66556008)(8936002)(36756003)(66946007)(110136005)(2906002)(450100002)(8676002)(31686004)(38100700002)(2616005)(316002)(4744005)(6486002)(5660300002)(508600001)(6512007)(82960400001)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmwrMGJxQ3BEK1hqd1ZOVVp5dktPTUFHUmdyR0tWWU1rTk03bnlZNFI0ZTUw?=
 =?utf-8?B?bHRJcTlpV3JsQitCeWkrOVdDR2F1V3hKelpGSG1zZ3VkSVJNU0lUcjVSYkcv?=
 =?utf-8?B?NlZPRXZ1QURXanFYMGN1UWdJc25QbXdQR0RKR1R3RTQzL3U5ODA3V2tCSDZZ?=
 =?utf-8?B?YlRyQVgvR0FTbTZ1UytxYm9PY1UxN3N6SU40S1hzNFJjcVRNcXYzTGd4V0hh?=
 =?utf-8?B?QXFzSkF3TjBKMXNaQkdDajloSDFEa2g1d3p1cmFpcTBWdTFkRHRQcTdnRkRM?=
 =?utf-8?B?NHdpQXJqY0dYaWM5c3p1dEZxNUJ0N1JBeFdlUmQvcUovbDl0N3dxVEluakhD?=
 =?utf-8?B?TVVqS1JYcWt4QzZ4bEVZRVFVb05MVCtKUWVKNHlHZWpHWXZ5eGcyVXNJclJB?=
 =?utf-8?B?K2NlMU1CbHFjRCs5VDh5SDFnNUZDRXZuSHQ2VmtvUlR0Y0RzZXVsRUlVb3JU?=
 =?utf-8?B?OUVWdWFZZHFyUkd3NFY2SUs1S3dhODFvRlB4SEYrTDl0YmpIN2c0QmpuVHQv?=
 =?utf-8?B?RnMxajRObGh0ZU04NkFqUWM4Z2RRcGc2dy83SHVoMEtsRHZwQWNKOHY3LzdQ?=
 =?utf-8?B?cDVpV0UvdjljUGpLbGp3KzVreE5xaVdMUjJWS0xwWHRGSGp4aUlCd3RSUS9G?=
 =?utf-8?B?ZjFYRFdJeFV2c0l3WnNlcnFEa21lRkVESGZrSmU4OTRBT0NIaGt5U3RIK2VM?=
 =?utf-8?B?NmFRbnl2ZGlLUjhXVDRIRndTdjljZXlIbGU1bkduNGFIM1I0MUwzbFp4UG82?=
 =?utf-8?B?T1NNQjlZYzNoKzgxUUFnV3pNeTFZdXB4TnlZNlNLaDFiOFpFaTZ6S2dta0hv?=
 =?utf-8?B?ck13eWJBVHpOSDVzWktkZ0lIZCtFN05KZUcrQWF1cTMvb3N5NUVvTXFhNFEy?=
 =?utf-8?B?dVg5KzZDQ2tQbWpWd3lXZHpyTUwxN0xESUFiV3d5bzJEWDBvWEZrREd0WVA0?=
 =?utf-8?B?a3BnSFhQM2ZUQ0N2V2Jab3htTkFFM0hOV204RHh3N3lyQisraGJJeVdCU0Qz?=
 =?utf-8?B?U2x2Z2xTZTNlOGg5OWpXbFkxYWhtN3Q5Zy9nSkN6UW1jcERYRVgrTjFjOU9h?=
 =?utf-8?B?VjBzK29Ndk5mUUNja0NwOWJnVzhhcXRMcngrbUVvSEdBTjhhN1VJdVdIVFcv?=
 =?utf-8?B?eEF0dUkzTXdTOTJGajlOb0RrWUhFdXhvLzdZTjl2ZUlpNjJhZmFQcTkyall4?=
 =?utf-8?B?SG1vWFdycHRsMm5HdFYvNEZKTVhzZ0IzQkNkQTJjbElYUi9TRDNoTDdiRDZx?=
 =?utf-8?B?VnNNNE04RVhtaXdDTUc5VEV6bGg0TGthWVRldHVvOVZzOHNmY3VlTDF3MFRD?=
 =?utf-8?B?R0Y5dGhLV0JiNnBZYmZJMkRDRlp3RnlBMWxreGFkRjkwcENxa1pqckEveGVU?=
 =?utf-8?B?T1dRN2pxaUpwaXNGdDl0R2o3SWVWWG1qNE9icW5SU1ZSUFVvRzczL2VIRFhZ?=
 =?utf-8?B?VVFBR0F2aDlRZHYwMEFrUmMxZDV3bTdESVhTaUFJMVR6QzFZdHJqSUZrS2ZF?=
 =?utf-8?B?V2xKTCs1N1Y5K1BDV003cExEZy83YjZidm5GVFRrZ2l6b0ppVlpTdVFYeVYy?=
 =?utf-8?B?aDl4eWZobElFcmYzNVpXS0J3SXljSTlsWWJIY2xBK0ZDSDBnZm9DcUFYNTR4?=
 =?utf-8?B?RVVVY1hGRDJ4MmIvUHRBN0c0R2tZSG5wdXdlVkdYQWZKcGhMeUk2UXRwZE5U?=
 =?utf-8?B?QmIzdm94OWdvY0VSVEF3NVhwSXdSZWtyc0FaNXlhS3FMSFVHY25nNWNFZCsv?=
 =?utf-8?B?NGlkT2RhUXBKWm5vc3JLdDlFWkJKMG9KYkgyd2taVVN0bDJHYnlNcSttaGh5?=
 =?utf-8?B?VkdCdkRoVVY4UGNGMnBkY0lpQkhnenovMXNNYW1sOUxZQ2JwYkpLblR0Qml5?=
 =?utf-8?B?YUJoMHE5SjFKSDVvQ3grTzdNa0hVV2R1azlGOWxkWXh4c2cvVm9CNG5FVENZ?=
 =?utf-8?B?MFF3ZEpkSnphWTBIc0YwdkxaZVM2aGRzOHJOT3pkMTdzY0RuSWFEZUlyWVUw?=
 =?utf-8?B?SUhXa3FCQkp4Zmg4eUxRVzZWUXQzOVNjTjdwMjBBcm9QMG43SUptV29vemx6?=
 =?utf-8?B?TkhyY0tSSjZqNUpOdVBsSDlZbk9pbTVCNWg2ekdxeCtEcEhSNU50YkYxWXFo?=
 =?utf-8?B?Y3dFOXJiaGVNaWtsZHFMaTZWbmJFbm85ZEJ6TzZja3FqWmw2ODBQWE9lVUhs?=
 =?utf-8?B?VTN5emE5TENQeVdWNHl5cnlxNHJpVTNzcHJabGt4MFdhTXYwTkJsaW5vS3Bs?=
 =?utf-8?Q?Px8rEm27R/EpOdxyyLJeNQ/gEV+kMWf9Dv/Fk0Efew=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3328afc8-1543-4a28-8bbb-08d9c4e96c50
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2021 01:21:47.5621 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Wo49XMoUD+R9hdatq1+bZ8jmXD8JTkWEsB+kUWrGxRm9bXMUjaT0KOZXmWJLUeC8SswEBg3O/Hoelt62I3UB0DZkX+hZooLZ8AgNDUMIc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5088
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 04/11]
 tests/i915/i915_hangman: Explicitly test per engine reset vs full GPU reset
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
Cc: "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/21/2021 03:28, Dandamudi, Priyanka wrote:
> Does this test series cover to prove that it can survive killing one without killing all the others except RCS+CCS combination(killing one affects other and shows with the help of reset stats)?
That is part of the purpose of i915_hangman - to test that a hang on one 
engine does not affect work on other engines. Note that there is no CCS 
support in IGT yet. Patches are still in progress. At least, they 
certainly hadn't been merged when this patch set was posted.

John.

