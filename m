Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B870640191E
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 11:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE50898FD;
	Mon,  6 Sep 2021 09:44:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1C3C898FD
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 09:44:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="207155741"
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="207155741"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 02:44:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="448541424"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 06 Sep 2021 02:44:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 6 Sep 2021 02:44:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 6 Sep 2021 02:44:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 6 Sep 2021 02:44:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ioVwZpRNV+qZUy4Yf94EelmX3awcH4oJ6p3avcXyGVlds4iekGTeQgrCEd2We0kBadtFltyMkM8c3QY50xK21M86jwshB0mUK5+jdZSD5t71Xy6QFxlHt+IwzUmO++1njChiwqk9ZbWnnRmNoVtpRnaOSHTuj3r3rCLlTIDs1dtJWIpgrh3XpG1mldCa5+ll5IzpVVxcgFIHQke2DurMVBldH3WrqqeaChBrHmfLGeWd8IowLcayF0hSBeZFGOl/mMj+mc3WzynrqJ3EJrQXDeEl6JoWmKSc+Y2jc7H87ArvTg5KYZAOOJ1jinip+CnnOhpfJQoZ3G7VJgWZGRLXqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=4TXwoPpNiAT/nlXAE4D0M+epoDErhvA+j/qNkjlnbuE=;
 b=i2nMMB4omXAn6lRB2IVWV/ZMg2ye/dx2GkdIFA2KwdY5k4f7imsVOg22d8jb53EWwFkNhWMaMUSQcW7sqmR5WYLgDgNFKF3ot1uVbEexUD6XHWbAJJZ6obpGyRa1RTyc5568rfv670DyYH657bGap0OUnL9mdQEikwkSl2JN1bShg2Fd7gB/mxnt7KlKNeparhXj7lyD9xrhQ1yW2T3CH3b8aeKif8pU49XwtPFMokmG3ortW9EUQdtgNCz6PAeUjr3bZVC7DN/7ALK2gl5uGa1tqSTK2CX8YNS10IRfPmAmLIIw/mzBtmxMOfT/SoNJ2o9fe2UMRzh5gP5kK+qo7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4TXwoPpNiAT/nlXAE4D0M+epoDErhvA+j/qNkjlnbuE=;
 b=Ti3rFxPWoeJgco/WUAg/YMcIqHk1xH9+E7EJQeRtpC35T8PJsN4ewrsJ35KYL3WB41MctENdO5eQuWQdHCzLCfwL+pdIIYDQcPFUoTTgzGoF4j98yHyxtMqfYr572IEXY/GssupA/t1HoqMqFJMJxWemWZ4bUdNYv1QMkX0Q3ps=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4344.namprd11.prod.outlook.com (2603:10b6:610:3a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Mon, 6 Sep
 2021 09:44:50 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c%5]) with mapi id 15.20.4478.025; Mon, 6 Sep 2021
 09:44:50 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "daniel@ffwll.ch" <daniel@ffwll.ch>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
References: <20210825005840.170796-1-jose.souza@intel.com>
 <20210825005840.170796-8-jose.souza@intel.com>
 <eac0bca4-4b41-5a54-4b36-b439e4efd9fb@intel.com>
 <0920e93497531b1e389dd40897d0b9bf2c25a01a.camel@intel.com>
 <a138b5d20231c13631224914edf19c2c4897699f.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <95ac23c8-ec97-1dfc-72df-190e52cc216a@intel.com>
