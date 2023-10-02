Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C6A7B532E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 14:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856F310E2AB;
	Mon,  2 Oct 2023 12:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E7A10E2A8
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 12:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696249725; x=1727785725;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=OXEIutIYHXjkCM+rIQ934KZYu79UEijOFWTQzePxMc0=;
 b=PFYf+XXDuhRSx00uclWUjRUiIbNu68cC6e77jy6f93/oyYg6LS48Bq2o
 2qk05vQ8Hl7qssBo74ScqgIN7HsMYVzNKOHneimVRQuzjJt98nTFCh4T0
 S3xqKt4mzJ8BRvy3WjEYryUfnVYQLrIkiL33YMjAmKw1kNJQpoaNHnV6L
 eAnC8XDA3Px+8AeoVNIKQw3edpd518teIOUlDwy/7DBtpl2Sl6MS+a6kl
 my5DoxxlgLLjKVYmMvGYcoYvBZWgCnCRh+of2iyhRq1KOd4ol4omFP50f
 wzIqWLO2CV91aj4Gxfw/bZC3HUDG9ZBFE48MLNsTHYyo2Q5VDi4nhwLrT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="381515489"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="381515489"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 05:28:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="754037042"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="754037042"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 05:28:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 05:28:31 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 05:28:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 05:28:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 05:28:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GEQp1J59EXP4esbw5vRcE8gP3N9pgCtgTZF13PZFYjJE7l/PqKgPhN2Tve0K3DPp2H0mo/3c4ks5xXbFNJYTz27BpKCfXDXC1ZuM9BTXaYpcX4a3FawqrjS+10DxbKp8MgA4AMm5uVXulbiftFHEChIGNn0lTEHt7CJn+9ylFBzUmt5c1pWyYH5TTh/qtZkI5O4Hw/nqZiQv1/4fcm/itbBxAvY62q1HWQqqgLsVyIxmM2N40zS9IAZvw99R7Bjc8BAzDniew16FRwkKB0ieDIYKvJerJMd0IijO1pyeDETgHijpdxeUAFVRG8iqOQpNvqJLbaiUVDsJ1txTS03bDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ajHu36NueWUehjiMBKAQL7Fc3hObTNqJzU/LHGeRvYU=;
 b=O6dJzF/wrh0f35lvx5IJnC1RMKpcCAK0gNhcjL0Oz4NBNcCUZXZaWz1bqivlMHLgowljx+mHc5Yy2+pYn8DhFoKRjnFJYHycybvRHl4a7K7Z2rJksSTz2Ua4q/78ECNlGKxXIalICfs3CvWpvMo/Fu2HxWwLHkf6bBC5diDE7bPJpwHpXtOB5DOaRjhDviMTCgkw06G825VQUtI/vBzgHVLDPeJ1jlPjMp9QaMSF02G6TZcDNUuWdM7xe+U5IVVVAcyHEMUaGy+zzmZgjN/GYcR7BSYs/oFN5wTrSIcU7zcKZ5wNo64USJekt1NHFEKIxc+KCmmI/Hf/JBc+abf4rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by LV3PR11MB8743.namprd11.prod.outlook.com (2603:10b6:408:20e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.25; Mon, 2 Oct
 2023 12:28:22 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.038; Mon, 2 Oct 2023
 12:28:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <877co5ijrb.fsf@intel.com>
References: <20230928065210.103376-1-jouni.hogander@intel.com>
 <87cyy2kajy.fsf@intel.com>
 <169599418712.1718.2462102342426764863@gjsousa-mobl2>
 <877co5ijrb.fsf@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 2 Oct 2023 09:28:16 -0300
Message-ID: <169624969641.2047.9269915026060778999@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0073.namprd03.prod.outlook.com
 (2603:10b6:a03:331::18) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|LV3PR11MB8743:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cdbe545-dc1d-4abc-9f5c-08dbc34310fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eXhXFOUlyaYv5L7WaR+57a8rIzuW6cY4VL890kEAD9fXGLRFzbeGpSepRNKNfsiXVYnNU+Rp5vRCwk5vf1vBOI/1mwQUobFLadfc98jO7ptuhDyMgkcOWRF8OwIc+FwpMQODkty3U5hlXCbpBWbotJ0SKjru41hOjAUFpcFe/g9binmlCiZiseFTCHBbmsWy7Z79Jp50if+fgB681v7TYmHrN8qsIpgh0Cfg+UgkLpXQZJYoS6aPtFJudy9gkkHhT0o0qTODjjujD61Y+hlslsEInoTa4VvFm/LwfHVpoHbMWNEnMWGs/SU2R5rwV49Edhvry11M/mf/+kHJQFxVp8E5NyME4ivYqsSmp6dJSLbHAhDK83RVBYpcx2IBOUXQHk7tCWJQHxKy+6ovWfZi2lahWBCJcJ+ISt4OxqJIT9m5qGD+wdxDh7oo9ODIf8AthdRqO2Se6+AeEwG4IOct4AF5sDRKDkXIV5Y8WOxKVqT7cP1GU17F25cHKKtLWZpyo/SSqnrX2nN3ZxAi9HXGcK6qZk+p5X4D8xdUYxj8Mt+nSjB8C7HbySRrns0/Hxiy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(366004)(136003)(39860400002)(396003)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(41300700001)(66556008)(66946007)(66476007)(8936002)(316002)(44832011)(8676002)(5660300002)(66574015)(6486002)(83380400001)(6666004)(6506007)(478600001)(4326008)(6512007)(9686003)(26005)(110136005)(82960400001)(33716001)(38100700002)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzlTdktLTnNQVlVjRzBpU3EyRGx3QmRXUDRlck1XSUc4L0RVeXpxNnBEdU5M?=
 =?utf-8?B?YmRmMzI5V3R5S01uR3p6Zld3bzJrSzZUU0Mxdk1ibG1LR1FrWW9ZRjVXMzBW?=
 =?utf-8?B?Zzh0a21WQXcyU3dKa093cndkYWhaa3kzWk1NSFJQVGRHa2tacEczNkloWkxX?=
 =?utf-8?B?UWpmcDRBU1BsUG5VcmtENTVGbFhqTTJWaDdLeTcwM3ZtenVCM09lVW5SN0J1?=
 =?utf-8?B?aXM4YXkzRGxSaERpZHBsT0pnNWFrd0VOTWNVcFV1ZGE2VldvSGY2cTVaa2ZY?=
 =?utf-8?B?OG5QK0ZVSENtM0FwbGpGVWE2V0RreXBWSDU4bzJWcVB4bnRIVkxBelRYNmdw?=
 =?utf-8?B?eXhHRndsOVI2TE9KcERLNlJZUzhaK3JpaGtMU29FOVR0NHZhZnBTMFZIWGhF?=
 =?utf-8?B?NGV6MnFpdVpZbmxCOWR4UFNPY2h0Q1JGNGNiSng0anNnWUUxdHZGN0NoRDZJ?=
 =?utf-8?B?Q0FGYTZKdTEvZ0ZEN3ZlMWZ3V3hMM0J0ZHhKS3gvdm45N1BPY01GQmo4a1Nl?=
 =?utf-8?B?TEtkRFBNNWZ6ekRRblI4djFDZEpueHlUeitZWE0rb2lRd3NkMGFtVGdKdEVr?=
 =?utf-8?B?Nm5VcDByVEtoV1V1OFlEaU1PRlI4eEh0YTl3VFhjUTd6NnpXdzU5WFZtRmRi?=
 =?utf-8?B?V0dtZDZMSzlxcmRob2NYZDdZbzFwMllqWFlhc3NWaHNSWjQvQSs1bXdJQnlC?=
 =?utf-8?B?cjFjZ0hRZUhRT09UNDRFcktndXNNaVp1emtIRlpSR1VKQ3lyNlNyR1dEbnlo?=
 =?utf-8?B?SFpaQ3Nxc3BaYVRiSTRPeWEvbGlqWTg2MDZDNm8zVTZUaXhtL0VvVUF2RStC?=
 =?utf-8?B?ekFEcVZYUDU0d1J5VjVoVmUxYklIK2NUQzhGUklkbFhwdk5FemVnT1BUSWdR?=
 =?utf-8?B?eVM5YjdTQXNubC9lckVMaXlZYzZ1L0hIM0NWdExDY3p0dGhiUzhSU0toOUcw?=
 =?utf-8?B?ZlAzdWIwaVB0WDZXRUt1clRwY3dOZ2t0TXh6eFNUU2k5TitQVTZDeDJSd2Za?=
 =?utf-8?B?Q1lhR2p2U3V5MXFZMjVyMXBlYVpGWWYvTmhCalZwenBkR2NlL1crT3VRSzdh?=
 =?utf-8?B?QmE5Z3pnNlZvWFRvSEJFZFl5U2RocW8yN28xOWJVbHZUODBRcWhYUzJaWFFj?=
 =?utf-8?B?cWhUcXg1MnkyZG5IY2xmU09xWFFwOVo1djc5dXhQbWhFNzF5aHNYUTk5NjE3?=
 =?utf-8?B?c1BTMml2SnpyUkY5RXg4WnM5a2R1V21Da1RVVDNUb3lJVllmYnFjRmUvV2s2?=
 =?utf-8?B?MmJQK1RYbFBzRXc4OVRROEMrY0crdjZ2Q0I2VXZKQThPeVM3dnFZY0hLMkpi?=
 =?utf-8?B?cTZOZHpydFhyRVhrTGNOdUhjTTZhVGlMRDN4azdEWFFCNkFTVFdVUEhMclJD?=
 =?utf-8?B?N1doRUxrWWRVUnozZjNkTEtiQ2FsRytTMHoyOXVoSkVKRXJNcXNodjYra0xi?=
 =?utf-8?B?RzZ0UE9oTk9DalB0d2hzSXNqdk5KWjNkdmUzcEo5OGdRd2xOdHRNcVRIK0JB?=
 =?utf-8?B?UnQxVW9sYURvTXlDRVMxajE3Yk90cnJyS3JvRTdIZzhCTVNsTFp2YldDcFMy?=
 =?utf-8?B?QThyNjRPb2UyNll6aGppWXFKb0t3aE5ueU5uaW1JR2hyWjlIWG01cVNUeS9G?=
 =?utf-8?B?YisvMmRTUUlMM3RRcDRJY3FQUjRiU0VhbWhWT2J4elplei9YeWFTSmtDd0tH?=
 =?utf-8?B?VGtOdTNtUmlwdUk0dWpyQWpxWUF1dkN0SjBTK3F0K1o4Tkt5YzdpTHMzZUJG?=
 =?utf-8?B?OVp5ZURyV2N2R281UVFKSElJblRndzdJNVhLTFhNN1dLSUFkeE4rOGlEVEs4?=
 =?utf-8?B?Qkwrd0JNYm9lTk1IcHVTRkliNXNWcjJxbGpLKzFlYWFkSlltNm1Uc3ZWSkU5?=
 =?utf-8?B?aDgrL2pnZExkV3g1SWtLWDlqS0NqWHBGV2RPZ21BRm8zVEtwSjlPZ0RyNk1h?=
 =?utf-8?B?eFV2Y2VkS21PSis3RlNLODQ4WmVQY2NFSVlxYnl2d2Z6YUtBSXJiRVZQSnV1?=
 =?utf-8?B?Z2t5MlFWcWVJcHJyRm1oWFQxMXVvVTh3R3cvZ3NNT3gxeFByaTJpa1F0OWFM?=
 =?utf-8?B?T2hhbjVySEdvVDloNk1sdHJ6b1Y2aFFjZE10MFRPS3hpVUZpQUJLSlV6UExD?=
 =?utf-8?B?SzJldFU4NlV5RXpIaVB5RnQzQmxNRWc4dzBuK0VDN2NocFZ1ajM5Y1g3M0Fp?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cdbe545-dc1d-4abc-9f5c-08dbc34310fd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 12:28:22.0184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vDB+OHwSUyAYD1FR4ywQIuVV1f5GxrJniOzNhEVHqIPmYeayyt9Dk015urdYu72N+qRIouwKYHtFMvvDsOnKIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8743
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Warn on if set frontbuffer
 return value is not NULL on release
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-10-02 04:08:40-03:00)
>On Fri, 29 Sep 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2023-09-28 04:43:13-03:00)
>>>On Thu, 28 Sep 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrot=
e:
>>>> i915_gem_object_set_frontbuffer returns set frontbuffer pointer.  When=
 we
