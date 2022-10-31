Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3E86136A1
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 13:42:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A2810E28D;
	Mon, 31 Oct 2022 12:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36E510E26B;
 Mon, 31 Oct 2022 12:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667220123; x=1698756123;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=7/T1mHcPGmpSkKIjgC53c13NGFvhxX2MlEr3XDSVQR4=;
 b=g8VjaDYoRb0RzKPK0t9pdUUmXgPEbkaIZhAf3e7o2CB4xTXZpse/dMtb
 GLhFGPEh6Fm6yAdk3RJPG4Rs1CY5XMThVGuSJfJt+XztZCxzGaQpyWXxz
 xBb/OpBAI95hbonJP6zTm17LHfpJYC9t9RN2HH01yqQQoFmil0RMQ8FPa
 Jn4RqSvd+VZaHItA4ik9A2+T+XuU1ipR4/BVz7nnEOUM+CtvmyPmdaRSR
 GCQ8gqXFX5mfjs6JAYeveza7gADUQjfsbTuMNsGV9zdXuAyyduIuMGhTL
 BgmvXmIxMY/DV131prGlHblcGq5uVvBUF5NLIQoJxvLu1dgJbPfpDaG18 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="373097664"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; 
 d="scan'208,217";a="373097664"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 05:42:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="776119022"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; 
 d="scan'208,217";a="776119022"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2022 05:42:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 05:42:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 05:42:02 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 05:42:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LIIVGdMtun1Ne93B8J7T7XETTIeU1hiE8wgl82etFAkvliPh6rReqOE/gaXjf+HYIWysJkinOO78NiUAOTgZFZdBKMsI/XNSXAUjqR2dBf0aA7Z2aGri7twJs23gAEO/B5ftBLeWKmLT/idAqw4zCMlzTz8y4f2cjUh43+bmYWrZo0SOxXg/2AgXZpsTFJuX7lL/PhKqXRlBESwH/U1G7y2YJgyzb/AFXHzXXxie/VpMshBuwRCpPOCDPij5i6+emHFR3MywQp9qdTSI99BHTbeC7JyEP6Jnv4wgg2y4Fjs7fHG4jXCt0/9plzul2wFDgKoOhU0eK/gIJCXow8ToKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IHSGteZQnPRmu4lkB5cr/tqeCighsECJex50hk+VYs4=;
 b=lkULQyfDL7ZdOwuoSaKnLXL5ULvZxoyu9y8UkxD9HDOcKMjQWw8N/HG02vHLaMDJeupQpGkP+bb7TFXso3o4wpbCdHjtiuPnYCdNUVw1mjw7JmmfmWrEkqzSDF7o0vuxZ5cGDPZnRTUGe6nHrIssTfKojqj40sdbazn7ppFoHvIrzdZTikkLRZgQh1I9HHErmIIccoFYiTO86iR4R0aPsIS/DvNEVevTgJ47T1XlmhuZyE+gw72RJP7mhxAkGb0Euo41aVtKvn+j2rJuxtd4Rz8GXGWnxBoARiVFYNSEztqnhtEOabDHhbmcrlflbJkrEosI5nua4xqVrU7ovqAiiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by CH3PR11MB7390.namprd11.prod.outlook.com (2603:10b6:610:14e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Mon, 31 Oct
 2022 12:42:00 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::68c7:8016:a9e5:85e4]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::68c7:8016:a9e5:85e4%7]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 12:41:59 +0000
Content-Type: multipart/alternative;
 boundary="------------20BUwU55FejfJJwIVrGt09iW"