Date: Mon, 6 Sep 2021 12:44:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <a138b5d20231c13631224914edf19c2c4897699f.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR07CA0078.eurprd07.prod.outlook.com
 (2603:10a6:6:2b::16) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.185] (134.134.137.82) by
 DB6PR07CA0078.eurprd07.prod.outlook.com (2603:10a6:6:2b::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.4 via Frontend Transport; Mon, 6 Sep 2021 09:44:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f449e92c-5071-43ef-9741-08d9711af83d
X-MS-TrafficTypeDiagnostic: CH2PR11MB4344:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB4344078192F1B3EBD95E3CD4B8D29@CH2PR11MB4344.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s+0M57ydjpUW9HE1q3S9QCbO/JThprNDMWodUXIhYXqOc7jhjnHqMy1oT5g+wE8oURtvAdMZLls2Vv2ZyvY8UVabp1umyuQYvUwreEgG4QNbDkV5NiAbUaskPoWGFHTIfQukGFhaPDsO6BGkabSYX01i4UiG/TUAEsp2tbInA4+ZHQiUU6qZ+cFcTe6D/Vlsx9UrHlf5JJKlOJL0NMzaUZ4tv5SjJtKIDVNtIE41+bs7R1BF8w7yQow66yi8EVH66F+vPF9BfqoHkYfAZGgJq+3DbkBm6Sg3ve2oDjUdugu0wzL17RKTIO9MSBe9LYKofyundU6Ea9dJ8u3VgEpobV2QyUNBesVDgQKIQqVZkuiRYz8sQT4SDbhhikDleeyfH8L0lAXLVpkCbCQbXSJtNcYchu8qcknW4AiRAGZI12+K8TCncZneorlkDhgALqFf/ba86dOeXAzODX4v59cH0Pf7+aH6YpCCkg6tfyOQGmrxGF+CEzHZiucAbBqk4Rr636yG86n30Qs6rHQOpka4BQQYZ/oRhx3ueRoQtWaV1TKe+nVMYQz+Mr46GHuy0dX0EAMdkumfsKoXeyT9jnUYuziFWk1oahaMCTPTQRQsohPCF9qZbeOuQq7NcIxnZrvHDxwnP+JxtA4ZLvMzFclgXbpp+oO802GIbr1Wb8aNcBVq+imsIriwiXP5pzGrWlgrXAymD6mbue86UCcNeIRVegEiV9Z4IF6RSOPrKMLUkfM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(346002)(376002)(396003)(136003)(8936002)(5660300002)(6486002)(186003)(26005)(66946007)(8676002)(31696002)(478600001)(2906002)(956004)(316002)(2616005)(53546011)(31686004)(83380400001)(38100700002)(16576012)(54906003)(4326008)(66556008)(66476007)(36756003)(110136005)(66574015)(6666004)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SllvdWtkeit2NHRlMU5vMTk1N0kzc2JtS24rSUQ3Z0pNaG1uYit5amJCN0Yz?=
 =?utf-8?B?a3JMeG42TDdKVitsVEdLemFDUkJFMEltdXRUSHg1UXBTNDRvNXBmdUthYUVU?=
 =?utf-8?B?Qmc3aTFpK0dQbmVRdmZEQUN6SFdIQVNPZFFNS1U5cFptbHd5bk5DcVA1alB5?=
 =?utf-8?B?SGVOR2F6RVFhaURFT1A4U2RvdmJXYkludHVaNGVGUFl6dkJTZkJCWVdjSkpn?=
 =?utf-8?B?aC94QndpWEJYSCtkRVpqR2F5cnd2Rk4zdjN3ckgwSk9YeGF4NUw2aFltU1I2?=
 =?utf-8?B?eVd1a2J4MXBKYkE4TGRFSmlXRTR4N1IvWHdrd05nVlVKaElKVlg5dWo4RFlu?=
 =?utf-8?B?TmEvSTRpY2RDUXJnM0t6ekxzd1ZKdGtPL3pxUFdRZE9yZjBSalQrQk14bmlX?=
 =?utf-8?B?VlZEMFYrak1vVnAxTXExME5lNmNMUStWckRZbzN5L2dPUklMN014OTJaU3N3?=
 =?utf-8?B?MlRsYVVyL3AzUlJYaGI2Z213ZWpVeFc2eXBDRmg3YUhJVnA2bUF1L0hFRU9G?=
 =?utf-8?B?TldWNi91c1hVL2o0NFJDZGdqRkZUeGxyYnlxMXdLbW5CREE4d05ZR2FmajY4?=
 =?utf-8?B?Y01TUnl3bDFNbnNFZVhTbEcrVUV2NFh0VFlyY3V5SGNFMDdneTdTT253NCtS?=
 =?utf-8?B?d3lZcGhuWmd6a01QTFlwZU5YSHIrZzBrNFRDaGdYTUFJZXkxT3JjVHZtbWMw?=
 =?utf-8?B?UmNIQ3FOTC92SVlSSnV2WngvVFlLZVZrTS9sbG9XVVU4UkYrUTVzRC84MFdv?=
 =?utf-8?B?TU1aSjBmSmhsbWZKNzBvTmorSThlcHFyelRmOWdlakFyRWJ1YmY5bFI2N3lo?=
 =?utf-8?B?eE5IZ1E4OHliTS9aZURXZDhkamRZR3pjM3Z4S2lpc2l0VklEbzl6bjNMQ3oz?=
 =?utf-8?B?WjRGbEl0UHlPTFRZeG45RGYwREVQazQ3Qm52V1FaQU40ak5wOVVDb042bVl0?=
 =?utf-8?B?TXMwQVJaN3RRdXh1UTJXbGptTXd3d2QwN09zY2N4N0tRQlU2MUplVHNFZStV?=
 =?utf-8?B?aS8zcmxHaTFYeWNjMzgxMmhKQlZUeENxb01YQkl0RDhoOE5Wd3pFaS95Nnh3?=
 =?utf-8?B?dE5YdFdVYTlGcmNVSEV0eWdheHBuQ0tpcEdhdXJaSnZnZzNydnB6d2VrOG0z?=
 =?utf-8?B?YUV1eTBESVI0L084LzVOVDJZT0YvUkNvcC92bmxyMlArazBaZTlCNXJiMFlX?=
 =?utf-8?B?UGluOTMxMllIYUR2dWVmZWV5ZmZaNWJ6VkNpOFN5VzgrUTFxU25rSE9SanEv?=
 =?utf-8?B?U3QrS29LRjFCckZrNUFlN2dhNVRhSnVMbE13dUJocHg4dnd2NzA2anBiREFU?=
 =?utf-8?B?M0d6VTJDR1FtRWcrRHBmTk1kdERVTmNBZnhjVmZHY3BsbTdVVnJybUdpOFA2?=
 =?utf-8?B?RW4vZUVVa2hBNHV6YmNGdTdDYW9tM1ZFK0NkTTZKQStLNjVXMVpFZTAzT2w3?=
 =?utf-8?B?eVNlK3RIMzJQQTRwMW9HdTNVODN1WFRVRFZtNUdLdExhdk5nWnRHU3Vud29o?=
 =?utf-8?B?Uis0R3RGaEM2QXlxZUtRaTQyb1IyQjc2dlByc2dIVHB5NlVMY1orMDFQTkFM?=
 =?utf-8?B?YW1Fby93UkVIdnBLZVNlSi8zWWRITEs1Z1N4T2l4dUJSN0s5OU0wSnhEZ09X?=
 =?utf-8?B?MGg5OWRVdDkyMFQySFUvdFJpSmNkbGhFaFc3V1h0cWwvdHJjby9LclVuT1BU?=
 =?utf-8?B?bHdocFcrVzFpLzFNc1RTSU9iL2VWdWJWWlpaQ3pVcDN5UmxVWHdpRzV4S1o3?=
 =?utf-8?Q?HwUDYQkZADtu4Pmgb5Rb1VquQCo5yueuBVsQ11a?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f449e92c-5071-43ef-9741-08d9711af83d
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2021 09:44:50.0696 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /W+E9Sx++qKOaKOKgyhAPrCXR4Q1TwwJU1e+QddTKNvcT85ENW4eR6bEJdCnPbV7NHe7b7FAM6v8X4uJwFxAepAclVvU0i/O/5DjSPX/H9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/8] drm/i915/display/skl+: Drop
 frontbuffer rendering support
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/4/21 3:26 AM, Souza, Jose wrote:
> On Fri, 2021-09-03 at 22:09 +0000, Souza, Jose wrote:
>> On Thu, 2021-09-02 at 21:42 +0300, Gwan-gyeong Mun wrote:
>>>
>>> On 8/25/21 3:58 AM, José Roberto de Souza wrote:
>>>> By now all the userspace applications should have migrated to atomic
>>>> or at least be calling DRM_IOCTL_MODE_DIRTYFB.
>>>>
>>>> With that we can kill frontbuffer rendering support in i915 for
>>>> modern platforms.
>>>>
>>>> So here converting legacy APIs into atomic commits so it can be
>>>> properly handled by driver i915.
>>>>
>>>> Several IGT tests will fail with this changes, because some tests
>>>> were stressing those frontbuffer rendering scenarios that no userspace
>>>> should be using by now, fixes to IGT should be sent soon.
>>>>
>>>> v2:
>>>> - return earlier to not set fb_tracking.busy/flip_bits
>>>> - added a warn on to make sure we are not setting the busy/flip_bits
>>>>
>>>> Cc: Daniel Vetter <daniel@ffwll.ch>
>>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_cursor.c    |  6 ++----
>>>>    drivers/gpu/drm/i915/display/intel_fb.c        |  8 +++++++-
>>>>    .../gpu/drm/i915/display/intel_frontbuffer.c   | 18 ++++++++++++++++++
>>>>    drivers/gpu/drm/i915/i915_drv.h                |  2 ++
>>>>    4 files changed, 29 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
>>>> index c7618fef01439..5aa996c3b7980 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
>>>> @@ -617,6 +617,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>>>>       u32 src_w, u32 src_h,
>>>>       struct drm_modeset_acquire_ctx *ctx)
>>>>    {
>>>> +struct drm_i915_private *i915 = to_i915(_crtc->dev);
>>>>    struct intel_plane *plane = to_intel_plane(_plane);
>>>>    struct intel_crtc *crtc = to_intel_crtc(_crtc);
>>>>    struct intel_plane_state *old_plane_state =
>>>> @@ -633,12 +634,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>>>>     * PSR2 selective fetch also requires the slow path as
>>>>     * PSR2 plane and transcoder registers can only be updated during
>>>>     * vblank.
>>>> - *
>>>> - * FIXME bigjoiner fastpath would be good
>>>>     */
>>>>    if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
>>>> -    crtc_state->update_pipe || crtc_state->bigjoiner ||
>>>> -    crtc_state->enable_psr2_sel_fetch)
>>>> +    crtc_state->update_pipe || !HAS_FRONTBUFFER_RENDERING(i915))
>>>>    goto slow;
>>>>
>>>>    /*
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>>>> index e4b8602ec0cd2..3eb60785c9f29 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>>>> @@ -3,6 +3,7 @@
>>>>     * Copyright © 2021 Intel Corporation
>>>>     */
>>>>
>>>> +#include <drm/drm_damage_helper.h>
>>>>    #include <drm/drm_framebuffer.h>
>>>>    #include <drm/drm_modeset_helper.h>
>>>>
>>>> @@ -1235,10 +1236,15 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
>>>>    unsigned int num_clips)
>>>>    {
>>>>    struct drm_i915_gem_object *obj = intel_fb_obj(fb);
>>>> +struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>>>
>>>>    i915_gem_object_flush_if_display(obj);
>>>> -intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
>>>>
>>>> +if (!HAS_FRONTBUFFER_RENDERING(i915))
>>>> +return drm_atomic_helper_dirtyfb(fb, file, flags, color, clips,
>>>> + num_clips);
>>> Hi,
>>> Even if the userspace informs us of the dirty (damage) region of the
>>> front buffer being used, GEN9 to GEN12 still uses the HW Tracking
>>> function for PSR and FBC.
>>> And if you look at the description of the intel_psr_flush() function,
>>> you can see that there are the following restrictions.
>>>
>>> "Since the hardware frontbuffer tracking has gaps we need to integrate
>>> with the software frontbuffer tracking."
>>>
>>> If this restriction is still valid from GEN9 to GEN12, even if the
>>> existing frontbuffer tracking function is not used, when
>>> intel_user_framebuffer_dirty() is called, in the case of PSR,
>>> psr_force_hw_tracking_exit() is called or intel_psr_exit() and
>>> schedule_work(psr.work) seems to be required.
>>
>> As this will trigger calls to the functions that write the plane registers PSR HW tracking and FBC tracking will understand a page flip happened even
>> if going from and to the same surface.
>>
>> But will double check it.
> 
> Yep, no issues with PSR or FBC. HW understand as a flip and it is properly handled.
> 
>>
>>>
>>> In the case of FBC, it seems that calls to FBC deactive / FBC activate
>>> should be added.
>>>
>>> If GEN9 to GEN12 do not have the above restrictions, please ignore this
>>> comment.
>>>
>>> G.G.
>>>> +
>>>> +intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
>>>>    return 0;
>>>>    }
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>>> index 0492446cd04ad..3860f87dac31c 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>>> @@ -112,6 +112,9 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
>>>>    void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
>>>>        unsigned frontbuffer_bits)
>>>>    {
>>>> +if (!HAS_FRONTBUFFER_RENDERING(i915))
>>>> +return;
>>>> +
>>>>    spin_lock(&i915->fb_tracking.lock);
>>>>    i915->fb_tracking.flip_bits |= frontbuffer_bits;
>>>>    /* Remove stale busy bits due to the old buffer. */
>>>> @@ -132,6 +135,12 @@ void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
>>>>    void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
>>>>         unsigned frontbuffer_bits)
>>>>    {
>>>> +if (!HAS_FRONTBUFFER_RENDERING(i915)) {
>>>> +drm_WARN_ON_ONCE(&i915->drm, i915->fb_tracking.flip_bits |
>>>> +     i915->fb_tracking.busy_bits);
>>>> +return;
>>>> +}
>>>> +
>>>>    spin_lock(&i915->fb_tracking.lock);
>>>>    /* Mask any cancelled flips. */
>>>>    frontbuffer_bits &= i915->fb_tracking.flip_bits;
>>>> @@ -156,6 +165,9 @@ void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
>>>>    void intel_frontbuffer_flip(struct drm_i915_private *i915,
>>>>        unsigned frontbuffer_bits)
>>>>    {
>>>> +if (!HAS_FRONTBUFFER_RENDERING(i915))
>>>> +return;
>>>> +
>>>>    spin_lock(&i915->fb_tracking.lock);
>>>>    /* Remove stale busy bits due to the old buffer. */
>>>>    i915->fb_tracking.busy_bits &= ~frontbuffer_bits;
>>>> @@ -170,6 +182,9 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
>>>>    {
>>>>    struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
>>>>
>>>> +if (!HAS_FRONTBUFFER_RENDERING(i915))
>>>> +return;
>>>> +
>>>>    if (origin == ORIGIN_CS) {
>>>>    spin_lock(&i915->fb_tracking.lock);
>>>>    i915->fb_tracking.busy_bits |= frontbuffer_bits;
>>>> @@ -191,6 +206,9 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>>>>    {
>>>>    struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
>>>>
>>>> +if (!HAS_FRONTBUFFER_RENDERING(i915))
>>>> +return;
>>>> +
>>>>    if (origin == ORIGIN_CS) {
>>>>    spin_lock(&i915->fb_tracking.lock);
>>>>    /* Filter out new bits since rendering started. */
>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>>> index 91453f7dbd656..20c135a2bba33 100644
>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>> @@ -1721,6 +1721,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>>>
>>>>    #define HAS_ASYNC_FLIPS(i915)(DISPLAY_VER(i915) >= 5)
>>>>
>>>> +#define HAS_FRONTBUFFER_RENDERING(i915)(DISPLAY_VER(i915) < 9)
>>>> +
>>>>    /* Only valid when HAS_DISPLAY() is true */
>>>>    #define INTEL_DISPLAY_ENABLED(dev_priv) \
>>>>    (drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
>>>>
>>
> 
