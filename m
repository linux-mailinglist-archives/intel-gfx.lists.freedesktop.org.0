Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A8F67D523
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 20:12:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C0789EAE;
	Thu, 26 Jan 2023 19:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E319289EAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 19:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674760330; x=1706296330;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=1nX2/2s0kmBnNndWVO4hIfEshobphiB4Bci7qGFZFzI=;
 b=VzCA9NzoOFIGBQ6zkJMDdk2HUMF1Qjapd65Vh6K2eY8mkzQAHtY9n8Q7
 1IurMlHrS5RSMPobIYSEAYt4bp3LrcZpixQmIgqhcvpjlW2IPgeSzVtrI
 BRAgJFKp4/UWODYa6pyu6Nl2lZ19I+4QQnQuuFLzppogoDK1Z3lWqf65/
 05GfrpChkt+vY1kgLMYVc7ejNbd4jdnsVT7dYDC97UG9AyWWvkaObsMrx
 0UR/i6VgYilFYKg2tWZkHgX8Eylu6nAmsHr4YgTQoO/G7bgwKXtID9rv/
 Ydrq74iw8mk9OsefdZdyajYMtN2UUEijsroZlvn4hRDkT82xL85roz76x A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328179741"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="328179741"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 11:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="731551089"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="731551089"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 26 Jan 2023 11:12:09 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 11:12:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 11:12:09 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 11:12:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=avyDVCOyR/6OQBzFxkqAekE4gQzVWhdAICukjFiLirrjDbH9VqhvyTk6PecsZLVORQIrAKrKSDt0Cfilk3d4yA1gsGsMq+ZCBb67rIa/zFZERz22rFANcI5ArbnvpMsyRFikI1JqVtIeIyKQ3UJk7slqa0h0uvYaV9vpQ8FlB+ciUCxfiZEtvJCljoAp4zGO3cETlcbmjqGm3HTBNmqUlVOjfd2kVflNQsICWarzu9u6E7+QP572J5WNVccrVz97tOOANViFiEYrpD5ZfVnNxPzPCu2GwA4BtdjGaricikFfGN66WVx+VfrKNeyKnZ4MvmpDy36frFlA43z4w8u4vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ozqBR/KWzEIfW0la9yxcFkSrWsf0DIjUMrhYmiIw6gA=;
 b=kv3YEk4+Ymc55whSeddn/lkolKIKhCskPYrK/LNbcDhZzX6rBkdKBJTjZqnl34J6lg1PgJ1PerVEzeJeVu4GcnVCJBap2Nk5Jq9oHNq970EbzgguqylZCMDbGAxgIPU/NQoME9P7OmvKM9u+Fiml/jXeJUBVrbJi9Aou1YNC5FOBSs4K6ALf2Aso4NDH9wu8wSFirqAoDKQVg7YJv4gp6gZlPFKjHCifOsel81XwvkNrDTOH0RCZrGYdz3zbFoS1Mfo8QFfhSbyrkLu+tj0wakXrL3daDVcwyYlV7jgbU/Kw/eFZYlllUvWRP5g4GvL/nMXEIjSWh4wkZEIt2465jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB4849.namprd11.prod.outlook.com (2603:10b6:303:90::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 19:12:06 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%6]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 19:12:06 +0000
Date: Thu, 26 Jan 2023 11:12:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20230126191204.ho6ngbnxdjkuhoos@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com>
 <20230126163642.4ukp42gs6zyssgl6@ldmartin-desk2>
 <Y9LHwB5iMyZtHGx9@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y9LHwB5iMyZtHGx9@intel.com>
X-ClientProxiedBy: MW4PR04CA0150.namprd04.prod.outlook.com
 (2603:10b6:303:84::35) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB4849:EE_