Message-ID: <1b8f7073-0a0f-dc90-29b0-b7af76193c18@intel.com>
Date: Mon, 31 Oct 2022 13:41:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20221031121730.32056-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <20221031121730.32056-1-matthew.auld@intel.com>
X-ClientProxiedBy: FR3P281CA0046.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::12) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|CH3PR11MB7390:EE_
X-MS-Office365-Filtering-Correlation-Id: 349288f0-b797-4dbb-4238-08dabb3d4da2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3PR5vB4My0S9KhFUMDtW63O+s+tKOmYydU6hqwSDt0Ofy900dZ+sgwzyarAWC/X9iZSCZuKIY9OLHWqo0QRAhXzXgK0uVc8Jnvu7lTKjwIMFuKRi5pQ4VRgALkSmxBUqqjeACDMrcZj408RNRg4xdVgjNEbesaYndFMDVEQcFaoScB6BfpB0MpmjhVExtpOVKNxE0C0Eb/QE/cmHNUiZdPYRXrbgLCFYQIQi3f8x1R8ixHF0w38L5HnwQsSjBIuOsua/2+YLMDxPQvJCXtKs4QLgLVN0X22oTzPB+N0TdmGwlRra3gluJll7hPAp3p9jJFx1h3EY+36Oqw0HSmHtYFs3Bwy4PZwHLvQ7HLbTCQj31tomknlBkq0cjd4ZY0NuWDxbLjXTUZ/RxarbCcT/ygCKf7kOD6u5qGUanKGvTsAdQ8NAwJu++Ym06+z7FWl5e2v0Xb7iFSw0HI3xA/K+AYBerNA0Rz+TscYchEaFoIO5X1g+0MvY4AI6hoxeE2WA30R7TGuh30yaoDke15HwInrBhckD/Cjl0GtHJO2ivddf0Zy9klgdIrZAOvsZUAbeA3BOPC5g37EHic/7QKQhcLm844jTzT8A2yPnUeWidlg4FhThtpqK1hUvOUf88O6hyVo08EZN2ywWCb6m3nTUeSx7hcy3woBZ4T051G+yuEEV7GLfLgFUVH+jQ38LwXZ6hzEZQnRrEPVIOhNsXsTHR+z0mB44KSBNL45eecFMkOpZQoCUw9FVM3VIWALZuGCf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199015)(450100002)(82960400001)(38100700002)(53546011)(166002)(4326008)(8676002)(66556008)(86362001)(6512007)(33964004)(26005)(966005)(5660300002)(316002)(31696002)(66476007)(186003)(41300700001)(6506007)(8936002)(6666004)(478600001)(2616005)(83380400001)(66946007)(6486002)(36756003)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXA0NzladGVGbDJ2dFc1UDRYU3lyeDNTV3ZubjNtMUxWRU1OODlORVc0Ymd4?=
 =?utf-8?B?ZERMa1dXZ0JRTnFFdytLNk4wWHVZTHNTczFsRy8wOWhiWC9MeGdXTXltVkR0?=
 =?utf-8?B?SzV2Qksyb01PS2JieWd4anMwZlNOOEhOTXVtV2hVRE54TWVwNEFnKzFXZEZV?=
 =?utf-8?B?dkNOTHNHem85WlRZWnZDaUsvdHB0aFFXc2hIckNGVU56Mm5QMXNCOFp2R1Nr?=
 =?utf-8?B?NC9XeGphVUE3NDFmZVdPQTZmVE9wQ29zWkVsa3FlS2lwWndmb0NRbnpSU05m?=
 =?utf-8?B?TFRXaW5jRnVKU1QrZkpsZnZaRjNwTGpYaWRvNWhkMCtOZVVjTUFiNXNPSXpV?=
 =?utf-8?B?aTZQUHNSWCtCeGVYekNyUU9XZzdqSlY1TitWTVhZOEJWTE5Xc1J0d2wxZmVJ?=
 =?utf-8?B?TU1oMWJKZG1zNFFpeWZpeHhYRW1TU0UyTldDbTZqampYMjJyQUdzS2wwVk5Y?=
 =?utf-8?B?cnpZaDRyZ3dJdDZsdkpTRnhCdW1vTE9ZODI2TGFRbnVhRUFTOHllVzNiQllM?=
 =?utf-8?B?WVdTWlRHcWUvZmVZYytmWFdsVlc4STZxZm5PSlRXQnh5dmhIOUVwcGVIRFlX?=
 =?utf-8?B?WStWZjg5OXgzQ29EQ2xLTEhVQUUyeEJuWlNMOU1HdjNOU3NxVHAvWmQ0M2pU?=
 =?utf-8?B?VDhNQWh0Uzd5K0pBcG1yeHp4dTZPVlNRakhGZW9jUGJNZHZEQldXQ3NWdmtm?=
 =?utf-8?B?ZXhyMFlUNmxLUnYyNzdzSGxUdEk4UGpKamR6QnE0YjFTRDYzdndOaldCSi9I?=
 =?utf-8?B?YTYzVEwzeFdoWkpGaU9WR2tFaHpsQWNZa0REUGxQdmhwSDZsWU9GUStidTNQ?=
 =?utf-8?B?WkdPZWptVm9Ob2ZnNEtnSEZSOFlWV3MzamRjV3BmZVVaQXM3MmdZTFBDalgz?=
 =?utf-8?B?Zk5BVEVwdFlGVis0ekpMb05sVUthbFg1TEJkakpLUjFnTDIwVmsrOVFFMm9Z?=
 =?utf-8?B?TjBETVdUdmowWmZWdlhrclNoQ3BMeGdnc1ZwemozOWVNMFlBTzhHOVI1akZy?=
 =?utf-8?B?MEpTQzM1Vk1xQURXWCtRNDNUbnVqQ2F2NVA2blBDbWZzK09wSTlDL2daa1dL?=
 =?utf-8?B?b1hCNUJST0poVnlIVDhmcjBwRkpIVFlvc1d1czl4dWltYmx3MkhSZkx6RDY2?=
 =?utf-8?B?dmhpZnE5VnVORmVnVHlZOTN0UGkzNUtRNWR5STFRc2RabUkxcGhPMFpiUDgz?=
 =?utf-8?B?MGNwdVRqM3FzVHZUazFtMDJEbTRzUU5wTGVaMkt6RTdROEE1ajk2bkNxL0xl?=
 =?utf-8?B?V0wvMTI1UG5KRGs0TE1FaTM0czBWWDFNTTEvQ0VFMHhYd2praTNVTDRpejhv?=
 =?utf-8?B?TWl4U3VESzdFVVg3NDRXSVRDOTU3bjdpejIwRkFPekwwaFZPajdnK3hwbXBm?=
 =?utf-8?B?ekZDazI1TTZyVUJYbTFONDFNSEhlYjQ3ZzdYd29IYlV2WkZlMUZObWdURjhZ?=
 =?utf-8?B?RXBuQzA4bmhHcmVmVVhvYW40QmYrcHFZNEpQMkdzbCtpOVk1U2g3SmdOVUdY?=
 =?utf-8?B?LzRmdjhKcnBOMW1BSDBuNFozbGdLeURuYnl4NFFBWkVtS3plNnpHSlR1dGI0?=
 =?utf-8?B?Zk1hUVBZMS9FcFN5NFlEbURFZ0hFYkpNZkdBY2pjN0I3djFiWFJKWktEQjU2?=
 =?utf-8?B?L1JOZU5sYzlBQlZISXRSWXJwOEdiellLSTNZd2JqaVRZMHFuYjVSQnoyQm00?=
 =?utf-8?B?Q01LVUwxVDN3TlpyWWQ3dDZGQ3FNTUFQbTE4emw2b3VXRFZvRStEZ3NnR2xL?=
 =?utf-8?B?NWVNTkFaWEcvK2g1THYzTnRtM2xia2Y5RHRUSnd2SEF0MlR6TURVTFJKNGdV?=
 =?utf-8?B?OHJVb1lGQUJ5NnQwbmxyVnZkY1h0TE5wa1lZeTVFUUFWemNGTTVNTkwwc0U5?=
 =?utf-8?B?NFVLWnhoNGt2NDh5YTBzS3ZyVGFZcWtHSC81SmRMRjFnUXhxZEVCZ0lEUFlN?=
 =?utf-8?B?MkI2OWVhZEticTNHcHUyc3ZtajA1eDZROTk5ZkRKcFdrK0M4UG13Q2MvQkY0?=
 =?utf-8?B?OFZ6NFVIUUdzREI0U2RLbGYybnlQcDZ4WVNtQ0h0NXJWYUNibEtDUTNacEtD?=
 =?utf-8?B?c3ZiRkNmZGd4RG1EYXBOd2ZDZ1Zrc2xLRkYvYWF2T3A4RWZ6bEt0UUY5WE5Z?=
 =?utf-8?Q?vmVD89aNVsqnMlGFiKVWTe+or?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 349288f0-b797-4dbb-4238-08dabb3d4da2
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 12:41:59.7787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y2wqprMhOdJPrmJFga1l+SBIc4LCyFzM+CDBc1BPmcJwqTqzEAHN1h+cATadPt72IcXcpyetq3Zayu9vDvDN3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7390
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/query: use 48B_ADDRESS in
 upload
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------20BUwU55FejfJJwIVrGt09iW
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Reviewed-by: |Nirmoy Das <nirmoy.das@intel.com>|

