Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFC37B3398
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 15:30:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC1DD10E710;
	Fri, 29 Sep 2023 13:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A318410E713
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 13:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695994197; x=1727530197;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=+fUYhvCPkMp2s9oNATlHL/QTycynEjB9N9PBqbxSMRg=;
 b=g0B6KNjVuPfUja6RzT9yxByLA7LX1pnjAWgs5v0pJKRvbcngBZWvxWEt
 6H4jhPGxMl7yIjyXLGJxvqM4rXGWC8xah20R9vnLlP87yVWBIwEY2MKVH
 zz9oAXAYZsiOYZARtMguygoYHNw1NfuAnI2vleEGdRZvkGF4wVIUnzeAT
 gPoRFK52cAZr93VQn6rlVO2SldpHZbtX0lwFcIY17Bf9bw3WdAUwhxxmC
 fDYkqVKUBQ6cnZOuU+5+NUyR4e8PY+sPtrq9C4SkcNdxAXj4zvavkp3Bc
 gE6Tvu4TKFqCOMEGqdANtlx1ZZkRScoPQAfDxJNWvS1GZ4LnZ5OB5JWWD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="372650708"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="372650708"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 06:29:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="779283126"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="779283126"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Sep 2023 06:29:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 29 Sep 2023 06:29:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 29 Sep 2023 06:29:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 29 Sep 2023 06:29:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cDOZcrVLGu5ydG4tBei8P/hChOsuTI2PNXIuqulUE4Y4Ir+JcWQobkjWEOzfT8tKLNr29IGMj+udgHSlLhIqE+mAMTQl0x/n0FMJnwOoNvFAwX24oiYOA88MSlOGKkPJM3SpYMSH78uZGuIduZtZAomvnUQBNiCAhNed7uI2ko7z04CzMQ5O0pfQxD5bQlFR3B8/e63RuvwAmmsRWXgryYhPbhjDDvW/8ZTcObcO6zQJFZGC+vMimVs6pFC/eyw229Yup7ghKG0S4Ln4rLwdjiW4198MDrdtxRQYQ9hWctVDrDmvs4UfGR4nJALYvcFSD0EfHYs+MKyD6NNI5+vXeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XIs5oiz3WIKgBjl+5JDpR+OMj6VoXNNqEIzrDno6AkU=;
 b=POfE0VN/qXwmgPOCQEyTko/g61Ln1id2IOF3JWlHdVPDSlIf/wd6KjNK6aI80iA0SDBJJ0Orq2PBpBkeY6CbV2Al/YCzkpu9b3ALPp9sKUNGBAmYOZlU236gY6Y+M0KeCINDU7p7z5E9kBYMFWruB6c2v+BVromK+nSQurSBldTKEZb/+bxGRBhMNEtZ0FZUaX75SCRUKQYA/Cb/fGU/tU/Ny1jGVpgNLeREkWn3MCEoSH8vtedTNhkm3M45Xnow4eGdFIX61ha3l9QdOeAASyduU1mgfTTKAAXys/T7L92x7RJEYgVLQtV+tESwz3rnwVf7urRVWrHCYh3jfx91OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB7962.namprd11.prod.outlook.com (2603:10b6:510:245::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Fri, 29 Sep
 2023 13:29:53 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.038; Fri, 29 Sep 2023
 13:29:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87cyy2kajy.fsf@intel.com>
References: <20230928065210.103376-1-jouni.hogander@intel.com>
 <87cyy2kajy.fsf@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Sep 2023 10:29:47 -0300
Message-ID: <169599418712.1718.2462102342426764863@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0177.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB7962:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d03aee0-aaab-4041-f566-08dbc0f029fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d90p3W/zU96iM+2//nW+Ydj1lMSuNkBzZGHPfOmUlV1ODgy9Ke7WcTO426kB//SDBZMP/jnFxkefyY+qfM9EEmTRaFOtgwdM29x0bWKPVhAshshvhEUboMjczk/jjzCabipfM6p3S4iZXKWIYsbj5gFiRIjsKE9Sy9+ac3yqgSW7P/pQDVwgessQGGSEiYjgsg8yfYCLaC98AkgOmHkrb54yjAFT31q7V47YGMMiohmF4PlTeux9ch+e5r8AtmRKo1KRQ7e1Ck/UPnuEFjblQp2/L0KW2pc1kgWa9Hh/yxP8rEVaP064jTWBIOKxPMjCNFuxYuPDrQJBc6DuSOV3VdY4WLceQtNdommMgPAQDfiBBda1UBTRDXsEccw3z7HoYCEV/5ccexZYNl6Gj9bCF7swnDtOjxlecErSOoxHfGpUgfQAq7LC4GAKgioV4V0ZVzUbtuvqHF5KFEgy42oLfoCxjg54YSO9da8q0a8RLfk+NF12FdnuZiNfDVO08NrdzBV1U1ORTYUumGgAHAVToEcdz4aFEjqJ7VxNCNssVfB+y0oQkhcpuvBbIVSEG/vq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(376002)(346002)(136003)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(83380400001)(2906002)(41300700001)(316002)(44832011)(5660300002)(8676002)(8936002)(4326008)(66946007)(86362001)(82960400001)(110136005)(33716001)(6506007)(6512007)(9686003)(6666004)(6486002)(66556008)(26005)(66574015)(38100700002)(66476007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vy9oODFjOFpZTlZmWHd4MmVnM2FJNSs3Q2VpTGdDNDFZbkVuampoQ0dNUVo5?=
 =?utf-8?B?WTFFOTlFWDNiNWtrRTVaVkhMdzRIM0MzZXFKa29VNnlsbyt6RGJGWW1Hd21J?=
 =?utf-8?B?bHpFdmZ4LzBSOG9pS0J0aU05d2haM3Z3VFFBb1lESEtXZlNLTkFEb3lIUi9m?=
 =?utf-8?B?Z2Q5ZDY1NlBHbjI5cHh2QnNON25GSXZDYW9Pb3BGdllPU290ZU5POFhkRTI5?=
 =?utf-8?B?YXRtN29VZ3BUV3NHbXlWRDQrell4ZVhPNWR0UGVOdkd5WlV0NjVWOUZoRU5h?=
 =?utf-8?B?dk9TMk9CWDlWNmxBMWJ6WFZoZnJGRDVIQlVjNURXNWpCN2pLdG9uemlNNjl2?=
 =?utf-8?B?ME1XWXpNTjRMbVpnalAxY3M3cmRtUnBjdU56aTBPWnVYNGtGc2ZrVVdFaEEv?=
 =?utf-8?B?b3NUYVJReUYyMFRGTHcvVnBxRXFWTkRjdjk2eTRMU1FhNXdSRG9jaW5YeHdY?=
 =?utf-8?B?K1N1Q28yUHQ2QWpOd1RWNjEvQjBGMURDdUtDVGFSVjdlZlBEbUFhNWVoZlpX?=
 =?utf-8?B?bE82RDl0SEhZNHJKYXNWVVZEQ0ZreXdvdGhYaEk3MkxhUml3ZTd2UFp6UTlR?=
 =?utf-8?B?K0o1UUFTUzV1M2dOT1VOdVpoVlZpU1lTNjNtNDF3TTZTUVFURkRIQ0kvTjdF?=
 =?utf-8?B?OVY4WFdmNUhkQngxVVptWXU1MVFCOTN0UVJPQmlBaFg5VThHR2dHaTJkZDFt?=
 =?utf-8?B?eFdUTjVZcDNxZXMwRFptR2NJMmFyUWdydzdFbFhQVk9aRUgwS1NoSEo2bmNj?=
 =?utf-8?B?OUtxcXlydEt6ZjIvZU5zZzcyNjJ4RkNBazg1a2NHd1lMNHB1N1NmdW50SjNO?=
 =?utf-8?B?bFE3a09ibmpMOGRnd252TnBkTHZWaUdYaTJ0MUUyUDhzdnR3ZmM1SVpYSEYx?=
 =?utf-8?B?bTVQYUxNQS8vb2Y0SzlrL01rZ3dRempubUY1eEZNd2dSaVlYbWRCNFgwcHg0?=
 =?utf-8?B?TlpJdlpLUFZScFM2S3pCUC8vZXNIUFFGL2YxNzlyaXhLNmNGc1ZaVlQ5Y0t0?=
 =?utf-8?B?OHZYT0dOUE1kQVhubGNJQllLc2h4SFdVYVlWKzJtSEtEZ0d1YmpoUE1vU2NV?=
 =?utf-8?B?YzhOVzlZYlhYRmgzT3ZwN0RwT2pjSHkwQkZMODFVc3QzbWtBR3NTenBSb0pP?=
 =?utf-8?B?Wk5CNlNld3l4aHh2d1NjL3I5YlllbWZwcFQrWEJYMWt1aXBRUGcvYkRiRWRx?=
 =?utf-8?B?R014eU1HZkZselBKc3I4bk5EZGZYTGVFMEx3R1p5Y01tY3lranZpQnRnRnlU?=
 =?utf-8?B?S0RzWXFMalNFbVV0emRadUpNWkkzWUVQRkc1eXRpRnhCajRVRis5RG1zT0tm?=
 =?utf-8?B?WTh2VTBHMjVlNTR3cEM2TzllMXRpZ1RFVXk4RERyaHptYlR2ZWsyRjExdkxu?=
 =?utf-8?B?QmJLNWJQZHpScGtqMlVlTS9TYitPNzI0dFFMcEE4QVJtZnJTTVlsVVA0M0x2?=
 =?utf-8?B?WDVDWTMxaTUxNGdIblgxbEQ1MnN2S2JOa2RsczZDNGhVcU16WXpJSkxOZW9S?=
 =?utf-8?B?QStQSkJMTzViRnBzalphdk1HMVVpdGYxY1pNNXlQZytZTit0SEdZLzBEdXNQ?=
 =?utf-8?B?Zm01LzVoRW1iOWVMSkE2U2JtRHBudkkrTU9pcWd0bVB6ZWdVUGg4YmxzR1J6?=
 =?utf-8?B?UDVQYWFWM0JiS2JtTXdrZ2M5MTcxdWwrRnpFUkxrRUtTYmVwSHVsOURiek5Z?=
 =?utf-8?B?KytYTU91ZlRzVjF4UEFaRmJxYW5CSG50THcya1VIdnRWWVBydTNIUVcvTzg2?=
 =?utf-8?B?aG5mS2pKdVE0Z3Vlc2J0ekcyY0pnV0lUbWt5Z0hlSmw1YVB5eTVJSkh4dmxO?=
 =?utf-8?B?K3VnaDNoWmI4c3B6SGEzYkVDNTQ2KzR3VjllajBnOEE3RUlFV2lsbElmTTBr?=
 =?utf-8?B?VE5nT2VUTVZsUC9qN0lPeUw1a0c1aGg3MTV5aGFBL0xkUXVuZ1lZY0d5eXc3?=
 =?utf-8?B?cktDc1pOWllURUR1Vm82WExqNmtqK0lkTjliN2ZmVTB6OWQzd0JvQkJEdTlW?=
 =?utf-8?B?Mm9nZlU5SHc3THN3K0ZtRTAzR1RGV2pQZmdlT0ZoUXJIcEFXakRaQzRyWVgz?=
 =?utf-8?B?Y05BUFg2V203eUswaXp5Z05KYXZ5VXlMSlRYNlJGeGFoWFE4ZFpmbSt4UHJz?=
 =?utf-8?B?STB2QjdFZDJncmZCN2JiVUZIRFIvTm93NXpHUTh6RURaRHUyNis5SjFQd1BL?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d03aee0-aaab-4041-f566-08dbc0f029fa
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2023 13:29:53.3679 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ysNEJUUOLekTczyG2KDKCipyXfhmf3MUjxbxGhcHS0c7lX3HtXDDU6pefQ7tXBKsBGEx6Uq/gE684GkcmMmKog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7962
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

Quoting Jani Nikula (2023-09-28 04:43:13-03:00)
>On Thu, 28 Sep 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
>> i915_gem_object_set_frontbuffer returns set frontbuffer pointer.  When w=
e
>> are releasing frontbuffer we are clearing the pointer from the object. W=
arn
>> on if return value is not null.
>>
>> v2: Instead of ignoring do drm_WARN_ON
>>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>
>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_frontbuffer.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/=
gpu/drm/i915/display/intel_frontbuffer.c
>> index d5540c739404..95319301cf2b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>> @@ -259,7 +259,8 @@ static void frontbuffer_release(struct kref *ref)
>> =20
>>          i915_ggtt_clear_scanout(obj);
>> =20
>> -        i915_gem_object_set_frontbuffer(obj, NULL);
>> +        drm_WARN_ON(&intel_bo_to_i915(obj)->drm,
>> +                    i915_gem_object_set_frontbuffer(obj, NULL) !=3D NUL=
L);
>
>I'm in the camp that says drm_WARN_ON() and friends should not contain
>any functional actions, and it should just be for checks. I.e. if you
>removed all the warns, things would still work, and lines that do stuff
>stand out and aren't hidden in WARN parameters.

Good rationale.

Here is a command for finding places where a fix might be applicable :-)

    spatch --very-quiet --sp 'drm_WARN_ON(..., <+... E(...) ...+>)' drivers=
/gpu/drm/i915

--
Gustavo Sousa

>
>Like so:
>
>        ret =3D i915_gem_object_set_frontbuffer(obj, NULL);
>        drm_WARN_ON(&intel_bo_to_i915(obj)->drm, ret);
>
>BR,
>Jani.
>
>>          spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>> =20
>>          i915_active_fini(&front->write);
>
>--=20
>Jani Nikula, Intel
