Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85503987621
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 16:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9C410EB71;
	Thu, 26 Sep 2024 14:59:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y5ltQjDB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD35E10EB6E;
 Thu, 26 Sep 2024 14:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727362769; x=1758898769;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=uaZZ4Gg6IFuRHnBSSzNdoFgyyVjd4Kp8LEY0AhSvFoY=;
 b=Y5ltQjDBdVh9wsXz8KV+8SjDsEkRwnAA63uXZqd6gdTGm0SxQNgVzSNP
 pDhaArUnTIZuWXLtiwiuPDdp57jDIcZ5kdw2+YPpghZOOCg1zAJVk9OX5
 YNq9i6IICFRsfTQtT7bfY7H0NrLkqEPVafiusmAEkQNwZ9Uwr1ZN9APft
 FaijeYlIaHPO88XyBR0bfJ8JPBnsWeVdQd44ouo95/Q4U2OcJ3JS45lw6
 l+HftrTzvOFVdh6lniSaGHmC7q56wr/k86zzGuxjha2tONbgdvkYGICYg
 PANLEkxmepNWVBcu2n5jrQyQbKzBYeJ6t6KxIFHwuaTpO7b6cAEqmJqni g==;
X-CSE-ConnectionGUID: An3B8ydJRi60QF/xvNrXrA==
X-CSE-MsgGUID: 5+00bc+gS+2AnK963kkI2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37048403"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="37048403"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 07:59:08 -0700
X-CSE-ConnectionGUID: kPD+9D2kTuqhOxDHWF1jQw==
X-CSE-MsgGUID: HfJsPW9uRXqT1RkWSdS6UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="72479423"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 07:59:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 07:59:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 07:59:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 07:59:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 07:59:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uBdG+bNPNbm607JHvFigy0vmJ2/TgOiudtT9+zYro0fb3/mvopEkj7vUw5wGBTDrTOIzS3Z+AM3CBgPmxp0szUEtGmkgxwozkzLYtslpkpUF6XoC0i+gbmLQBSVI0GeHCUkuaw8oVuUVd1GWV7k+aHHIe/rjDtgd81wzOlreVZuYmjJT18Xs8Yj/1U6Nm0UAFiquOjE09Mew17oJkvaLOhqjtn2ytkk/We0JRlp/L0eaNA0dwTuj5DsjgPi03KSpr2RDLDQnjqkyGq1LwPyUIZ/0015eA4DRP9ERUY65LiF/HQxZa5P+r3L2OCVYkFEPY6XLuJ6Q7RwZMJpsN2ompA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eP73BejFQjK3s+xE85kBkXiVuHbH+9veuCdAezdTzwA=;
 b=HqhfQsAMVlWTxsMNqhTIprR+/tL/xv7cmsXP4Ihb47KtqA/PCQ0j2WOLma/4WNZpCWuTIJ4QPyoS6vmwWgij2/5irHab0yfEM26xSV/q4b93yzjDPT6A2fginBZmqf0i/9IjDUjmE/fhPKeQKer4f5nvh8h3Qrw313xKPG8iQNg9MTKrIl7nQtFSpPPsSm6FIpNiFhmnNtQvLFYmBSXUBIPuHu/tQgPJXE1td/sMEJd7eCw1Kf+8mu1Oa6JL05ebODv+9aTOHqzMBdwc/nD9iSngjjTqzIfIVXut5aWkvgrpruwoERY2lY7rmlL7q9IfdcUjmAc0tDvvf5+1uw0PAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BL3PR11MB6507.namprd11.prod.outlook.com (2603:10b6:208:38e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Thu, 26 Sep
 2024 14:59:02 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 14:59:02 +0000
Date: Thu, 26 Sep 2024 10:58:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Message-ID: <ZvV2ssfgHA8jvTro@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
 <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
 <87ldzh41hb.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ldzh41hb.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0375.namprd04.prod.outlook.com
 (2603:10b6:303:81::20) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BL3PR11MB6507:EE_
X-MS-Office365-Filtering-Correlation-Id: 70793108-84f7-453c-a198-08dcde3bc1fd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?9NJqBGh8a6/+RepncsLKRepblSOi5eI5Gz2kSAH0Ui0CcYCIap3G16nOoX?=
 =?iso-8859-1?Q?uEffRj16lL5nyAklfKlugluJJCj9UY9Op7pNeWmeBGmcO8Yj1s+W2cxzgj?=
 =?iso-8859-1?Q?HBg2Y/L1fy/DSooTSmA74utk7zkduxx7HTLbLs+2FI/7a3e/XF2SwGMnr7?=
 =?iso-8859-1?Q?7KdmsBwtWLqpw6/fQEZgNlawQ6MRULN0Puy/xOoj7ZX1ZcE3DLFRrmprxc?=
 =?iso-8859-1?Q?5wDlR7QhiOcYBKQVJd7K0PkUxpNaFjJiwFtGVyQoDvA1OENce5yZ82Jjll?=
 =?iso-8859-1?Q?2LimNbaZOw6Iw7NVB27a9fdqY16yicJ/85M5JQ+pC1BppbRhcG2fIaNb8d?=
 =?iso-8859-1?Q?lkHEh8A0mNbEkdBNOxrMnX/wLTIIb47BCjOlvflsn3AHp1rH0aM6LUi0js?=
 =?iso-8859-1?Q?vDN2y8ppz4qjXFTyfxR16LOIUt/uXkwOCYf7Lth8MmaxL2jsIU0WtkpfxN?=
 =?iso-8859-1?Q?XCvZ6fIzP62RfYcXvjoQzr41UGRIHIHfKy4u94I0QK6aUaMv3oOxKvsoik?=
 =?iso-8859-1?Q?Uc6Owv2BIt7viD0+X07SU0G6bGgKjY/g28ml5w+e8oHm21UDbLsXF1MG9X?=
 =?iso-8859-1?Q?BxRouqnRWtoTBB/DR81M3sGeoZsbjRd1h4/NlA1xdTVFn1d1cNTpjH2RDH?=
 =?iso-8859-1?Q?cHXk3CGxcNOdW8smIJjy8r/O1aGhIlq2DySMptfyC/a2fbgr6N9GXiVKKJ?=
 =?iso-8859-1?Q?nQaMgOWD5F/U/KzH0lD0MgHuiaO4T8gZqgFqn/orwSKGnU3GwDFFcTMiiV?=
 =?iso-8859-1?Q?mjOTihA0VUjbMR9v1CQjzfo4m6ioSTtiYILPXoOZzo2PDPZcTKbCE5kUwF?=
 =?iso-8859-1?Q?mjSjw9P4kqpMaD2DOY5GYJH+gohi9vc759HoJmWjVnKPHOXVkvjkaUWCwb?=
 =?iso-8859-1?Q?GHWkbtVWQq0AzjUlCj130Qt0THvwy1y7JMAQZLIwXwKqoLa4TfZD5k3i/I?=
 =?iso-8859-1?Q?Q/wMIZgHHO5ArUXKuxGzThsNTpGrL/jnLGmU3PUpRrmlKw0ear2p4fGylc?=
 =?iso-8859-1?Q?5pxp+w06c/oK4DeP+ydKdOyWuqdN2/P/vBjF5C1ZEcdW7EoK16VvwQaJlX?=
 =?iso-8859-1?Q?HK7KZ53vPEak1Cb3kVyQYyS09APnlKKndHYGZgAa0f/1MFpUEsFdCjA62r?=
 =?iso-8859-1?Q?hOMWSr3M/QK21g5lCMOJh9NYlhVRg+1HsM6C8Ktdi4y2r49KTSyrfyre+u?=
 =?iso-8859-1?Q?qyOgD6sCTva8UDaTPPTVq8YLO1PHhbWuwodOD38h4pJVZc0lm4NTgEpfJq?=
 =?iso-8859-1?Q?UdBOPNoJZz7jNPVXoYvGjKQ0H8X4iuFGlODC8+Px9BSl/4eUdWC0w+Ve59?=
 =?iso-8859-1?Q?nAtXqfhjX76IIfMQitAqpVHDVg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qOyq9wdk9Agf+w+dq9HFmVRZLo2+HaeYM+Ez7IpwTlIzxelVNRwnEeLhB/?=
 =?iso-8859-1?Q?dQLvcZItbaWfFBDOyOyCq7T+qKgbnANnLExDxR+y5xSscshgxJbOsEuFtP?=
 =?iso-8859-1?Q?LFo/dl75fYUVFcTPK2hQBE7uZuNotmHvBajM+x5gqeUJUilThNDdrBWIIQ?=
 =?iso-8859-1?Q?ygyupnKJ7Cs8XZ/5dKkgNjxJYFNZHYFOuFLSzB6PVqPNHkfpZGgN5HXtSl?=
 =?iso-8859-1?Q?S5NShYuyO/I9jmKz3Z8N/oyCd0uLFlEjjf1cQ3li0up6GdT8v9QD5XHSS6?=
 =?iso-8859-1?Q?FVeHAwKbVCUo4KN760jJUGUkXSzgHW8Jz2sqCDZ2/6cWK077cFsKvT3DM1?=
 =?iso-8859-1?Q?4WhqN08DO1mqxgt48Ra5do5aHqEeJHKS5ycgzJNuzCfpx1kYnTzNCu7qHS?=
 =?iso-8859-1?Q?EHTb2J0/32tViL4tzmwjE+mFmG8pTfwaNCtE3XD7FF1BTbRiHVjeiZq0dN?=
 =?iso-8859-1?Q?Uv5cGVINdd5rUr38lXWNx3zbdDI5T7WdqSaU7crLVWTIF5fKBMpgcCMFWn?=
 =?iso-8859-1?Q?nPNxxxC+2QkkNO39HsPZeyAdc7bsIfcAwRFqs2vQOsVa5cXyB9U+jA6bNA?=
 =?iso-8859-1?Q?D6CInLMXZ3b2MSabNy2VRNmtesDASckii7RHoim58FgcEn5pR2UFUvVztv?=
 =?iso-8859-1?Q?ydhRiapysKDTQHhrk/Do75ThCt89dphidEonI4AAo5FZE+K3/P3blff8/A?=
 =?iso-8859-1?Q?Y0qrIzkjrZexAfR/HFVVHoSSVxURWxYhaXiy9pMQOhyVJ+OzyECCPtgstn?=
 =?iso-8859-1?Q?k1wMIcKDMuSGMC0i2gb+siFwqk0XnLn6+ma+rbDLltL2EIYWZoxbpxVH8n?=
 =?iso-8859-1?Q?0gJFIdBasLJOp6xH4Skcreen9uJfWQJCN22MfHX1gyPyIqUCidv1iwPu3S?=
 =?iso-8859-1?Q?o0veJNqEIwLqKAUzn1o/ifBATJ+sPoWRqRzXiya3dsFPYtiYTvz1yQ0SaY?=
 =?iso-8859-1?Q?St3N++MM89jVyLjYjfgOOU3/2Otac7zD987mscrKCp4bqDWSg91VKzvq0a?=
 =?iso-8859-1?Q?QvyoQS6iAxefkSVZQqIGK/YcR8KMoxm+PkQQPo0NO/YHFlZDOu2vPXesRm?=
 =?iso-8859-1?Q?aVX81o+FC6YA2qIpUlEuGyItxuFKwZEfylSAcRdAT9hR9+hD8LXa64m+xO?=
 =?iso-8859-1?Q?llKK5NhiE/a+nz6sth4F4CrmDY7XCBIpmaVGzrwfkecsGT9fL1QXkB++9L?=
 =?iso-8859-1?Q?XDHH7ASA3hw9li87lY3xGqRTUpjOgkLbsNTaHOW9M03oID0IIZT1vKwJm2?=
 =?iso-8859-1?Q?2WKr4yrdggdrBLWCtNCajdG0HZhXeq8/82mJT/bcdV20nhuiinSeIXYz/W?=
 =?iso-8859-1?Q?N+0+Bm+PLqQEmKytzA5Bnu3x/3/1hfrlNl0Yx0jAgq4OOz3MoAC6QmCxBA?=
 =?iso-8859-1?Q?3XNHbC7KHtPTVTLucObSpILUK4TTYCeRScI6U9iHxmMzJHvmrqBfAW+QaO?=
 =?iso-8859-1?Q?0quUqJ51JYzaHcw4u37w/IT46m3cCVDzj54029rj+BnxydMPPTgfBUZTdb?=
 =?iso-8859-1?Q?dP8kGPALX5GcqX53KeVhRdcjKccc/OtKN9qB9Qbacml3LnL9AdhEIo8tej?=
 =?iso-8859-1?Q?VYRAk9GblxHhRMwFzBxPuqm97wCHxlE+CDRbvzpqipZuMoStZpZ7eCw8VY?=
 =?iso-8859-1?Q?O5wrJKLkjDvAYioGq84ML4QbtMUT84XZ0u5jdMwT37vyCJ/kWtgaKXNQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70793108-84f7-453c-a198-08dcde3bc1fd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 14:59:02.1661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G5BU4mzC7bYGd31yKG+tDbeB5ApNxagKKK5R1kVZbKR9Ih2x/Phr846jXuYz4guCfHNWIgg20ObToF3F/Sa80g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6507
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

On Tue, Sep 24, 2024 at 04:37:04PM +0300, Jani Nikula wrote:
> On Tue, 24 Sep 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > On Tue, Sep 24, 2024 at 12:49:25PM GMT, Jani Nikula wrote:
> >>On Thu, 29 Aug 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >>> On Wed, Aug 28, 2024 at 04:41:24PM -0400, Rodrigo Vivi wrote:
> >>>> On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
> >>>> > v2 of [1]. Please read the cover letter there.
> >>>> >
> >>>> > This addresses review comments and adds a few more commits on top, in particular
> >>>> > the last one showcasing the approach.
> >>>> >
> >>>> > The main question remains, is this what we want?
> >>>>
> >>>> I don't know why, but the 'is' thing is still strange.
> >>>>
> >>>> I know I know... I'm bad with naming myself.
> >>>>
> >>>> I think about 'platform' but that get too big
> >>>>
> >>>> if (display->platform.BROADWELL)
> >>>>
> >>>> I think about 'gen' but then it is overloaded....
> >>>>
> >>>> then I think about 'ip' is worse...
> >>>>
> >>>> 'version'?
> >>>>
> >>>> 'name'?
> >>>>
> >>>> if (display->name.HASWELL)...
> >>>>
> >>>> ....
> >>>>
> >>>> But well, I like the overall simplification here in general.
> >>>> Without a better name to suggest, I guess let's just move ahead...
> >>>
> >>> One slight concern with the is.foo is whether it complicates finding
> >>> things with eg. cscope. But I suppose for platforms that doesn't matter
> >>> all that much. For the has_foo stuff it'd be much more relevant.
> >>
> >>It does make finding things harder with cscope and gnu global, but git
> >>grep for is.FOO is pretty accurate.
> >>
> >>> Anyways, can't think of anything particularly elegant myself either,
> >>> so go ahead I guess.
> >>
> >>So I haven't yet. I just still have that slightly uneasy feeling about
> >>whether this is a good thing or not. That doesn't usually make me shy
> >>away from things, because you can fix stuff later, but getting this
> >>wrong causes so much churn everywhere.
> >>
> >>The fact that it's not a macro makes it less flexible for future
> >>changes. The display->is.FOO is somewhat legible, but could be
> >>better. Would all lowercase make it better? I don't know.
> >>
> >>More alternatives? Not elegant for sure, but just alternatives:
> >>
> >>- Lowercase names:
> >>
> >>	if (display->is.rocketlake)
> >
> > what I really dislike is a struct named "is". Going full mesa-way would
> > be slightly better IMO:
> >
> > 	if (display->is_rockelake)
> >
> > or
> >
> > 	if (display->platform_rocketlake)
> >
> > or
> >
> > 	if (display->platform.rocketlake)
> 
> Fair enough.
> 
> >From implementation POV having a sub-struct is easier than not.

how the subplatform would appear in this case?

> 
> >>
> >>  Does not help with flexibility or cscope.
> >>
> >>- Lowercase macros for display, e.g. is_rocketlake().
> >>
> >>	if (is_rocketlake(display))
> >>
> >>- Macros based on just the platform name, e.g. ROCKETLAKE().
> >>
> >>	if (ROCKETLAKE(display))
> >>
> >>  or change IS_ to something else e.g. PLATFORM_ROCKETLAKE().
> >>
> >>	if (PLATFORM_ROCKETLAKE(display))
> >>
> >>  But that can get a bit long in some if ladders etc.
> >
> > Does it matter much? I think those would be the exception, particularly
> > because platform checks are kind of rare these days.
> 
> Well, they're maybe the exception for new platforms, but i915 display
> does have to deal with a lot of legacy with a lot of platform checks.
> 
> > grepping for LUNARLAKE in xe reveals only 2 users (+ few workarounds),
> > because wherever we can we check by graphics/display version rather than
> > platform.
> 
> i915 display has only one use of IS_LUNARLAKE(), but there are 1k+ other
> uses of IS_<PLATFORM>.
> 
> Incidentally, this is the reason I'm procrastinating about the change at
> all.
> 
> > Then simply using something similar to what we already have in xe, would
> > be great IMO:
> >
> > 	if (display->platform == PLATFORM_LUNARLAKE)
> >
> > it may be verbose, but shouldn't be much used to matter in the end.
> 
> The downside with that is that you can't deal with subplatforms as
> easily. It becomes
> 
> 	if (display->platform == PLATFORM_LUNARLAKE ||
> 	    (display->platform == PLATFORM_ALDERLAKE_P &&
> 	     display->subplatform == SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N))
> 
> or similar. Definitely not a fan.

unless the subplatform already includes the platform?

But well, I also don't have a good suggestion here.
The '.is' struct is strange indeed, but at least covers all the past
and future strange cases.

But I also wouldn't mind if we decide to get the verbose path,
but try to at least making the subplatform already infering the
platform in a way that this case could only be:

       if (display->platform == PLATFORM_LUNARLAKE ||
            display->subplatform == SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N)


or perhaps do in a way that we don't even need the subplatform struct?

       if (display->platform == PLATFORM_LUNARLAKE ||
            display->platform == SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N)

> 
> 
> BR,
> Jani.
> 
> 
> >
> > Lucas De Marchi
> >
> >>
> >>- Go through the trouble of making the existing IS_FOO() macros _Generic
> >>  and accept either i915 or display pointer. This does postpone making
> >>  any further changes, but fairly soon there will need to be two sets of
> >>  macros, separate for i915 and display, even though named the same.
> >>
> >>  Also, the _Generic thing would look up the platform definitions from
> >>  different places, which could be error prone.
> >>
> >>
> >>Yeah, procrastination...
> >>
> >>
> >>BR,
> >>Jani.
> >>
> >>
> >>
> >>
> >>-- 
> >>Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