X-MS-Office365-Filtering-Correlation-Id: ea3658a9-0447-49ff-22a2-08daffd13707
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 53p1s3ZRKSSsVahgPZ0vJ6n50QhZrWFhsw8qLxPZGDj22EFW2YUmOm9PEF5TDJEgDMaM6iy+kHlJ8JNVGa1uX/CzKnPOEOdsgz4pPQSSROnQwAeny/g7i65rHhRDG9S45Gc2qP0Ca5g2jYsxhIBUpjdIlY1MFWaL+dW0LLKmIvPGHdmWb0bCF1Qk238zTJk3/s0zVb5Jn2cuC7w5p4Iayz1zdTnKRama7RumwXKvgYv1O3woUDJjhmIWYWBegoHgAqx3REs6fxPxV0ZsLBwrydb4sKPeqE9DgiMFOU9oFk1HA52Cze7DwVoQLEYbEP/O+hHrcApOaC9RV3r3oDFFO4PVFdftdbewjnbQCETOrkuptJjTe/swgoxOFrWCvOfxlJ4slyqZ/ApZF2vdmfyFzHFc6CXw7J/mqy2jZm7MFoe/AUjLfVOTR8FP6fyy/cTvRCGoXiiAX7dJCHsMjzBcHWPkLqPijPsv0ZxBCpq9fkH8Ld4VqvjoN22iRO8FZCEsKBRcmcrtSy5/dw8v/oIVIt8OMCvKWMsSBbDNbyrUS+e1t8tY0o6db6D9iTg2MjKcezx5/+cDid91gOqVdmw25NFb/7g/PGK/KGnL2ocO/OMf96E0tGinhcFVPExV8EWaO4aA7oFbzrtSV/XkNvApng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(39860400002)(346002)(396003)(366004)(136003)(376002)(451199018)(1076003)(66899018)(5660300002)(2906002)(8936002)(6862004)(41300700001)(66574015)(26005)(33716001)(186003)(478600001)(6486002)(6506007)(6512007)(9686003)(82960400001)(83380400001)(86362001)(66556008)(66476007)(316002)(66946007)(4326008)(8676002)(38100700002)(54906003)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWw5WHZyd2o5MTNaQ0JncE00MmtsaHNJYUdwVlBqeWdYS3pyYzVzK1FzNmRh?=
 =?utf-8?B?STBpUWsxc3Z1eXVsR1pXSXpUellrVjBSNEwxdVFKUlN0MFNPQ25NNnI2dThr?=
 =?utf-8?B?aUhwNTg5ZWtiSXlFbWZTeE9kd2J6VlBuZ2d5Nk1FRGgxVVdMM3BxTnpuVzly?=
 =?utf-8?B?eEMyUi9CRmxycVBvdWI4cWoxSkgwWVdZK3YvaFE1eUNFdG1ScGhwRmV2K0Rv?=
 =?utf-8?B?QjJpdDJReVpud1lGSTQ0d2NPdS9MSkRRVmQ4YTAyUW10ZlJiTC9Xd0FLYURl?=
 =?utf-8?B?dnd1RWRaa0RrTTFOZUY4ZFM5aG43ejZLZVlnMncxVE9vTzBxUmlyc2poaXhh?=
 =?utf-8?B?R2lha29zNmEzVVN1RXdjajZJVU02TGxjb1lybU1DcjZSaVQzZEFpR2tpNVha?=
 =?utf-8?B?eWZEK29DdEwvQ3l0YmgvZ01TQmdETzNhT09ZQXUybnMxUCtSOW9JUktpbkg2?=
 =?utf-8?B?Yjg1NDlRTDZmYm9CTTQ2OUxkcy92b2lNVTR2OGRBK1NPKzUrN09nLzNrNzdK?=
 =?utf-8?B?TVQ2b3FIOW44WllCOFAzeUkwRGE0U0FrOWF5STUwSC9OTXVuUXRvNFczVGdl?=
 =?utf-8?B?S2xETmxiOXZldHZFeEd2VkF5VmdERkprdk50eExWUGsvaHhhMXpLQ21RbHZt?=
 =?utf-8?B?RnlNK1dRWGdnRWdzdUZrMGJ6RnpqTStOS2dBeDA3WW50c3Q4M25jd3ppejNR?=
 =?utf-8?B?SGo3Ny9WTDc1Q2JCVExjTGVrbW96WVNmcXZkU1M5akZZMkl1aFUraTFTWkVT?=
 =?utf-8?B?MXJTOWlNcExUYTJlMmwzT3B4T0ZTUHVQQmkvYXloSWVvOG10N2l6c2N1bEV0?=
 =?utf-8?B?VUFXYkRVRnFzcWN4V3JickQ2R1Z2UjJWL0I1QjFjamozRzMxZXhwNHJUTnp3?=
 =?utf-8?B?UUt1WFZzOUg4TUsvb3cwYndDMUhPR3RGUjZWenNGMmVpMW1Fa3JJNTd0S3dR?=
 =?utf-8?B?TmkvT0dMVGxOMTZtNVBtQkV3Zmp1QWsxTzNWY2lNVkp1TFNZUGQ2QXRJMnFj?=
 =?utf-8?B?NTZCeGFWMXVLVmJtTkhXMkpZbjNKclpOdWxUNUcxRGlGdGRMZWVJOUM0MUJS?=
 =?utf-8?B?d1NvL3lRZGlmWTIvSFZMWHpaU3VhbUJGeHZHUzFrM01OY2srSWMyRDNEVE5S?=
 =?utf-8?B?WE9ESzJTbld4WkoxaFFHUThjcDY3U0pDR2hySkIyM2VkZUlwVmRlSEZUdW5l?=
 =?utf-8?B?MzJYZmYyRHBkcmVNSVFDOXRJWkI0NlYrTityR3VMbTNPeXJucUUzQmhSMlRw?=
 =?utf-8?B?dnlXQmxYUnlRc2lSRFZsYytVaDl2TG10RHFmOEJRSU9GNy9XWk1pRW1Pem53?=
 =?utf-8?B?dHVRVENBV1BQbXJPemN4ZzhBTjUzcTc3cFlPRjBnQXBWYmdhRXhtRjNtWkRu?=
 =?utf-8?B?RmJoLzJNZlNuNFFsZks2akdvNS80S1lFSWVoZytlenhTMkpNZUlIOFArOW84?=
 =?utf-8?B?U25tN1dsdWVzdTZnS0hySG1nZDlmYkdENVlqR0wzYU5RQ09YUUk1NEFTUmdF?=
 =?utf-8?B?amE5bFdTK21tdEsxSjNQbDZoR0R6ODFpWUFUbnJqQjNuOFd4VTV5M21yUUpG?=
 =?utf-8?B?ek9zOFJINndZL2xQWU1KbU94b3hwRy91bWFrTnRDdU1Gcjd3RXpXUFlEWUwv?=
 =?utf-8?B?cWprM0ZIRTNFYUF4Ni9vS3I1ckJ3dUxnQkRtWmErWU94bVhSMjdqWnVTZHhM?=
 =?utf-8?B?WDRQamJqK2M5eHV0dDNWb3cvZk1EblQzandYd0xuNE9KRVVaMUVOK1NKOXBG?=
 =?utf-8?B?K3R0Yk5qMFNkb3NyYWNscnZLKzAwcXppYWNuSUtVdVJyK3BSMWozRjJmWVlH?=
 =?utf-8?B?VEcrUGluL0ZTRnJlNHlZSE9saHdIQUlZNmtEeFB3SnBUOUxTakhCSlRLV2Rz?=
 =?utf-8?B?MWhxZWZCZUdQMDc1ejB4MFBodUVTNnkrTDJybTdjdnZqVzk5RStibEJpc1Zz?=
 =?utf-8?B?L0NmMzF2NlRtaEJzWXhNVWpNRnI0T3dWOGV0czMyd2tVOFovYTJua1EvWVN0?=
 =?utf-8?B?bURsR1IzSXpEM1BTalFtN1NkWHFGaEtqUW9kOVltd0ExRUQzQ05aTEQrblpy?=
 =?utf-8?B?UjB6MDRZZXI0RmZnYnd1SHJ5aWhrT1FPdlpwRkNHZU9QWElIQmdTSFdXc0l3?=
 =?utf-8?B?OUR1ZjRUbFRaY0JRZXU3em5kdVF4ZDZyL3BTNzJLU3g0dkp6U0dhTUZ0dnEx?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea3658a9-0447-49ff-22a2-08daffd13707
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 19:12:06.4839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2L+GL5Z9fr6q4nO8dprKXYC/pvPlVZZfWhEBcct+QSbEPlsRZzoSXuoOUEn7dALelVxtDz7bxCM/P9UJX8NQvoVkYy6LuMWAp7+I+n39nq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4849
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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

