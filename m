Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2B652E6F0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 10:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0969011B5EF;
	Fri, 20 May 2022 08:07:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C23B11B5EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 08:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653034063; x=1684570063;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Mq/pnujQ0tocM/IHuWOVK8wrt5XJQIOybMyGwJvVEG0=;
 b=diFeU2xYnh4GhoIOBKGvAUOCYmECal/LQNGyyjpIPlUj+BQ1dUjKaqn4
 zAdFWe6T8JcmW8lAK06jF3l8RpHGvkfPbQXSBQ8ZXF2CbFB+UK+jRFPa+
 dr3RHuFyGCP6X7gC5HmvPhcQGA3flOt8Qk608FQcRgzRzj7b36adgZwr5
 LL9fJaDKTdhR5sF/L+1I+ttdfiGq/8hAkCTg6Ko/ZEo7OTC6b1VughXBe
 ROJ8kYqYyv6mzmgRNxWcAF3VzmHb3TC39lRcLuz8jp4AL2iLbSlcs67z2
 kNKd1MVLAAy+V3VbQ9L+1rXiwwyEA23QzLDYIcWWoVFlYl9RWmKsY41y3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="272661350"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="272661350"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 01:07:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="570692707"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 20 May 2022 01:07:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 20 May 2022 01:07:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 20 May 2022 01:07:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 20 May 2022 01:07:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LIL+JvUSMx/341E87Jo+bZYonObHHQbYwZg1m8cZ+eZBzKvxcxebvoO9UAoU+038gOZHOkjeTUtHOSAIrC1pjdSdDTYPUIDnyy0JIAqSPyaF50H4OWTbDNnfOgedOXTTHDEPmsmyyoAB1VaD91P3izCBwVM+4SKGZjVOHM+01JvY8VxGhMGbzSTwe/afX4cY9RS4kprdtHFON5S6cV5m18V+xX8HYQBzD9Z604oq1/KK6zz8Wgfwk2vct+rVqma3iNEslUuK5uaWtIc/PsmLRrQdDnOH1NH1vOO/p9uNiraLwNHT9WenPyPHOBiA/fYpCkRBxclcqXvcoEoy7Kxuyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3x/8/UaUeGaaHZY0wjyMAwFt6EHDth1Mlag0LkcEdrQ=;
 b=DurnEv1BxNr/zSTpyvC0/QGcFlEWh6BaXgVBpoYlRpOySjTwufkVCN9iVxJn6KeYZYAH5qpuRnxcqwwNYpWc6KVS4wQ/otfdanj32yuoZVlS/h5dy5Vm8KVKBXgrP9cqnMvaogXSd+wXgNhnbqZU7+eh25dN/9CcDlFWdBcFe9yyMuNqAxgUN2+uE992RMeHYPgtSSNGhOfWc74XvTA/3r6nDid5OtOouc2bWb7VRspx3S+TmCWtqL1+7CGnf/Fco+L8XO56VFGEbpekQbzuGm6Sb7u5O4IJbm9RDex5l5/K0ClXn1yMdGfwvFRdlwlC+X1evaXgn68lmfAt1VR4eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1372.namprd11.prod.outlook.com (2603:10b6:3:11::14) by
 BYAPR11MB3352.namprd11.prod.outlook.com (2603:10b6:a03:1d::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5273.14; Fri, 20 May 2022 08:07:40 +0000
Received: from DM5PR11MB1372.namprd11.prod.outlook.com
 ([fe80::4c28:d78b:a82b:a999]) by DM5PR11MB1372.namprd11.prod.outlook.com
 ([fe80::4c28:d78b:a82b:a999%11]) with mapi id 15.20.5273.015; Fri, 20 May
 2022 08:07:40 +0000
Date: Fri, 20 May 2022 10:07:36 +0200
From: Piotr =?utf-8?Q?Pi=C3=B3rkowski?= <piotr.piorkowski@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220520080736.2vzzhh6o647xeqez@intel.com>
References: <20220120113049.213361-1-piotr.piorkowski@intel.com>
 <875ym0d54e.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875ym0d54e.fsf@intel.com>
X-ClientProxiedBy: AS9P194CA0018.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:20b:46d::30) To DM5PR11MB1372.namprd11.prod.outlook.com
 (2603:10b6:3:11::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 932a7727-e0d2-4127-f0a1-08da3a37cf44
X-MS-TrafficTypeDiagnostic: BYAPR11MB3352:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB33521067F9CB3B9827DFDA4497D39@BYAPR11MB3352.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WLV4TRsmX3kUUvQztQpcwIuPILXxzitmv0D7jUN6Zcjx5k75YsnRH68Q4Xqvcb2AA/lZsvpR+AK+8B4HW/yaGbYQlvtWO1RG13RIecv6n0RLrHwlyDtHa0nOUgsnJVJWc0hiIIZSTbXIh+t8PRBQiQJrh8vHX/O/DTgzq71TPsewELgr2mNsc1L7LBZga1WwHQL1NWi0j9MUAxV/HH/uhPSd29b1byJNi851JWDxnHeIfCjrM+Q9cDn5G5r8d95zbllkiWFu+NWwRCVPy3UWkGhXRaKstgSi47d/4/+0jLAVW7POZUxB3VTTINm8ffNcY8p+o1pDBPLEBw0ll+VBfFw6hiRuiRLwl1gT0R/rlAD8GInbCWTFk+ydhviV+JBAsfJLONwvtuHHxhCnkrteed/ibg0f7awUWiDIvC0EwBxAu+FgL4ANKq1YHQiuPO5xwE/Ttg39hrjjZ2be5d6S2X7JGJ4x+eIae82xk0qsNxlK0jt0GPhe1Lgn0TN396KcNFRiSncXCiCK3E1aNoXgFJ896qF9rFzWaYu9Es5PtI2DbVo9O2Le5X9e+MCGj+JPRCty4ng33zZy6NWXVibnUwyuSfS+kiJsQw1XuFpeNYM+fiSIWJ4G4c5P2VL4q8RAB1plxR1gtVJauAR4lNuN8g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6666004)(1076003)(508600001)(6486002)(316002)(86362001)(36756003)(186003)(2906002)(6916009)(83380400001)(4326008)(66946007)(66556008)(8676002)(66574015)(6512007)(38100700002)(8936002)(5660300002)(6506007)(66476007)(82960400001)(2616005)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVJKMnRiZEk3SDBtazMrNm5lNno4RlBFSU1xZzVCWkptSlQrOHpHVTZaN25n?=
 =?utf-8?B?NlVRaG1mWUM5ZlRYT3UzQjdlNUdTbG9xd1V0V2E3T3phSDBBMmYxc2RJMFcr?=
 =?utf-8?B?V2ltV0hyYjRVQ28yRmxuZC9jaDNSU2FmUktaYkE2R0MwTjBzSnNQc0lLWEF2?=
 =?utf-8?B?MzNRMW5rY1BCME1ma2VxQVN4NTRxNk4zYlVaZldNVUJBaTdxSUc3cUdFU2Y3?=
 =?utf-8?B?eVZENTA0SVBTbXdkR2k3VUJId2VQTHoyeS9vek5PQU5MRzZEcmFjekxmcFM0?=
 =?utf-8?B?eWNrMXJOcDB5ZFduWXdnT25McHlLd1o5LzRoU0dtUzZjU1gzdkh0RVZBTGZE?=
 =?utf-8?B?bTVqU3dpNk9DVjFJK0E2V05pdWFJOElzNTFWZjdvaC9aT2Fhbldad0VvZXpX?=
 =?utf-8?B?YjI4VlREcUthOHhjWW0wdDc1YytQelV3RVNsZkt5TXZCVnJXbGxYRCtmb1kv?=
 =?utf-8?B?ZlpLby9LZEJPeFdzcHhFRzQrV0tXOU1Gd3dBQXdEM1RNWGlOckZkUUhETHhp?=
 =?utf-8?B?RHJBTEVmV1B3U21BWFNHbk5CdHZCRmRERDV4ZStNUURBcTN1bG1NS05BaU9l?=
 =?utf-8?B?Mk83VGV4bEhmR3QyaUQyWkpDN0FGNm1vajIxWXoxZTg0Z09IUDBLUTV4Yndr?=
 =?utf-8?B?c3MxTi9lL0NOblYzV0F6bXZ1S253Y2cwRSt2Q0JweGtvajJhbnlrWkl6MVNu?=
 =?utf-8?B?MmRLRlpTRkNKQU5PVnRyV2pyNGZZazFzY2V1SjB0WitIckV1Y3ByMGFBVC9P?=
 =?utf-8?B?RnVFMDE2R1JaaThxMHBuVG45bDcrUTI2RTVLYkl1Z2NqSERVdDBMUjhNK3dX?=
 =?utf-8?B?NW51ajdFUU5qQlJmeEpaNXduYXltZ0RpMkk2SXVFVkJIbUlGQ2tPRmVQdWxZ?=
 =?utf-8?B?M0M4amJKeURkSGx3aEpXK01vZzNpQ1QwUUlmRHBQY01sbUVlVWxLQjhmVjdN?=
 =?utf-8?B?YW1QSHhETys1Nk9aUEoya1N4T3JTRnN1VDVTNW9hY2tWRXVKRkFWSUYvK2lm?=
 =?utf-8?B?RGc0ZzBTZG9pc3o1YjJwTlovZGZrV3FwUTdGbG16NUV6Y1hCeEZHV0s1WlZs?=
 =?utf-8?B?OEtUUnhreXlqWVZiWjcwUzBJaHlidXIzRE5XdGNWUUVwY0JyRUhCalFiMmI1?=
 =?utf-8?B?bXNibXdRbmhZd09jc1lVRldhUlFCSm4zV004c2t1dnRsb2pCdjBqYnJmZWVK?=
 =?utf-8?B?TmpMTVRxc25tWTVmRUhtNzFCaDRhSUovbTYxSmlLdGRQWmNYaUgrUDZ6SS9J?=
 =?utf-8?B?TDVTYjRBSjJ1S3p1V2x5Vng3dTZYeVZ4QTFxcFhTMWFyM0dtRjlab0E0SWFx?=
 =?utf-8?B?dTVzTVhhM1lSd1kzczRaeFBocm54UHZ1VEF2eCt1VFk3U2JzeHZuRWxkV2RT?=
 =?utf-8?B?NzdwUm9ZVEFjMVlXcUpOaXovcE44ZWo3TDg1Qm9NQkpOT3ZzM0svTFpxTGJK?=
 =?utf-8?B?SXNjQnIycnhpWi9SZnhHNkxCYkZ0dFk0SGhiSzE4ODlOeTVuc3JnM1Nvanh2?=
 =?utf-8?B?ZEdmRG9TTlpGQXNXYkNQdUM1amVlT0l5SHpnMmxhcXdtbXpuakdwRWczdEVB?=
 =?utf-8?B?M1E1TnRMRWFnR2NkcmxLYmY1SWsvWEhWK0oxZ2M3VDh6TXNGZ05NbXhvRjFr?=
 =?utf-8?B?SmkvbG9waERWdmdqWmc5SzZlbnY0MUdsQjJuL3JNZkhHTkpoWXVoQWlkUmxD?=
 =?utf-8?B?TUZxWXpXV3FTSUkwWk5BblVCQXU3S0tuWnpJN1l2RE95ekgyZzRvVjlqbFZj?=
 =?utf-8?B?bWlBeVZEa3Qwd0FELzRqT0lGS0k3UzZjZGNmSTl4d3FJcWlVdERSNHdTLzZw?=
 =?utf-8?B?THc2Q0g4eUR1emQzTXo0WHZ3ZVZsdFlrMjlxSVRzOTk1NUpxWVUyVFMzZHNy?=
 =?utf-8?B?cCtuVFhvQXBFV1orWEhLQk9SMkFKT3V2KzFBK1duRCt3VXZGOWc2ZTl4L0c3?=
 =?utf-8?B?UVlWVFlOQXI5UUhBcC9QL3lMVjFhaC9OQlNucXVIYjdvTmphS08vTFFvRWp1?=
 =?utf-8?B?b2JWYStMWVlIY3laTERtUEo4aEFweEFNK2JnTW5USnhPc0Q2clFCL0RhVmdH?=
 =?utf-8?B?ZFY0QldvakFvWnRiVXZoUkx0cHJDbUIxa2QzS0NUS3ArT3EwR1FOOTVIazJH?=
 =?utf-8?B?enNWTFErcWdQS21WbUFJME1nM0VHRUx0SWVtK3ZyenIvL3VIbFRVYnNuZkdj?=
 =?utf-8?B?andJdFBsRmk1QjlNN3YzVW9UYmVMTmJiZU9tSFptcWUzcWw3c1U4aWcrdGUz?=
 =?utf-8?B?UXZHczlJcXVYTDROUU5oa3hPU0pQak5meGwvOWU0VXI5VjYrWWlrZTM0R201?=
 =?utf-8?B?V3RuWDZjMmJja0RPQXU5SVVSRU55ZHlDckVoVndnRmpsS2JUTjNUM09YRFA3?=
 =?utf-8?Q?deEdWexNhdlB8nMs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 932a7727-e0d2-4127-f0a1-08da3a37cf44
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2022 08:07:40.4329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 93qtQHaZs/4HGQLx8H4C6UdIsayLVna84m0J1UfWj/SVX4yxACE4M8w2+rO/Km8uv2VSY7KKmbb7lw3RXUZ/Tq7f4X7cuaiFvpkLsvDQO1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Sanitycheck PCI BARs on probe
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

