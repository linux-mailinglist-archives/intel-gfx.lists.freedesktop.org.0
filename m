Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B0E9B0687
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 16:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9297610EAFF;
	Fri, 25 Oct 2024 14:58:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UL8fbIex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E5810E2BD;
 Fri, 25 Oct 2024 14:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729868319; x=1761404319;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=7TZ3j4sSPytfz0Ngp5T67rzlD+XhucZLcYlXCewN86w=;
 b=UL8fbIex9FbBK/phT2wPgF37C1A+wzooadIs54mFG5UMN3ctjxGNzIHB
 +2rOYAGb1OKAmuO4YZwq+d6WsOvaToTfY1xOKT97GLmBNJfSExoEI2qFo
 doewuZRYmjXavYR/iwmVPHtuqvcBh/1eSrbzszhERsC319VkhvyWfHYXK
 NF6Z872L80/V7VkTe9EbXVXu8SB2ri4R5fIopq45rhnCYhrmekxV8p6w8
 fbm0TeTpoxb6+L0IRyuPx1g8Z1amJB2sHAF+LJeVBh6NPNSGYAZUBvNkT
 OjCxXd9MoYZ4QZC6NkW5E5YAOOwUbyr7RNOioLXNNMSO1Xhx8XQoraDWp A==;
X-CSE-ConnectionGUID: j2ZZ12M3T9+9PhJD26txXw==
X-CSE-MsgGUID: BzbP4B/zQ0GrzNeyFr37bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="29435276"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="29435276"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 07:58:38 -0700
X-CSE-ConnectionGUID: J40X1Yf+T1ePfYxg+9ek4A==
X-CSE-MsgGUID: Zyjut7AbRS+3TgQNLBOYig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="80957986"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 07:58:38 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 07:58:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 07:58:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 07:58:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wVCmqHFg6Mulx+M6O0cuaKu7CdgWywgEvKI2e4BoKD+o3v+FEWeq6JeOcuN9NCt819bl4t0O+jvNA0ltfYJBIwBIC5LSAYuxgYXrEAvlKAD78ZMQm1+D7u7zpHimsB23p1feRGnhXb4R2tGKDBWh0giCpAMENpyeiceE38Cvn0818Vh/mkAb+a08+VoIfFSEL0D03fZQQf5cvnrsanovi9tiy3o6hI5OLCxVm900afkbEqsfTJte7W4Miew6oycxOotA2/mF9canSF/QIPEFzcLa9aIcASqz/Lxhj1xRuVbfbkIPv8xSzx3srbz6Ev+fR3NAIUSayFMpzGDqVXbFIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K5CY2vQRmLPF34g/53AjSuF8sYXKUj02CVlRKVvYPp8=;
 b=jqKt5uuo533LAdpYUNYVvtE5raRy8Hf8iQb+J0E8yrhCjsZ28tncAFBqufkY5PktjfpJk8dsrd0raxj2hjLLFJ4jAdrLgBkdDt2JmfL9SB3o0vd12aFd/khryqoMvp0LLaNPAkGZqzWg5Q9Y60GiUNLC9tCw7xitO34RuUrEfXhy3hCUW5me+MiTYri+R22u6hxtaGH6Bd3MeXZBFf90R5X5MrlC+EZtqiUFES3+2X8fgIY0mRHSoVA1irDXg1QX7pvNbE8otHxg30bcQ/q5QFMr0yM5zQAMVAkl28yLYum6C2WuL+4fwo85SAAuxHd9jEhQdqnRuCfhDjVcy7FrFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH8PR11MB6705.namprd11.prod.outlook.com (2603:10b6:510:1c4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Fri, 25 Oct
 2024 14:58:33 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 14:58:33 +0000
Date: Fri, 25 Oct 2024 07:58:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: use x100 version for full version and
 release
Message-ID: <20241025145829.GO5725@mdroper-desk1.amr.corp.intel.com>
References: <20241024171104.2427750-1-jani.nikula@intel.com>
 <ZxtUhCYU9Fl-Cp_x@intel.com> <87ttd0r2ht.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ttd0r2ht.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0199.namprd05.prod.outlook.com
 (2603:10b6:a03:330::24) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH8PR11MB6705:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c41fa55-237e-4371-c1cf-08dcf5057ecf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?MCBL+OFNZPSGYJfowt6fx2XFZpSBb8ia1Lmh9l+M3Fjy0uPaXBNrh9qxo2?=
 =?iso-8859-1?Q?bHjg3nhbHsOuyTQxw0sgNK2gHR4MR15zzTeLN3yZ5Z7XUDnEoeFqzjRmFs?=
 =?iso-8859-1?Q?AbbLsV7S2TARqLP1AkmIRjQnFhK+xdfEas2uxqikrKtpok8EfWJy4o6c4N?=
 =?iso-8859-1?Q?QceVjm65kYnpzsnNWDadiGSk+JcuLIw6mYm7Pzny2Wno8d8pj81LAdFNMh?=
 =?iso-8859-1?Q?BIufCszT6UQkhKTVLvGRWx9CYb1gk++qwgX22bdTYYTxw12X9UWIQnCORl?=
 =?iso-8859-1?Q?RPPphgF+vPrzfivUv2jie2NSUOhS4W0Nbp/rj8cThmk1IpjS0byCvML7zV?=
 =?iso-8859-1?Q?u3OuQ3PNzgwMx6hj5cFSfmhY33oO6aPcXm1VakweQU4u+mDGk8sUmIXHwM?=
 =?iso-8859-1?Q?7j4nFsiZ8xXt0Cwzu1m6bW9ZTEv5E3D0WHaNRaD4xvqHiUNpi3nnjjVLED?=
 =?iso-8859-1?Q?gM93IZVzeeICSE0sv3v0o8LsEkjUsDMkyRxKNjfRlZ3P/iFHiZabLnqq/p?=
 =?iso-8859-1?Q?C+SS3Q6aNXvnxH+q7OSBaZk+YlXozYlWlBERToZ5hu6tqDvC19q2EoHhBp?=
 =?iso-8859-1?Q?NUdAaP+2HTLMzB/ZNCemH5onDRErb7iWAwhKvq7PV6OG+hqZjtlggHRduA?=
 =?iso-8859-1?Q?obZ3P1c/S2PgKgjRqglcr+TKfmM+/zt6sz55z81qbsxyDbkBzKzbprTKCV?=
 =?iso-8859-1?Q?lQLEk3uDgzS957tlqb5eiOwensS/1FC6ua4ma9v4N5jtEiDhbHAtUs5qCe?=
 =?iso-8859-1?Q?xomPLFUClAqnWIait8faJ3tuNlT1qUzNvI4NicXZ65Jy1kViHXTVHFn8UN?=
 =?iso-8859-1?Q?iNHg1ZzXaQM6IkUqclWFkrq6fGL/ZHVorRO/t4Q4He9NAb/0iD1q5J7uGZ?=
 =?iso-8859-1?Q?h8Xu5/YfdmUd3C4ArRK8ZMeo5FQTHoXn9atCOwZv77ZukhE/t+3R8lnRxU?=
 =?iso-8859-1?Q?ZsKKZpPlk1XU1eL3NVf9T9zjWfzffWcUK5E7LXHcWiPPyGZKXLAL2bS//e?=
 =?iso-8859-1?Q?SvxyY+TxW8a6rjW4Hu/FbAFcAiUyD8m5aptCfIvI5+6orTJZgqXridFZxJ?=
 =?iso-8859-1?Q?0K5206MchRfcMh41YMWkQ26ox7E6uiW/9kGyq5Sy7b1d5rnfr+sG2E0gcn?=
 =?iso-8859-1?Q?zMYvDYdNbtG1R0jrmxZ/TEu3Lz2X97EHl3rAwsk9zSvskLaB50a+hasW4c?=
 =?iso-8859-1?Q?+WYthf4+kBxGOD3vH+fmf0P/r9qWYVLVnzh9SnFUFLIt9fCYuvKmUMvv0Q?=
 =?iso-8859-1?Q?PlmchQWoSJwmJ66jt3vgTx6wR3Lo7GdnQteNwEvWgX1erFVouoleypYWQT?=
 =?iso-8859-1?Q?jYx3nGTtYv27G0WdXI8V//2XdU3oHYXSzn5UmTWfB7KUcQQn+J5127+2d+?=
 =?iso-8859-1?Q?tTSi2K/Nqk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?9b4pBvao08y7mwnjVj1AqPsuadNuwRv0cCCKWvfckExHPiRtvbCnGIIKLt?=
 =?iso-8859-1?Q?zFfxYwEPlMgixiYxcXuqy6AsDyFU5rZygUiw4wF1A6ryuc72FkdVhAudnm?=
 =?iso-8859-1?Q?pc+Yxj4xTwsEC/e3GJeovvz7mhAsI4u1oanX4aOxv+BbkcmadErRVz4jzd?=
 =?iso-8859-1?Q?5XM5BmMJZnL4X+6FH8m8vS8IvDP13RdWyEqIq5G8F7+zVMFqw7Enc0BTzS?=
 =?iso-8859-1?Q?8zMJRCF+OaGvhsJCIJEx0INDavQX4vtoPm7LiK5hT8+f4ybzGyLkORiogk?=
 =?iso-8859-1?Q?K18A9CJJ36uVtzomI3BkXs2hm+5EI2Y3UfkXnkFWw08GCnCa9AF+VVomSI?=
 =?iso-8859-1?Q?uRZ1n//o18pfxBbriDxUqd4RlEzdlXoHSO8egu8Gw+pHxaezQT6jgcKmHh?=
 =?iso-8859-1?Q?fk2/0VVQtfjK77xbcqLMQjmsN/nr8UnitT+Pf3hIubIruhgybNGtzzJZF8?=
 =?iso-8859-1?Q?IwGGsFGuNUiJC+uqnd4Nk2wsQmEEK1KuL2vEpZhHkgXkGEaalqX0ny6QAy?=
 =?iso-8859-1?Q?nXgMq8JYaYHhSOwpWm/CNIlldmriu7HxMPOEbSINls1FyvGaYvirmMXHI/?=
 =?iso-8859-1?Q?0Fo9OrW4726fJVmXG2I9JGuHlLZKCFan8FL/viqLc/emkkZ+lKVFlTNBwV?=
 =?iso-8859-1?Q?mIg6ZaK+Yg0cP5GMVz0gu334wa35+3h0MUP6LTNOUilGwLEPlgcJbDaW8K?=
 =?iso-8859-1?Q?2XZ323jdZKJAI+A4GQUSh0fgkoK4ito7Pje0KO5rOmZ3EXPDdHEo7j3t/b?=
 =?iso-8859-1?Q?gKsW9NDriG67uFpDMQtnFPwqyXBr51WlKu7q7xyQ6Ty3L7gH7fpVzbzwwm?=
 =?iso-8859-1?Q?/ym4uzNcgO4fJX1TBoY9RmwbFVjRqVe3PXCamtx/A0QxbqMb5Dq0YVDC8n?=
 =?iso-8859-1?Q?o+blrsgFbDBe+Z8kAPFK3b0U0Tl0R0HpZdnAX9k+VOowIwo5oXoTxPqSb7?=
 =?iso-8859-1?Q?rn1DIXzBByDyM5kCj8b15s8z+raSRfbHrpBIj1HeRDdC6KeNiQnegYBltJ?=
 =?iso-8859-1?Q?2sXDsV6evioSynovICQ+1qiA+vSz1W4YaQLVOurtmnb8QlW9Pl5dudPL5L?=
 =?iso-8859-1?Q?UujU1OOVnNAiigxw/HPeL+eH3oRm2dL2jRFwv1rklA2Lop6EGwBpquoaPj?=
 =?iso-8859-1?Q?MtdMp98cXGF4QHuXI/FkQWGg7J7oL3qc7guocSM7TqMqOYJ3g/ESCyB+Qo?=
 =?iso-8859-1?Q?EiA9ozgzM1CoAIs1FgVspSJa8EgQteUYCuRmrH0oJ1kX1WQZp6LTVtqImE?=
 =?iso-8859-1?Q?AIUyFAHN1bDLiabuO2XcgnDIdv0keoin4JV2kzNfekVV0tedC3/gism98M?=
 =?iso-8859-1?Q?gr/80tLZGufouvdJhFbXkWQl09L50VxbZkNrrdTD4xptT5QkatdyF91VL7?=
 =?iso-8859-1?Q?PTcajZAzwnPbKUvfZ+Ic3CXaRye0byjFjvkYq9Bk6RwILxKR8SfF0hCQM5?=
 =?iso-8859-1?Q?h5aXdhlLhI81eqvMb7urFOWgsnGnpdE8VcqAvD3m2gpHlIyWOFzyg4ycY2?=
 =?iso-8859-1?Q?tTlUjDI8UQPVGR4T7z1bbRlyppm9bP590hCKmxdL+Odv5xvzRMhxK9j2s6?=
 =?iso-8859-1?Q?KvHa7/dIrY8tLxOJGoB/IOYTkcNIiQnQOON17Bxb5ZYOWqD81oaJfv8FEI?=
 =?iso-8859-1?Q?gZbIJdlAX+m9BccxgC4ahObHZw3PNqnXF6iBssNA8SM/2g0e0cPs6UXA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c41fa55-237e-4371-c1cf-08dcf5057ecf
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 14:58:33.4026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DQMupWCZzNQl9cGY8JW0nmOuhiDnwwED9bYbmWiB8SHSG4P1UM+6vUhHdL6kz+hno5XVgkN3Y/SAygauBqmOYFEF4A/oxRGoXJeM8HOaIPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6705
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

On Fri, Oct 25, 2024 at 11:49:34AM +0300, Jani Nikula wrote:
> On Fri, 25 Oct 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Thu, Oct 24, 2024 at 08:11:04PM +0300, Jani Nikula wrote:
> >> Use x100, or ver * 100 + rel, versions for full IP version checks,
> >
> > Have the hardware folks promised to never use minor >= 100?
> 
> I guess that's a fair point. Xe uses this extensively, and would be
> hosed as well. Matt, Rodrigo?

I was pretty concerned about this as well back in early Xe development
and raised it as code review feedback at the time, but the consensus was
"let's just deal with that if/when it truly becomes a problem."  MTL/ARL
were already up in the 12.70's  for release version so it did feel like
we might see the release number go above 100 if too many more platforms
came out.

But now that we've moved on to Xe2 and Xe3 and hardware seem to be
moving the major IP version by 10 for every family (20 -> 30 for Xe2 to
Xe3) that does give them a lot breathing room to insert derivative and
refresh platforms and it seems less likely we'll ever see release
numbers get as high as they did in the 12.xx era.  So I'm not too
concerned about this anymore.

I didn't review carefully to make sure the patch caught all the
necessary conversions, but

Acked-by: Matt Roper <matthew.d.roper@intel.com>

on the general change here.


Matt

> 
> BR,
> Jani.
> 
> 
> >
> >> similar to what xe driver does:
> >> 
> >> - Replace IP_VER(14, 1) inline with 1401, etc.
> >> 
> >> - Convert DISPLAY_VER_FULL() to DISPLAY_VERx100()
> >> 
> >> - Convert IS_DISPLAY_VER_FULL() to IS_DISPLAY_VERx100()
> >> 
> >> - Convert IS_DISPLAY_VER_STEP() to IS_DISPLAY_VERx100_STEP()
> >> 
> >> This makes ver.rel versions easier to use, follows the xe driver
> >> pattern, and drops the dependency on the IP_VER() macro.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bw.c       |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +++---
> >>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  4 ++--
> >>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 +-
> >>  .../drm/i915/display/intel_display_device.h   | 20 +++++++++----------
> >>  .../drm/i915/display/intel_display_power.c    |  4 ++--
> >>  drivers/gpu/drm/i915/display/intel_dmc.c      |  6 +++---
> >>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +++---
> >>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
> >>  drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++++----
> >>  drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
> >>  13 files changed, 33 insertions(+), 33 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> >> index 47036d4abb33..a52b0ae68b96 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> >> @@ -743,7 +743,7 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
> >>  	if (!HAS_DISPLAY(dev_priv))
> >>  		return;
> >>  
> >> -	if (DISPLAY_VER_FULL(dev_priv) >= IP_VER(14, 1) && IS_DGFX(dev_priv))
> >> +	if (DISPLAY_VERx100(dev_priv) >= 1401 && IS_DGFX(dev_priv))
> >>  		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
> >>  	else if (DISPLAY_VER(dev_priv) >= 14)
> >>  		tgl_get_bw_info(dev_priv, &mtl_sa_info);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> index 96523526a2c3..03c4eef3f92a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> @@ -2058,8 +2058,8 @@ static bool pll_enable_wa_needed(struct intel_display *display)
> >>  {
> >>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
> >>  
> >> -	return (DISPLAY_VER_FULL(display) == IP_VER(20, 0) ||
> >> -		DISPLAY_VER_FULL(display) == IP_VER(14, 0) ||
> >> +	return (DISPLAY_VERx100(display) == 2000 ||
> >> +		DISPLAY_VERx100(display) == 1400 ||
> >>  		IS_DG2(dev_priv)) &&
> >>  		display->cdclk.hw.vco > 0;
> >>  }
> >> @@ -3852,7 +3852,7 @@ void intel_init_cdclk_hooks(struct intel_display *display)
> >>  	} else if (DISPLAY_VER(display) >= 20) {
> >>  		display->funcs.cdclk = &rplu_cdclk_funcs;
> >>  		display->cdclk.table = xe2lpd_cdclk_table;
> >> -	} else if (DISPLAY_VER_FULL(display) >= IP_VER(14, 1)) {
> >> +	} else if (DISPLAY_VERx100(display) >= 1401) {
> >>  		display->funcs.cdclk = &rplu_cdclk_funcs;
> >>  		display->cdclk.table = xe2hpd_cdclk_table;
> >>  	} else if (DISPLAY_VER(display) >= 14) {
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> index 8bd5a4d1b735..85836751259f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> @@ -2260,13 +2260,13 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
> >>  
> >>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
> >>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> >> -			if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> >> +			if (DISPLAY_VERx100(i915) == 1401)
> >>  				return xe2hpd_c20_edp_tables;
> >>  		}
> >>  
> >>  		if (DISPLAY_VER(i915) >= 30)
> >>  			return xe3lpd_c20_dp_edp_tables;
> >> -		else if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> >> +		else if (DISPLAY_VERx100(i915) == 1401)
> >>  			return xe2hpd_c20_dp_tables;
> >>  		else
> >>  			return mtl_c20_dp_tables;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> index ab3ae110b68f..ead486c59639 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> @@ -273,7 +273,7 @@
> >>  #define _XE2HPD_C20_A_MPLLB_CFG		0xCCC2
> >>  #define _XE2HPD_C20_B_MPLLB_CFG		0xCCB6
> >>  
> >> -#define _IS_XE2HPD_C20(i915)	(DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> >> +#define _IS_XE2HPD_C20(i915)	(DISPLAY_VERx100(i915) == 1401)
> >>  
> >>  #define PHY_C20_A_TX_CNTX_CFG(i915, idx) \
> >>  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CNTX_CFG) - (idx))
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> >> index 071a36b51f79..cac47bfaabba 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> >> @@ -168,10 +168,10 @@ enum intel_display_subplatform {
> >>  #define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
> >>  
> >>  /* Check that device has a display IP version within the specific range. */
> >> -#define IS_DISPLAY_VER_FULL(__i915, from, until) ( \
> >> -	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
> >> -	(DISPLAY_VER_FULL(__i915) >= (from) && \
> >> -	 DISPLAY_VER_FULL(__i915) <= (until)))
> >> +#define IS_DISPLAY_VERx100(__i915, from, until) ( \
> >> +	BUILD_BUG_ON_ZERO((from) < 200) + \
> >> +	(DISPLAY_VERx100(__i915) >= (from) && \
> >> +	 DISPLAY_VERx100(__i915) <= (until)))
> >>  
> >>  /*
> >>   * Check if a device has a specific IP version as well as a stepping within the
> >> @@ -182,22 +182,22 @@ enum intel_display_subplatform {
> >>   * hardware fix is present and the software workaround is no longer necessary.
> >>   * E.g.,
> >>   *
> >> - *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
> >> - *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
> >> + *    IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_B2)
> >> + *    IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_C0, STEP_FOREVER)
> >>   *
> >>   * "STEP_FOREVER" can be passed as "until" for workarounds that have no upper
> >>   * stepping bound for the specified IP version.
> >>   */
> >> -#define IS_DISPLAY_VER_STEP(__i915, ipver, from, until) \
> >> -	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
> >> +#define IS_DISPLAY_VERx100_STEP(__i915, ipver, from, until) \
> >> +	(IS_DISPLAY_VERx100((__i915), (ipver), (ipver)) && \
> >>  	 IS_DISPLAY_STEP((__i915), (from), (until)))
> >>  
> >>  #define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
> >>  #define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__runtime_info)
> >>  
> >>  #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
> >> -#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
> >> -				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)
> >> +#define DISPLAY_VERx100(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver * 100 + \
> >> +				 DISPLAY_RUNTIME_INFO(i915)->ip.rel)
> >>  #define IS_DISPLAY_VER(i915, from, until) \
> >>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
> >>  
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> >> index c2bc80f5bf6b..d34dd650b839 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> >> @@ -1683,14 +1683,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
> >>  		intel_snps_phy_wait_for_calibration(dev_priv);
> >>  
> >>  	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are enabled */
> >> -	if (DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 1))
> >> +	if (DISPLAY_VERx100(dev_priv) == 1401)
> >>  		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
> >>  
> >>  	if (resume)
> >>  		intel_dmc_load_program(display);
> >>  
> >>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
> >> -	if (IS_DISPLAY_VER_FULL(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
> >> +	if (IS_DISPLAY_VERx100(dev_priv, 1200, 1300))
> >>  		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
> >>  			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
> >>  			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> index 48bbbf8f312c..ac122b76cb58 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> @@ -168,13 +168,13 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
> >>  	const char *fw_path = NULL;
> >>  	u32 max_fw_size = 0;
> >>  
> >> -	if (DISPLAY_VER_FULL(display) == IP_VER(20, 0)) {
> >> +	if (DISPLAY_VERx100(display) == 2000) {
> >>  		fw_path = XE2LPD_DMC_PATH;
> >>  		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
> >> -	} else if (DISPLAY_VER_FULL(display) == IP_VER(14, 1)) {
> >> +	} else if (DISPLAY_VERx100(display) == 1401) {
> >>  		fw_path = BMG_DMC_PATH;
> >>  		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
> >> -	} else if (DISPLAY_VER_FULL(display) == IP_VER(14, 0)) {
> >> +	} else if (DISPLAY_VERx100(display) == 1400) {
> >>  		fw_path = MTL_DMC_PATH;
> >>  		max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
> >>  	} else if (IS_DG2(i915)) {
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 7e29619ba040..6adeaacb9abb 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -497,7 +497,7 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
> >>  	if (intel_encoder_is_c10phy(encoder))
> >>  		return 810000;
> >>  
> >> -	if (DISPLAY_VER_FULL(to_i915(encoder->base.dev)) == IP_VER(14, 1))
> >> +	if (DISPLAY_VERx100(to_i915(encoder->base.dev)) == 1401)
> >>  		return 1350000;
> >>  
> >>  	return 2000000;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> >> index 2e0863093cff..df05904bac8a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> >> @@ -1347,7 +1347,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> >>  
> >>  	/* Wa_14016291713 */
> >>  	if ((IS_DISPLAY_VER(display, 12, 13) ||
> >> -	     IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
> >> +	     IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0)) &&
> >>  	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
> >>  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
> >>  		return 0;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> index ed6aa87403e2..268deddc5281 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> @@ -43,11 +43,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> >>  		return;
> >>  
> >>  	if (DISPLAY_VER(display) >= 14) {
> >> -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> >> +		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
> >>  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> >>  				     0, HDCP_LINE_REKEY_DISABLE);
> >> -		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
> >> -			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
> >> +		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> >> +			 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
> >>  			intel_de_rmw(display,
> >>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> >>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> index ceaf9e3147da..2edd3999fd2c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
> >>  				     &pmdemand_state->base,
> >>  				     &intel_pmdemand_funcs);
> >>  
> >> -	if (IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
> >> +	if (IS_DISPLAY_VERx100_STEP(i915, 1400, STEP_A0, STEP_C0))
> >>  		/* Wa_14016740474 */
> >>  		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
> >>  
> >> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> >> index 4176163ec19a..7b75c5ef6316 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >> @@ -1914,14 +1914,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> >>  		 * cause issues if non-supported panels are used.
> >>  		 */
> >>  		if (!intel_dp->psr.panel_replay_enabled &&
> >> -		    (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> >> +		    (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
> >>  		     IS_ALDERLAKE_P(dev_priv)))
> >>  			intel_de_rmw(display, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
> >>  				     0, ADLP_1_BASED_X_GRANULARITY);
> >>  
> >>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> >>  		if (!intel_dp->psr.panel_replay_enabled &&
> >> -		    IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0))
> >> +		    IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0))
> >>  			intel_de_rmw(display,
> >>  				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
> >>  				     0,
> >> @@ -2106,7 +2106,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> >>  	if (intel_dp->psr.sel_update_enabled) {
> >>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
> >>  		if (!intel_dp->psr.panel_replay_enabled &&
> >> -		    IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0))
> >> +		    IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0))
> >>  			intel_de_rmw(display,
> >>  				     MTL_CLKGATE_DIS_TRANS(display, cpu_transcoder),
> >>  				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> >> @@ -2561,7 +2561,7 @@ intel_psr_apply_su_area_workarounds(struct intel_crtc_state *crtc_state)
> >>  
> >>  	/* Wa_14014971492 */
> >>  	if (!crtc_state->has_panel_replay &&
> >> -	    ((IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> >> +	    ((IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_B0) ||
> >>  	      IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915))) &&
> >>  	    crtc_state->splitter.enable)
> >>  		crtc_state->psr2_su_area.y1 = 0;
> >> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> >> index 31de33e868df..3b0e87edbacf 100644
> >> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> >> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> >> @@ -3533,7 +3533,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
> >>  	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
> >>  		u32 pipe_val = val;
> >>  
> >> -		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
> >> +		if (DISPLAY_VERx100(i915) == 1400) {
> >>  			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
> >>  							      new_dbuf_state->active_pipes))
> >>  				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
> >> -- 
> >> 2.39.5
> 
> -- 
> Jani Nikula, Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