On Thu, Jan 26, 2023 at 01:34:40PM -0500, Rodrigo Vivi wrote:
>On Thu, Jan 26, 2023 at 08:36:42AM -0800, Lucas De Marchi wrote:
>> On Thu, Jan 26, 2023 at 06:05:32PM +0200, Jani Nikula wrote:
>> > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>> > > On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
>> > > > On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
>> > > > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>> > > > > > On Wed, 2023-01-25 at 12:44 +0200, Jouni Högander wrote:
>> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > > > > > > index 7d4a15a283a0..63b79c611932 100644
>> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > > > > > > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
>> > > > > > > >  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
>> > > > > > > >  }
>> > > > > > > >
>> > > > > > > > -void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>> > > > > > > > +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
>> > > > > > > > +					const struct intel_crtc_state *crtc_state,
>> > > > > > > > +					const struct intel_plane_state *plane_state,
>> > > > > > > > +					int color_plane)
>> > > > > > > > +{
>> > > > > > > > +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>> > > > > >
>> > > > > > Should you use i915 instead of dev_priv? I've heard and read elsewhere
>> > > > > > that this is generally a desired change.  Much easier to use always the
>> > > > > > same local name for this kind of thing.  Though this file is already
>> > > > > > interspersed with both versions...
>> > > > >
>> > > > > Basically the only reason to use dev_priv for new code is to deal with
>> > > > > some register macros that still have implicit dev_priv in
>> > > > > them. Otherwise, i915 should be used, and when convenient, dev_priv
>> > > > > should be converted to i915 while touching the code anyway (in a
>> > > > > separate patch, but while you're there).
>> > > >
>> > > > Thanks for the clarification! In this case we're not using any of the
>> > > > macros, AFAICT, so I guess it's better to go with i915 already? And I
>> > > > think it should even be in this same patch, since it's a new function
>> > > > anyway.
>> > > >
>> > > >
>> > > > > The implicit dev_priv dependencies in the register macros are a bit
>> > > > > annoying to fix, and it's been going slow. In retrospect maybe the right
>> > > > > thing would have been to just sed the parameter to all of them
>> > > > > everywhere and be done with it for good. Not too late now, I guess, and
>> > > > > I'd take the patches in a heartbeat if someone were to step up and do
>> > > > > it.
>> > > >
>> > > > I see that there is a boatload of register macros using it... I won't
>> > > > promise, but I think it would be a good exercise for a n00b like me to
>> > > > make this patch, though I already foresee another boatload of conflicts
>> > > > with the internal trees and everything...
>> > >
>> > > There were actually 10 boatloads of places to change:
>> > >
>> > >  187 files changed, 12104 insertions(+), 12104 deletions(-)
>> > >
>> > > ...but it _does_ compile. 😄
>> > >
>> > > Do you think this is fine? Lots of shuffle, but if you think it's okay,
>> > > I can send the patch out now.
>> >
>> > Heh, I said I'd take patchES, not everything together! ;)
>> >
>> > Rodrigo, Tvrtko, Joonas, thoughts?
>>
>> If it's a sed or something that can be automated, I think it could be
>> ok as single patch as long as we find the right time to generate it,
>> when the trees are in sync.
>>
>> I do remember doing a sed s/dev_priv/i915/ (or it was with a cocci
>> script, don't remember) a few years ago, and I'm
>> glad we are giving up the slow conversion and just ripping the
>> bandaid.
>
>Well, I honestly was always in favor of this approach if possible
>to automate and all... But I do have 2 big concerns here:
>
>1. If we do this we will never ever remove the implicit dependency

why? it's pretty easy to see what are the macros with implicity
dependencies, regardless if that implicit dep is called dev_priv or
i915.  Fixing the implicit dependency is the nasty part as it will
touch a lot of places with hard-to-automate-patches.

I still think these are orthogonal issues and we shouldn't block the
dev_priv->i915 rename due to that.

Anyway, I will take a look on what an automated removal of the implicit
dependency would look like.

>2. there will be so many more failures on automagic stable backports.
>We will need to scrutinize all the failures and track if the developers
>are really following up on the backports. We are already bad at it btw.

an stable backport that fails to build due to that but that has a script
to run to fix things up, isn't that bad.

Lucas De Marchi

>Jani, you mentioned offline you were afraid of some implications on
>xe if we don't do the sed, what would that be?
>
>Thanks,
>Rodrigo.
>
>>
>> Lucas De Marchi