Jani Nikula <jani.nikula@linux.intel.com> wrote on pią [2022-maj-20 10:40:01 +0300]:
> On Thu, 20 Jan 2022, "Piorkowski, Piotr" <piotr.piorkowski@intel.com> wrote:
> > From: Piotr Piórkowski <piotr.piorkowski@intel.com>
> >
> > For proper operation of i915 we need usable PCI BARs:
> >  - GTTMMADDR BAR 0 (1 for GEN2)
> >  - GFXMEM BAR 2.
> > Lets check before we start the i915 probe that these BARs are set,
> > and that they have a size greater than 0.
> >
> > Signed-off-by: Piotr Piórkowski <piotr.piorkowski@intel.com>
> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c         | 33 +++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/intel_pci_config.h |  5 ++++
> >  2 files changed, 38 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 8261b6455747..ad60c69d9dd8 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -29,6 +29,8 @@
> >  #include "i915_drv.h"
> >  #include "i915_pci.h"
> >  
> 
> Superfluous blank line.
> 
> > +#include "intel_pci_config.h"
> 
> Please put the includes together and sort.
> 

ok

> > +
> >  #define PLATFORM(x) .platform = (x)
> >  #define GEN(x) \
> >  	.graphics.ver = (x), \
> > @@ -1181,6 +1183,34 @@ static bool force_probe(u16 device_id, const char *devices)
> >  	return ret;
> >  }
> >  
> > +static bool __pci_resource_valid(struct pci_dev *pdev, int bar)
> > +{
> > +	if (!pci_resource_flags(pdev, bar))
> > +		return false;
> > +
> > +	if (pci_resource_flags(pdev, bar) & IORESOURCE_UNSET)
> > +		return false;
> > +
> > +	if (!pci_resource_len(pdev, bar))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> > +static bool intel_bars_valid(struct pci_dev *pdev, struct intel_device_info *intel_info)
> > +{
> > +	const int gttmmaddr_bar = intel_info->graphics.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
> > +	const int gfxmem_bar = GFXMEM_BAR;
> 
> We don't usually bother with const for non-pointer local variables.

ok
> 
> > +
> > +	if (!__pci_resource_valid(pdev, gttmmaddr_bar))
> > +		return false;
> > +
> > +	if (!__pci_resource_valid(pdev, gfxmem_bar))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  {
> >  	struct intel_device_info *intel_info =
> > @@ -1206,6 +1236,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  	if (PCI_FUNC(pdev->devfn))
> >  		return -ENODEV;
> >  
> > +	if (!intel_bars_valid(pdev, intel_info))
> > +		return -ENODEV;
> > +
> >  	/* Detect if we need to wait for other drivers early on */
> >  	if (intel_modeset_probe_defer(pdev))
> >  		return -EPROBE_DEFER;
> > diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i915/intel_pci_config.h
> > index 12cd9d4f23de..c08fd5d48ada 100644
> > --- a/drivers/gpu/drm/i915/intel_pci_config.h
> > +++ b/drivers/gpu/drm/i915/intel_pci_config.h
> > @@ -6,6 +6,11 @@
> >  #ifndef __INTEL_PCI_CONFIG_H__
> >  #define __INTEL_PCI_CONFIG_H__
> >  
> > +/* PCI BARs */
> > +#define GTTMMADR_BAR				0
> > +#define GEN2_GTTMMADR_BAR			1
> > +#define GFXMEM_BAR				2
> 
> Is anyone outside of intel_pci_config.c going to need these? They could
> be there if not.
> 
We could use this in all i915. There are lots of places where we use BAR numbers
instead of constants when operating on pci resources.
E.g. all intel_pci_resource calls, or directs calls pci_resource_start
and pci_resource_len.
For now, we use two ( and an exception for gen2) BARs in i915,
but there may be more in the future.
It may be useful to organize this.

Thanks for review!
Piotr

> BR,
> Jani.
> 
> 
> > +
> >  /* BSM in include/drm/i915_drm.h */
> >  
> >  #define MCHBAR_I915				0x44
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
