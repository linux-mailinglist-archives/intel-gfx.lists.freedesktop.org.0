Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6085EAEF51E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 12:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153EC10E042;
	Tue,  1 Jul 2025 10:31:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hvEo4JpZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F4DC10E042;
 Tue,  1 Jul 2025 10:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751365872; x=1782901872;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=JyTPWZhKz3UUt92U421iPtqdBG9RZwrZUbtvylnGZ8s=;
 b=hvEo4JpZzFSyxhlojtN5A3zfyJ9Yn53FNQ8xmEUihRYl/iBC1X+4C5T2
 whlca0Wk5wykozuSzPXvf+Z9h3EXeQMLICtjzgQafA32jGtuxNc+isquT
 pclSZ8wPD0HmawZl/mM0dVUDPiUqq1Dt7qTOUGf6iaSVTGzrlLc0sfqSf
 M7Ymln7lKJjZN6XsHLmg5dnkZpAD2ZpFUO6Zvde3a2ZIHg1D8xPZD7Mxq
 8sv+/3MBGSASjhilv2rrn/jbkDxf00tDq2oZzhqh4T0jWPw8iVB9mEDAH
 ol1oTCacvtghSqk3Zq6T+TJqCUmnQ2Aeml8F6+4ja+AHUKPC1hBaNXD04 g==;
X-CSE-ConnectionGUID: Jnp9Ma9fRB+xCSZeWj0Xew==
X-CSE-MsgGUID: FyWbnNs3T0iNgkl8BKxlYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="57303581"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="57303581"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 03:31:03 -0700
X-CSE-ConnectionGUID: y9aBmX7yS3qMAqsMd/VDTQ==
X-CSE-MsgGUID: viL1G7IiRgCpsX1ypmYneA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="153510068"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 03:31:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 03:31:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 03:31:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.45)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 03:31:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ml1zJYvje7LsodFrb7M/qae0OtgI6Y552eLADOA8ncfi/EG62qZEzHIjjkyNKDk5Lbev+xtxYrLhc9NEjwtYbetDtHDEIf9B5x4ZWk2/cPazxA94A57e6X4g19DAnvb/kZFEa2lGFKquabc/Rrw9vT4To/1Krd8mr3h3WTToBkBu4bp06uU1P0lAWXKmEAUcesGW8E4v6aaJqAJzKNKGIOxc+eWzGKvI2398h91M1p9dmaZymTR25PBpUvKEBWgutsDRhA57rzo5m5O83zu+q5NNyrYGTDZEqcPCwlaSGXmxqOzFHze/uPTQN0zy4Ju+dzFqyPdQcpqyDNBKVY5+BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VUJqd+M9gko9+e9hEz/kcDirHYWT9yPFrRyJKYxSu/c=;
 b=XDzkC6Aag6DWU2r07Afwx19AL8AkOKAEnNxpo9pY/LxFDOvCYZ/1KWe8ZY3Lr88BX9LLogQKjuYepjENTYJTSd5ia6RzxERxl8gtnDOxHz3Q1IcLmVtgJjt+Buhn0+bXKiY3gJwSLMlt9zDAgRTZ3ngq5xxlqLktZZjGSpgG40I4N7mi7LO9UPclr6NSpnbV9+VxfcrxKEWv/qgaqPN+lf047XBuNC/wmOl8tv8viwnD51mkvlPBw8Oe0rY68IQvR0DL2ONBorT5jYYawotJTOBUVfHhzIRZt2fJuDxoYRY6jUycv8/iHd9bcH6aMIsoP7dD8hmoeqYX7RXb5eymJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CYYPR11MB8359.namprd11.prod.outlook.com (2603:10b6:930:ca::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.27; Tue, 1 Jul
 2025 10:31:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8901.018; Tue, 1 Jul 2025
 10:31:00 +0000
Date: Tue, 1 Jul 2025 13:30:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 05/20] drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
Message-ID: <aGO43iTOXvlOpF-r@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-6-imre.deak@intel.com>
 <286aac3a6b38a7a2775172d0dba5b5cc6c785b5a.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <286aac3a6b38a7a2775172d0dba5b5cc6c785b5a.camel@coelho.fi>