On 10/31/2022 1:17 PM, Matthew Auld wrote:
> Our working set could be larger than 4G here.
>
> Closes:https://gitlab.freedesktop.org/drm/intel/-/issues/6671
> Signed-off-by: Matthew Auld<matthew.auld@intel.com>
> Cc: Nirmoy Das<nirmoy.das@intel.com>
> ---
>   tests/i915/i915_query.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
> index 4e43c7cd..e725e04e 100644
> --- a/tests/i915/i915_query.c
> +++ b/tests/i915/i915_query.c
> @@ -625,10 +625,14 @@ static void upload(int fd, struct igt_list_head *handles, uint32_t num_handles)
>   		      sizeof(struct drm_i915_gem_exec_object2));
>   
>   	i = 0;
> -	igt_list_for_each_entry(iter, handles, link)
> -		exec[i++].handle = iter->handle;
> +	igt_list_for_each_entry(iter, handles, link) {
> +		exec[i].handle = iter->handle;
> +		exec[i].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
> +		i++;
> +	}
>   
>   	exec[i].handle = batch_create_size(fd, 4096);
> +	exec[i].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
>   
>   	execbuf.buffers_ptr = to_user_pointer(exec);
>   	execbuf.buffer_count = num_handles + 1;
--------------20BUwU55FejfJJwIVrGt09iW
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Reviewed-by: <code style="padding: 0px; tab-size: 8;" class="hljs diff language-diff">Nirmoy Das
        <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com">&lt;nirmoy.das@intel.com&gt;</a></code></p>
    <div class="moz-cite-prefix">On 10/31/2022 1:17 PM, Matthew Auld
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20221031121730.32056-1-matthew.auld@intel.com">
      <pre class="moz-quote-pre" wrap="">Our working set could be larger than 4G here.