>>>> are releasing frontbuffer we are clearing the pointer from the object.=
 Warn
>>>> on if return value is not null.
>>>>
>>>> v2: Instead of ignoring do drm_WARN_ON
>>>>
>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>>
>>>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 3 ++-
>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/driver=
s/gpu/drm/i915/display/intel_frontbuffer.c
>>>> index d5540c739404..95319301cf2b 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>>>> @@ -259,7 +259,8 @@ static void frontbuffer_release(struct kref *ref)
>>>> =20
>>>>          i915_ggtt_clear_scanout(obj);
>>>> =20
>>>> -        i915_gem_object_set_frontbuffer(obj, NULL);
>>>> +        drm_WARN_ON(&intel_bo_to_i915(obj)->drm,
>>>> +                    i915_gem_object_set_frontbuffer(obj, NULL) !=3D N=
ULL);
>>>
>>>I'm in the camp that says drm_WARN_ON() and friends should not contain
>>>any functional actions, and it should just be for checks. I.e. if you
>>>removed all the warns, things would still work, and lines that do stuff
>>>stand out and aren't hidden in WARN parameters.
>>
>> Good rationale.
>>
>> Here is a command for finding places where a fix might be applicable :-)
>>
>>     spatch --very-quiet --sp 'drm_WARN_ON(..., <+... E(...) ...+>)' driv=
ers/gpu/drm/i915
>
>Good hints, but also a *lot* of false positives!

Yep... Not sure, but maybe this could be improved to somehow try to
capture only functions that have some side-effect (e.g., register writes
or modification to driver data).

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>Like so:
>>>
>>>        ret =3D i915_gem_object_set_frontbuffer(obj, NULL);
>>>        drm_WARN_ON(&intel_bo_to_i915(obj)->drm, ret);
>>>
>>>BR,
>>>Jani.
>>>
>>>>          spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock)=
;
>>>> =20
>>>>          i915_active_fini(&front->write);
>>>
>>>--=20
>>>Jani Nikula, Intel
>
>--=20
>Jani Nikula, Intel
