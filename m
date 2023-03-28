Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE436CCA4E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 20:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2560610E9B4;
	Tue, 28 Mar 2023 18:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D9B10E10A;
 Tue, 28 Mar 2023 18:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680029602; x=1711565602;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=lRYW9B8khl4AET9GjwU7++xRQdSkrWPz7D/y9mAaiBE=;
 b=YJYNbKYtwwLcBz0mCaeA/k5pUZITgSKsvC7K5pCIP9g+mxVJ/j6xiZGC
 GcGNmUlfLRx2gbD9HDT+npqgLboAnKE3/3r4MccfiN9jP0U6j789Egdxz
 1Z9e8XSsFi05WtSA69PwWHMMtd22aR4n1ujHRMFP4mu4y8RFgXynuaPcI
 4YWWhGsYH7OGmGwBWFI6Hb8RewVtb2THdpX1cOLI9fc6YrvkyaF8aP6Je
 +iTdcqZn//rK5QoS4q2RR1kzRSvtdL6n6KUSgTghpjW3xlJ5D1NquBKqr
 U2L1ywHJGEqnhPsW+SjaMm7phaewZwnvP02JPqox25qltfgpNqV0q11XR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="403278713"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403278713"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 11:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="683990818"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="683990818"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 28 Mar 2023 11:53:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 11:53:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 11:53:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 11:53:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 11:53:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxFKTuuWibx5E8SF9IWVhoDb29mkQRPGPqZVhQ6sINgU2zW+ecexodidZ7DSGrBCr03uSYxVCi/+TqdIW3xK9hKnwec+bPt685fkhqB2qAe5hrWBnM0VwgkRV9eLk2TzD/aV4+8IW+ii9/BnVy9iT/oyzWFL6unddnIuPh2OACLUcsxTShBAKRjEHoWNwn7jdet4SEYlFI63mg+BZm/mgZJ9K22PozMHphIS4lGE44YCYy2ELD+GLCnkDlGsWaxAPAXs4vbraa/4IcUWOz54C3c3fFCAisOffmpwnVOlTdxSpQAHJ2/TZm3q13EG0jysxz1y5+ahyLxWiQdn17rn2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFxMnB+kY9Dc2Uzr3FfvkN7l3TGmg5KvofrRc6sT7eA=;
 b=HLk55r5xD1jYsbkvORccbgBj0viI9oEjgm4pckG0KOgPaRK5y9On5yqpUF4o/B5yyrFfhu8pKDfCXP0YQKUASXZX70JX0Jq4aM0V6Ctgd/SkrEsjxZdpYmEum2yv9sxkT6lT1oFvflvWgsjSE6oWZSY9BRUikP41KwnLWdJdsciW2TPecEEnDOwWSWWQJ/arpEDjQoZ5A/JlyVc/CSUdLSxM4L+MXYN+uABznkplBJ84s09nNZpmsf3d0WsNE20sm39yR85cSduL9vr00nbZy0Nj0xzfkf2JVMuq0bLN4VmDdjG5Fk3uddtJqDcx3KPWIY/j2SwumD9IxH77yv8VvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB8234.namprd11.prod.outlook.com (2603:10b6:610:190::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Tue, 28 Mar
 2023 18:53:18 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6222.032; Tue, 28 Mar 2023
 18:53:18 +0000
Date: Tue, 28 Mar 2023 14:53:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
Message-ID: <ZCM3mchRbwxU15L1@intel.com>
References: <20230324224959.1727662-1-vinay.belgaumkar@intel.com>
 <20230324224959.1727662-3-vinay.belgaumkar@intel.com>
 <ZCAmqEsDAxVt7ysy@intel.com>
 <99d669bf-54cc-1105-fe50-616db3aaeae2@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <99d669bf-54cc-1105-fe50-616db3aaeae2@intel.com>
X-ClientProxiedBy: SJ0PR05CA0156.namprd05.prod.outlook.com
 (2603:10b6:a03:339::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB8234:EE_
X-MS-Office365-Filtering-Correlation-Id: c2b5b0bc-0ef3-4594-f23f-08db2fbdb162
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VTO4KNIQSUytJhw/v+tuY7M8ExaVdfbGMjVl7kOP4nFyC2U7vvNIEBVxPr2K5pZWAaRxRld6XdEUFJ2NUCDx5KdPaNy/DWhPeKApnFnwl3KSDmX+NGrz4qC1jEeTb9RZ4krEp9GzQpcatzf5B8tEYdU+lnr54IP0ZS1YEY/+aAc5u6faQf33Th4MLAb/PfDVwR00rWkv5Oo+X19gZelfsE6vWHLMZ7JiSu4k/lyQsr70sDbOs6pqMcj8VP8S+sUyKJp8w5RMLFXEZNUka3od16VXoQfmKZBx4ziPxFruRyxQEsul0w+pirrqnu/Rt4X6TXFbrBxgHAeRgz9BV1eS5+zNROKHuwR4PQFil1aB46wp/3NGtO8ZxzNewPODPEAR+4WWUgFgtt+3/tlrh1EyH/uYJj2pcmL+IWx5WKd0FF80C+Ehg8B00GT9ZN19vPMTuk9DP+m31jPjDpfBjdwK4YTF6GtRQu+Ly4DwfcTSmVeFJ5A9Nbg8wEC2SxoY3YHRdzGfLKFRy1kym5pKfwWgIVUPF11PTCFHIljdIk2fbPg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199021)(2906002)(44832011)(38100700002)(41300700001)(8936002)(6862004)(4326008)(5660300002)(86362001)(36756003)(82960400001)(316002)(478600001)(6636002)(37006003)(6666004)(6486002)(966005)(6512007)(26005)(53546011)(6506007)(450100002)(66556008)(2616005)(83380400001)(66476007)(8676002)(66946007)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmJrK05KZlAwNjI2aUZWZ2p2YkJwNDcySzNiSVVhT3pWK1RENDNtaUx5NFcz?=
 =?utf-8?B?bmM5ZFZRYmxMYVJYMkNvSUNKQWpiNWZETXZwY3J1WGxkcjc4YmlndVBNcGlq?=
 =?utf-8?B?K3cyajZtaUNscFZ2T2FQN3dkWXBvM1pRTTlRelB6cHk2SGpmL2Z4Qk9Zby80?=
 =?utf-8?B?d0NIMlAyVGVlRmlFVTRsYVVPZ0dmY0NxMk5JaU1hZUF3bEI3MFJQOUZmNVJQ?=
 =?utf-8?B?b2RiRVlnMHBnODFzdmFLdVRZOWh4Wi9SK3pRTXcvWFkxRzcwT25VeERmZGFQ?=
 =?utf-8?B?WlZzRGJsNkdETzdlUi9xL2pEQVJ6UEppV2dUcWZ5cjdHbEl2MFVhTzlBNHM3?=
 =?utf-8?B?QXEwS2xvVWUwdE4xclZwcFNrQnFvUTMvNWd0MVZSZGRWeGlvZDRBWGEwZ2JQ?=
 =?utf-8?B?V08xZURZWDJ0dEpQdXVTNnJJWVU5R3NUSHEvTHJIaExyN010eWZmZnJ1dlhX?=
 =?utf-8?B?eEFySG1oMStBeEVGNGlWVU5HTTJ3OGRvLytSS3UyUWUwalF2cmJqWUhBZTY5?=
 =?utf-8?B?RWZyNkJPa2JwMHlSekROcE1BdUFMSUJWSnZkVlRaQTVLZEhoUjdUeE5ITkVD?=
 =?utf-8?B?cy9RVUhObVhVQzluWm1xeGExTGhjcEh5aDlnZnFxeE02YzJJMHhUcEtOSW91?=
 =?utf-8?B?MUdINktXZEIzQzhCV0YzYzVzSHpCMys5YWttVlQ1UXRoek05MzdiL1M1eU1K?=
 =?utf-8?B?YXNzWXV0eXdjTWlOcGl4OFpUTi9MeTd2SCtMSy8xUDZXN2w5SmZlTC90YTJu?=
 =?utf-8?B?d2hOYXZISkN5OUZueTdpek9paEFvN2hXVm9Ub0MwYThKQ01XWERJTTlQYzQ3?=
 =?utf-8?B?MnJCaUpPOHNJY3ZXOVg0MndXVUlrUkplcG53b1YvUU5aK3pXVFdVbjdaa1BY?=
 =?utf-8?B?QlltTUZSdUl3NkVveFJlbFNBTVdRWG1qamx2MEdQbU5JTkF4T1ZpUG9KNFRM?=
 =?utf-8?B?UGhNN1Z1VHE4dXI4Z1lKMnRFZzlCc0dudHgvV0VFRkpIbTdSbUczcEVGOUpa?=
 =?utf-8?B?V1dtWmtaamliM0c2ZWlBUmZ6ajdkTzBtYW5TR0RJM2VCS2tmeWdpY0JBaExn?=
 =?utf-8?B?a01FRlcydmdtR05OMmt2dzNJc0RadWhPelZwd2xRdjlRUGtxM1VzVCt5T3gr?=
 =?utf-8?B?Q0hDOHN4Qk9nVEpKQ3NXZWFJc0l2YUdaMmo0WWY2NXpSZHp2Wm91eXZjVEQr?=
 =?utf-8?B?TVQvRnZPQmdqZzhxb3h5UUYwOGJ5N3kxcGdwM1RJdllONFBGbU1PTElzdCs4?=
 =?utf-8?B?YXR5R0VWSDhuTDlxSTZrNDJXcE1OKzNHY1RaT1FvbW9Zc2NwYUF1a3Z0a0Nh?=
 =?utf-8?B?QTlBUnJIam1nTlhRazFBUUx1RzhFNTZBODRhaGVTSUxPWDZVNGdUNFpFRmFQ?=
 =?utf-8?B?eDMrVC9qUUkrWm9wOHZFWjVsR3N0bjNFc0JJYzdVMHYrY2U0eWZPTTJ4c3Nj?=
 =?utf-8?B?NkFXQ2ZhbGtiRkpGYmY1SGxYc1BCdGxpK0U5TG5QcmV3R0dwOXQ1WWxqZGJn?=
 =?utf-8?B?RHJjVlBCTmZhcDVFb1plNGNoWUpheFNTTGp4blJiNk56d1FUa2hDWHFnS0h4?=
 =?utf-8?B?ZWFsL3VtaEIrYTNXZlFXYXFHcm5hOE9oL09PSlA3NGozeEg0cWRJb1N3eUNy?=
 =?utf-8?B?bTFYUGEybnN5a2RKNjUzcFJZRmhoa05DZ0g5dWZ6MVVTVkhaTkRtQ2RIUUcv?=
 =?utf-8?B?TXdZRDEwWHBPV0JhaXZNVTRwdVBxNWJUdFQ2R0dKNTBXSzFIQ3dGZHNaMUQ2?=
 =?utf-8?B?MlA3Q0d2b2hieVF0VmsvVmdNaEhVck5xanFUMzlsZEVib3k2SGxJeFJUc2dl?=
 =?utf-8?B?Y3hITHl6ay9ydjd1bUhnRXF4VVpZMVJVYXlNS2hCTkd3cDJyVXQvQnFoVEZ0?=
 =?utf-8?B?T20xalBENjRtZ1FYQ2RiUmFTRC8rekZqQW1hUWpWZ0NqNFhKeVFiVnVJL1A3?=
 =?utf-8?B?cHZuVDhzdTd6emIzbVJDMk5mSExYWlUvQkFWRVNjeGYyb0ZKd1hKczlJSGk1?=
 =?utf-8?B?VDFpYVkwNGY5WFU5YVVsQ1J6bXp1Z0NFNzFheVNkMjc5UnZha1RuZmtsOVZq?=
 =?utf-8?B?RHJ3Zy9uVXY3dXdsVjlCRmJVZ0swenNXTk5OT3Fjak04ejl4SDc3NXhUMVlD?=
 =?utf-8?B?K1M5bExMY3hWdVlKWERYWVBOMDd2WnpoaDdOQmdRQXM1anJQR0c1WG5ZZytR?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2b5b0bc-0ef3-4594-f23f-08db2fbdb162
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2023 18:53:17.9576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0e2YIJrVeCzRNBGIPaFc7PI+wTaX+urzGioY5ld1inclBWCST7QtQCH8msElIir4KEVe6dCvrgsIq7Tebp8d9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8234
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915_guc_pc: Add some basic SLPC
 igt tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 27, 2023 at 04:29:55PM -0700, Belgaumkar, Vinay wrote:
> 
> On 3/26/2023 4:04 AM, Rodrigo Vivi wrote:
> > On Fri, Mar 24, 2023 at 03:49:59PM -0700, Vinay Belgaumkar wrote:
> > > Use the xe_guc_pc test for i915 as well. Validate basic
> > > api for GT freq control. Also test interaction with GT
> > > reset. We skip rps tests with SLPC enabled, this will
> > > re-introduce some coverage. SLPC selftests are already
> > > covering some other workload related scenarios.
> > > 
> > > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > you probably meant 'Cc:'
> Added you as Signed-off-by since you are the original author in xe igt.

I do understand you did with the best of intentions here. But since with
the new Xe driver we are going to hit many cases like this. Please allow
me to use this case here to bring some thoughts.

First of all, there's a very common misunderstanding of the meaning of the
'Signed-off-by:' (sob).

**hint**: It does *not* mean 'authorship'!

Although we are in an IGT patch, let's use the kernel definition so we
are aligned in some well documented rule:

https://www.kernel.org/doc/html/latest/process/submitting-patches.html?highlight=signed%20off#developer-s-certificate-of-origin-1-1

So, like defined on the official rules above, in this very specific case,
when you created the patch, your 'sob' certified ('b') that:
"The contribution is based upon previous work that, to the best of my knowledge,
 is covered under an appropriate open source license and I have the right under
that license to submit that work with modifications"

Any extra Sob would be added as the patch could be in its transportation.

"Any further SoBs (Signed-off-by:’s) following the author’s SoB are from people
handling and transporting the patch, but were not involved in its development.
SoB chains should reflect the real route a patch took as it was propagated to
the maintainers and ultimately to Linus, with the first SoB entry signalling
primary authorship of a single author."

Same as 'c' of the certificate of origin: "The contribution was provided directly
to me by some other person who certified (a), (b) or (c) and I have not modified it.

It is very important to highlight this transportation rules because there
are many new devs that think that we maintainers are stealing ownership.
As you can see, this is not the case, but the rule.

Back to your case, since I had never seen this patch in my life before it hit
the mailing list, I couldn't have certified this patch in any possible way,
so the forged sob is the improper approach.

It is very hard to define a written rule on what to do with the code copied
from one driver to the other. In many cases the recognition is important,
but in other cases it is even hard to find who was actually the true author of
that code.

There are many options available. A simple one could be 'Cc' the person and
write in the commit message that the code was based on the other driver from
that person, but maybe there are better options available. So let's say that
when in doubt: ask. Contact the original author and ask what he/she has
to suggest. Maybe just this mention and cc would be enough, maybe even with
an acked-by or with the explicit sob, or maybe with some other tag like
'co-developed-by'.

Thanks,
Rodrigo.

> > 
> > > Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > > ---
> > >   tests/i915/i915_guc_pc.c | 151 +++++++++++++++++++++++++++++++++++++++
> > >   tests/meson.build        |   1 +
> > >   2 files changed, 152 insertions(+)
> > >   create mode 100644 tests/i915/i915_guc_pc.c
> > > 
> > > diff --git a/tests/i915/i915_guc_pc.c b/tests/i915/i915_guc_pc.c
> > > new file mode 100644
> > > index 00000000..f9a0ed83
> > > --- /dev/null
> > > +++ b/tests/i915/i915_guc_pc.c
> > since 'guc_pc' is not a thing in i915 I'm afraid this will cause
> > confusion later.
> > 
> > I know, guc_slpc also doesn't make a lot of sense here...
> > 
> > Should we then try to move this code to the 'tests/i915/i915_pm_rps.c'
> > or maybe name it i915_pm_freq_api or something like that?
> 
> Sure. I was trying to make these guc/slpc specific since host trubo/RPS
> already has coverage in IGT.
> 
> Thanks,
> 
> Vinay.
> 
> > 
> > > @@ -0,0 +1,151 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright © 2023 Intel Corporation
> > > + */
> > > +
> > > +#include <dirent.h>
> > > +#include <errno.h>
> > > +#include <fcntl.h>
> > > +#include <inttypes.h>
> > > +#include <stdlib.h>
> > > +#include <sys/stat.h>
> > > +#include <sys/syscall.h>
> > > +#include <sys/types.h>
> > > +#include <unistd.h>
> > > +
> > > +#include "drmtest.h"
> > > +#include "i915/gem.h"
> > > +#include "igt_sysfs.h"
> > > +#include "igt.h"
> > > +
> > > +IGT_TEST_DESCRIPTION("Test GuC PM features like SLPC and its interactions");
> > > +/*
> > > + * Too many intermediate components and steps before freq is adjusted
> > > + * Specially if workload is under execution, so let's wait 100 ms.
> > > + */
> > > +#define ACT_FREQ_LATENCY_US 100000
> > > +
> > > +static uint32_t get_freq(int dirfd, uint8_t id)
> > > +{
> > > +	uint32_t val;
> > > +
> > > +	igt_require(igt_sysfs_rps_scanf(dirfd, id, "%u", &val) == 1);
> > > +
> > > +	return val;
> > > +}
> > > +
> > > +static int set_freq(int dirfd, uint8_t id, uint32_t val)
> > > +{
> > > +	return igt_sysfs_rps_printf(dirfd, id, "%u", val);
> > > +}
> > > +
> > > +static void test_freq_basic_api(int dirfd, int gt)
> > > +{
> > > +	uint32_t rpn, rp0, rpe;
> > > +
> > > +	/* Save frequencies */
> > > +	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> > > +	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
> > > +	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
> > > +	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
> > > +
> > > +	/*
> > > +	 * Negative bound tests
> > > +	 * RPn is the floor
> > > +	 * RP0 is the ceiling
> > > +	 */
> > > +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
> > > +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0 + 1) < 0);
> > > +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn - 1) < 0);
> > > +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0 + 1) < 0);
> > > +
> > > +	/* Assert min requests are respected from rp0 to rpn */
> > > +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rp0) > 0);
> > > +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rp0);
> > > +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpe) > 0);
> > > +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpe);
> > > +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
> > > +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
> > > +
> > > +	/* Assert max requests are respected from rpn to rp0 */
> > > +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
> > > +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
> > > +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpe) > 0);
> > > +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpe);
> > > +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
> > > +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rp0);
> > > +
> > > +}
> > > +
> > > +static void test_reset(int i915, int dirfd, int gt)
> > > +{
> > > +	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> > > +	int fd;
> > > +
> > > +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
> > > +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
> > > +	usleep(ACT_FREQ_LATENCY_US);
> > > +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
> > > +
> > > +	/* Manually trigger a GT reset */
> > > +	fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
> > > +	igt_require(fd >= 0);
> > > +	igt_ignore_warn(write(fd, "1\n", 2));
> > > +	close(fd);
> > > +
> > > +	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
> > > +	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
> > > +}
> > > +
> > > +igt_main
> > > +{
> > > +	int i915 = -1;
> > > +	uint32_t *stash_min, *stash_max;
> > > +
> > > +	igt_fixture {
> > > +		int num_gts, dirfd, gt;
> > > +
> > > +		i915 = drm_open_driver(DRIVER_INTEL);
> > > +		igt_require_gem(i915);
> > > +		/* i915_pm_rps already covers execlist path */
> > > +		igt_require(gem_using_guc_submission(i915));
> > > +
> > > +		num_gts = igt_sysfs_get_num_gt(i915);
> > > +		stash_min = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
> > > +		stash_max = (uint32_t*)malloc(sizeof(uint32_t) * num_gts);
> > > +
> > > +		/* Save curr min and max across GTs */
> > > +		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
> > > +			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
> > > +			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
> > > +		}
> > > +	}
> > > +
> > > +	igt_describe("Test basic API for controlling min/max GT frequency");
> > > +	igt_subtest_with_dynamic_f("freq-basic-api") {
> > > +		int dirfd, gt;
> > > +
> > > +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
> > > +			igt_dynamic_f("gt%u", gt)
> > > +				test_freq_basic_api(dirfd, gt);
> > > +	}
> > > +
> > > +	igt_describe("Test basic freq API works after a reset");
> > > +	igt_subtest_with_dynamic_f("freq-reset") {
> > > +		int dirfd, gt;
> > > +
> > > +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
> > > +			igt_dynamic_f("gt%u", gt)
> > > +				test_reset(i915, dirfd, gt);
> > > +	}
> > > +
> > > +	igt_fixture {
> > > +		int dirfd, gt;
> > > +		/* Restore frequencies */
> > > +		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
> > > +			igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
> > > +			igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
> > > +		}
> > > +		close(i915);
> > > +	}
> > > +}
> > > diff --git a/tests/meson.build b/tests/meson.build
> > > index 7d2168be..3ebd3bf2 100644
> > > --- a/tests/meson.build
> > > +++ b/tests/meson.build
> > > @@ -202,6 +202,7 @@ i915_progs = [
> > >   	'gem_workarounds',
> > >   	'i915_fb_tiling',
> > >   	'i915_getparams_basic',
> > > +	'i915_guc_pc',
> > >   	'i915_hangman',
> > >   	'i915_hwmon',
> > >   	'i915_module_load',
> > > -- 
> > > 2.38.1
> > > 