X-ClientProxiedBy: DUZPR01CA0318.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CYYPR11MB8359:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f32bc38-a9a4-4199-3655-08ddb88a5f4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4ycqEfNzNoGm9zP8DVEPVUK4mDQ1D7gu//WWbRpHx1LEojS7vv+5DD0qoRUN?=
 =?us-ascii?Q?QJ5kJeor0WpnctGmYYGAi6hGL1z9sfQo5T1VF0jvBKNs33p0rdQ4t5hkeEtv?=
 =?us-ascii?Q?a0zN8TX8I4rvrM0RkzaJRb1+XTd3y9GQ+mgTRaEfLPFtzhuLJR10243PawWT?=
 =?us-ascii?Q?kDzSbe5V1DgUx7DuDXgDW6BKTLA6vkHYs4NIspdJypmsEsnn88l9hksMgKwW?=
 =?us-ascii?Q?iOVKtgXH/dF17YeEvDymJB+HUKF5s5H63P6TwDbUIyQdw+sd/KHmjsP8AGdi?=
 =?us-ascii?Q?OilzLZxAK5d4e55YZ8mrBQGxTmgb+mpq/4aIyMAwQzD+Vyop9Sf7Gb+/rNZw?=
 =?us-ascii?Q?TYDsVQ+KLTBAlyTze9la4E9l8O7tENJjvzVAfx1nAVdip2dtBNjifSxnlHFz?=
 =?us-ascii?Q?gzWwJKPl6DIV7K4FkpM7UJ2/4pWbybg/CVGfXDtJKNrSvVYNgysb5IAxX+lv?=
 =?us-ascii?Q?YVjIMQG5X4P1SQ7FBh+C/8zELSCTb7q01ivaNLYut68xNIRlnwm1w26CV8YQ?=
 =?us-ascii?Q?9DB0+Isj1SDjlMmL2LXgR4j6MR/kyEgoidGq7BoGDRnWQc7S+Bk7+0dtp9x1?=
 =?us-ascii?Q?PpoLQckyNHyjb+iJ4Ut+YvgfIXSRsZtAAvfnBOyZ4GQ4eJguyNrL0YsF7TQm?=
 =?us-ascii?Q?gOARiGRR1i688vHOS+39Gqrg1nCybhoOu0nEV7XudIdSrvx1bvnvEHl1XTS8?=
 =?us-ascii?Q?B5kiBLOMwpw/hnRw8BUYXhaRygB3uC2GvbSQ5VBRuzSkn1Uu8IF5x3pDyQjQ?=
 =?us-ascii?Q?lbyH1ykEB/1cSj8fzJCgWgjXhKtbUtR5ZgCZoVC8BbjhpGus4zNkAKHqKvyu?=
 =?us-ascii?Q?EhLY+iDONdgnNyY67lTKBcbVLwCPhMGRFfG1inqATldtCZ1QRn5IlzJzRGuX?=
 =?us-ascii?Q?oKM1FeqBnMmGb+OtJBnTwHLFgYh4T4u1gRbvUYwfyA4kkb3ch3YWJrQjr1UM?=
 =?us-ascii?Q?kqQEzUKe2NfrMqXoqcUyWFpDBu1FkUHFZQxKXwG4BwsK5CP7qvATrRUaJMLi?=
 =?us-ascii?Q?/NdhCOFwCh5UYGkOohfBbFsiLPZNeLErdGiXMt+7UBLtSb+kEov9yOHpLLgz?=
 =?us-ascii?Q?TgEsrAk6s4NVMGR9+nGXAm4GPSFlmAxI9YgxM+qQ/p6t7b6zyF6+61uwZF57?=
 =?us-ascii?Q?bC1qEM/HIyDw3W64e3M94tV0Z2etRxIQdJAXQUqzi1TkLRvPam5jmWS57sQ7?=
 =?us-ascii?Q?sfm6Wed/3DNIHpJDXQnZYiMXb0mPTAlf2HtRqal272CTmPHEFAYFr/QFDfoa?=
 =?us-ascii?Q?cfg+ps7E+bpSNewYj9ivYPBu6qZLaAjbW4/DryYq5zAI9BzT0zM3pLP/TabK?=
 =?us-ascii?Q?yTW6dmSgywundDhKSdvkkQsOr9WT1yjC0QDICexJ9C1rKeOcnh3OUuGjcIUo?=
 =?us-ascii?Q?k9p9vrwJYuGBwGTV4TraLqfuHm8zMl0SCukayOajmgVl/IpsCH70mCS/BhM/?=
 =?us-ascii?Q?jbTaG/YQPtk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KGDz7WAcjBWKlPzg0DBxhDpCqwcSugrEwDhPPjjeEPGMmlpaD+5ZGDe2L5g8?=
 =?us-ascii?Q?fO8vaaeaNcQqlFUAfEWoJ78EC0ZCBRTqBHwZMKc2uPMVjfAzBROd+ulBETl9?=
 =?us-ascii?Q?aRoRkyW2Pmh1k6U2eRjpWrx/odsTHKV4QQ6XK6kPmGeU/C110LUhDt751ylf?=
 =?us-ascii?Q?rplONoca9zbyipkdmSl1a6XyY9e4JnJLJd5FFFLdbpxj/ZVdqctB8NhBabr7?=
 =?us-ascii?Q?/GCu+33Q459p9WCCZJybB478nBzJr17B/nqc0Tt87CgxSV+uBl4ZbwuTjl4O?=
 =?us-ascii?Q?p29fYPqcn/y1uHB0EdtWc2/ArE6bGfBp1U7oMfwcAxippWxjgd6Rgm3U/4ji?=
 =?us-ascii?Q?LjQ+7N3DjbL43EKMqYJ0ntLEeYso7zuMiLDJdPaIyM2MZ3k4+wv/UAS8BR59?=
 =?us-ascii?Q?jPAcgfsc/VwIA7uuL/YxLeWEs8NjuPjuTW99h5iCkUD/Wx1jyYjQETENNgIR?=
 =?us-ascii?Q?zuOhnyGiylA6gRpInVLnlrJEcf1/P6apHPl92PCgHacRVw5wCxudvhHuHGb5?=
 =?us-ascii?Q?Jl4jNFerR/vb9nF4d1REKTw4Bmll2j1mMnHn/yBXJZFL9cgfA5YJ0rHRppfN?=
 =?us-ascii?Q?OmrS6Q5rz73CV6CCZ07nmBUOU9fNSSW+uZ+133+MpUOarBZP+PwtIGmhxrXa?=
 =?us-ascii?Q?DnttNJUz0oWTjqJdQCIwojXoyyK90g/IMLOSxCkkzfF/WjWa5M5QyAheFYU7?=
 =?us-ascii?Q?+Qj6+kMVIqjB4gik2DqB0n3Apv9zjnbYAKATVhwcWuw61iH06jbQWyEH511r?=
 =?us-ascii?Q?PbEt9BsSFC5I0ymJCdaLWhubQkKWAmJsDHJFssJPJ/So/Kij2nnm/TymntL5?=
 =?us-ascii?Q?FE0dFkTXQRzNqj7COO5P46Y+YsLO415alhmmTWQl7lTYzKcQt4hPqN84FI91?=
 =?us-ascii?Q?cJjgkImiFwXoAmVrjcSTHPoGC+ERndgqxkO1Kkls+kYmy99W+0+p2hlr6KjB?=
 =?us-ascii?Q?cSD+HbZ2jEiBuI40Px/XeKK1sdmn+M9vEISm9ZViuFmEG2/nBQtyBP2RpJp0?=
 =?us-ascii?Q?WxZGxBKhbZwpN889mqDkpAbSRzcUTXxbCWJru0i6QD581gwlZyXMGX6g2agN?=
 =?us-ascii?Q?ol9iMbkdELhqfXHZf2j6UzQgRNTXMEGUT3N8JFXJtd0jzEhbwZku4UNCAP4t?=
 =?us-ascii?Q?ngvlnx6d3w4M4A472AJ5K+o1VmtlKaQlaoioSkN6+/H/9Q2q84cweuM1JCth?=
 =?us-ascii?Q?HVJAHuBhxIf48k/SL/t0fVMvGRuEJFD+ys/gSI6spEstb1rLaxXZvh+ByDQG?=
 =?us-ascii?Q?CUeE44dT6mQ34q/gXHivuD66eCtCiJoz3RFaPyEIV6oEpEaMkJl0MfuhjeYR?=
 =?us-ascii?Q?4Q3LlQJcVueJDRJtGby+GVS9bHRCBcB0K76vf5M3bg/Yd2KwcvH3KmMS5AP8?=
 =?us-ascii?Q?9gCEm0mY1ZCK8n20DFiw7Eh1AM1rxn4t+LMXVY+7Xte3mxsiIIPiXRpWi+jI?=
 =?us-ascii?Q?7NoHqLgTLbdyy2nPz+p7xS/ZQFm3yjIwwAQcutbtIvi2tDP+vLFKk8L35HjD?=
 =?us-ascii?Q?SiMGFWrAyJWuQcpp7L/Vce3EISfH2Dnw3jF/Ch659ohjk6tNw8JUmqfHdw8/?=
 =?us-ascii?Q?i0+768Vg6nMXVGiKwDEt+HlEiz2MJ8JKAtYlDU2f?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f32bc38-a9a4-4199-3655-08ddb88a5f4c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2025 10:31:00.4655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TnidRbw+7ZIxpkEszbBfJme7TkeaGG8tWT7LxvS8FeYUjhHDse8hym27LIrI+GIDYySXMRml+41dvF1IeD20dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8359
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 01, 2025 at 11:03:56AM +0300, Luca Coelho wrote:
> On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> > 
> > Handle the RX_CAP_CHANGED IRQ, which a sink can use to indicate a DPRX
> > capability change without disconnecting and reconnecting itself (i.e.
> > through a short vs. long HPD pulse). Handle the IRQ by doing a full
> > connector detection.
> > 
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 453416b9e9bec..c2eadfa060c2d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5099,7 +5099,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
> >  
> >  		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
> >  
> > -		ack[3] |= esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
> > +		ack[3] |= esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
> >  
> >  		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
> >  
> > @@ -5112,6 +5112,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
> >  		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
> >  			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
> >  
> > +		if (ack[3] & RX_CAP_CHANGED)
> > +			reprobe_needed = true;
> > +
> >  		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
> >  			intel_dp_check_link_state(intel_dp);
> >  
> > @@ -5424,6 +5427,9 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
> >  			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
> >  		return false;
> >  
> > +	if (val & RX_CAP_CHANGED)
> > +		reprobe_needed = true;
> > +
> >  	if (val & HDMI_LINK_STATUS_CHANGED)
> >  		intel_dp_handle_hdmi_link_status_change(intel_dp);
> >  
> 
> Same question as to the previous patch.  What happens if the interrupt
> is not actually handled?

For the MST case the same thing applies as discussed in the previous
patch, the acked interrupts will be handled and only those interrupts
will be acked that are also handled.

In the SST case here all the interrupts handled were acked above. It's
possible that an interrupt is acked and then not handled or at least
indicated that it's handled on purpose (atm the only such case is
CONNECTED_OFF_ENTRY_REQUESTED), but this will be addressed later in the
patchset.

> --
> Cheers,
> Luca.