Closes: <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/6671">https://gitlab.freedesktop.org/drm/intel/-/issues/6671</a>
Signed-off-by: Matthew Auld <a class="moz-txt-link-rfc2396E" href="mailto:matthew.auld@intel.com">&lt;matthew.auld@intel.com&gt;</a>
Cc: Nirmoy Das <a class="moz-txt-link-rfc2396E" href="mailto:nirmoy.das@intel.com">&lt;nirmoy.das@intel.com&gt;</a>
---
 tests/i915/i915_query.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 4e43c7cd..e725e04e 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -625,10 +625,14 @@ static void upload(int fd, struct igt_list_head *handles, uint32_t num_handles)
 		      sizeof(struct drm_i915_gem_exec_object2));
 
 	i = 0;
-	igt_list_for_each_entry(iter, handles, link)
-		exec[i++].handle = iter-&gt;handle;
+	igt_list_for_each_entry(iter, handles, link) {
+		exec[i].handle = iter-&gt;handle;
+		exec[i].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
+		i++;
+	}
 
 	exec[i].handle = batch_create_size(fd, 4096);
+	exec[i].flags = EXEC_OBJECT_SUPPORTS_48B_ADDRESS;
 
 	execbuf.buffers_ptr = to_user_pointer(exec);
 	execbuf.buffer_count = num_handles + 1;
</pre>
    </blockquote>
  </body>
</html>

--------------20BUwU55FejfJJwIVrGt09iW--
