Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PTIIbnSAWryjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:59:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF6F50E62E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADBC810E6F3;
	Mon, 11 May 2026 12:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FBPB36lh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6394610E6F3;
 Mon, 11 May 2026 12:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778504373; x=1810040373;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=baDti8oQseUHdqlXlRbck6wseA3hgmcuH56+UG9k7Us=;
 b=FBPB36lhyADtJATgpyMCGQfQmmGWpg7QlrWn8Us62mvCNWDlcEU0uS9+
 122vuvJ9WpEdmrVx+DLI0cCELyqv3ztRKa1xhI4KLL/+LWlrUgN5bVTtN
 ZP10nHv+cTN2pqMi1S5QnA3kzBeXq+zGzYNot3oI489pZmH4so60lTQLl
 3zZX/QtEGignkbEnJyKRYTzEN96R/LPCETW+gMuCmZ4FvFRoovvk9mXKa
 aV/ic4wEYvFNyODolVQZE3h1xwbkQtUjvQB4M5nQYw/+lLwqDBffKdssG
 qGTM4awdrQwFrux6tRQuKq11JZhzfXl5VyjQZDXYw12iZilPyhRmsixVu g==;
X-CSE-ConnectionGUID: OMZqhoJ2RB2/WsoKCfEqVg==
X-CSE-MsgGUID: B7uHtK+FSimWgCXGvV1LBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="104848110"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="104848110"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:59:33 -0700
X-CSE-ConnectionGUID: PJLTRRzMT8CIF678/+y+cg==
X-CSE-MsgGUID: +VnS7FR5TuqyCsRQWLe1Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="275576420"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:59:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:59:32 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 05:59:32 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.50)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:59:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IqJu3I+X3VHlsbFS8dtI7Ja5i0AJIk4pEZnT91ErNq3bz9uCF9+H2lcJzMWtP3a/3ibLRoJ58RglAWyWUL7GOCGbuATcDCCI+4X1RSTks0YVKpIRZoJDPv4jJzWc21rLql5bTq0NwcpTIiO7KIWSCKpMPgm1eSd4o/uLxACEz/8Dgz8XxSzzTqXIqeu5bx9gHL/lZmJmqGQmvRk61C7HOHWy+XRmKrDc91C2nC6kDTMjQa460+ZwxxLm9P9/cmNudmay9qEYwrW4xO6tFkHAmXx1mt0SFmWaOw+itWyQhVCRrNcNP6H/ONMuOd2oEViYQCH+KXzIwcRbdVD05AGS7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HTP9nW7L6o4zsuLs9Bz8DvhcxyRv9VeOCBR/00QJgEc=;
 b=at5iQCdoCwxOHBwjpDX3Gm8BYDN7ATW4NXtMpzmdi1NJnxFeLJuzCDonWzjarN2STeGXzFMy6HstLROqwPbAczG67KKtebUM0q2B+CGoB+veyzbD41G5/Q9czS5dPzmOnYooV/lJzxtqOSc5ouOK2WgiJ916NItSKEffif9YjIy+Ez1yOwJ385tMEGBTkii38ysGoPmvDcrix6x0xMR02bYgmc+8Or3x5BwfGwXlH6d1w/1Hng3YiP3zTVt3w0i51dkVnCAj74KiZGoa11AVoamuc5SC8lD5Zyucyc34ODDxfUJGtqI4e9k2Q+e14KHfeGNbiR8ISYn29NUk0rTFhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3658.namprd11.prod.outlook.com (2603:10b6:5:142::24)
 by IA4PR11MB9252.namprd11.prod.outlook.com (2603:10b6:208:561::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 12:59:22 +0000
Received: from DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542]) by DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542%3]) with mapi id 15.20.9870.023; Mon, 11 May 2026
 12:59:22 +0000
Date: Mon, 11 May 2026 15:59:16 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: James Xiong <james.xiong@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/dmc: fix assert_dmc_loaded WARN during async
 firmware load
Message-ID: <agHSpKZtCqmciCU9@ideak-desk.lan>
References: <20260508181329.666762-1-james.xiong@intel.com>
 <87tsseqgrb.fsf@intel.com> <agHOCIcYOsDPyUi0@ideak-desk.lan>
 <87o6imqfd8.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87o6imqfd8.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6AC.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::28f) To DM6PR11MB3658.namprd11.prod.outlook.com
 (2603:10b6:5:142::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3658:EE_|IA4PR11MB9252:EE_
X-MS-Office365-Filtering-Correlation-Id: dd326b8d-8096-47a8-3184-08deaf5d1f2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|11063799003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info: EsTszekj4URm/VZtBn4W188jGELd0mBpEQLjUJ7vF9AHvAACRodalK80n1rlU+taA8xPLxUobMpJNpVOV2/8IobZuuXuIELbpmpDOmq3kbq2GO7vxFPjJMBem1veAjct1MgfFkku8YdimaHZVpZzomzyjXkMGtLA37/khCRsRW6qprjNWafsE74vGfMgXD2m9qpJLxkjj8pPuCs4OSU33mcAMtT4LfdCLlxXrRERXLvheQ3EqFqhAIX7Vb08R07v1wbirWwqb7ygsCHmQxBTMmGgoojFB9Tld3V1CtNC8q4VJS9Vuxck4W+Mr0cK4HmpSY6MknwH+mbCXO5Y/CjsPDZVJTrYRTaRBupCedKVC27c2dIcZoTkGT5hvwLQ5Gz8sPNt68D2LkMTmV3fHK1Q8bXy7Ox82ty2u28zR/XreeVYsqeWDHqdmfkGr9zID6TsoKYKnqo+6sHVSDfpAFegXVMLbJLlMRSQxsgxF4HYs0WDFWIkFLlg7zLndsNxUQ5G/AHV6Pt7MVgnDPARZtx8kS/W//sMXn3QTBc0WDZOzlg1gbo+9ipjWQEfrJrpCbZfF0ewV5bi0IS/VhAuKK6BEd0RZojHvgBVYg2FZQVOoekEZo9LS+17RoEtK3nNCH5oRAKpfooN47RD9WqZ18xStQPGpKQw1nCCVjK5lQXVF3MrGMvUEWZFV0kqc2z4P/l/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3658.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(11063799003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jSQHgvm5ZNq6Addc3NFoBwCOajOsGf/ayWsFCsatfD/Ssgjp7yVPUjNhuXIQ?=
 =?us-ascii?Q?FRAIAXw6buQvJ178e7ZzEfmiVZ8JVtYcTdCJgbB+WP/JshCZdfJcyduizKby?=
 =?us-ascii?Q?9LuZa9V3EaEm98aZsuTj3uA1mmVSNzUfW+4h1QS2HA80mIRRSTyCeFlBotIZ?=
 =?us-ascii?Q?cRGHzi5H///AYPwB+XZnL0rSqiP+fR12M0dsSI+b1zs51CVvrXBBOh2EzQjW?=
 =?us-ascii?Q?HauGPwz94vWy0IWqEIQ2lw1Ewz7MU/MD+cisYbpTOSnJOILXGcOcAfu57qhZ?=
 =?us-ascii?Q?hGySiLehiI3QYbPydcCHaO3Kw9fC1LxnGD9DJXwBnlF+GqDMQGXJgT1tSLk/?=
 =?us-ascii?Q?pows+l49S5soD3lVTZaJMtJHbgSmg7pzAveJhfJwgHGzqiuI5Bs6zaF3Cmh+?=
 =?us-ascii?Q?aZ32kgavfCkYzDaVs4M0T4DjE/gfvHMPSCmeaq0RsgDNRmbXbh3hbYO4PyTv?=
 =?us-ascii?Q?Vpvf3LlTGinifrWH59Zb5kbr3TaPPG4daDwJ9rk2aOg27svylaSRJtb5HO3V?=
 =?us-ascii?Q?iYYXvm6Doxs9yk8bQSzmK3XfycVWR6hSKNmR7khdYiPUt8kH0gfDCHUiibm5?=
 =?us-ascii?Q?z8AfrlfXb5c1tRFQcz6iZj8JkMNxjXIdOrwZfYKqis2EVzzYFG1vjNt7+Za3?=
 =?us-ascii?Q?+j4B5Vh37csR6D8Z412jlTRKy7sKXpDzUoOMkexlR5HlVPVj6Q2Bcf1pXS89?=
 =?us-ascii?Q?r7hb9+gMw467dqnOd8PJapNFZ//ukhA3CaUdToCJewZz0Uh6hN6mF709xJ8S?=
 =?us-ascii?Q?yBVC9ZaHkoIAxhVhvtrMDLMjH8XW1WEVe455i3Xx7YcmpqD7QbGBF8NXi1e/?=
 =?us-ascii?Q?4ZNn4PVXwzFPoznXE1FXtc5wTIbturrA8zlt4/GQwyMTga3QHo17DiiE5Bz6?=
 =?us-ascii?Q?MUDMto4nt89/TNRDqC7QWz1m2338oE2uqieFa+ZwVCR1lgo9Io7O8xJrea7C?=
 =?us-ascii?Q?63rPdtpGIQlmocwZLtYZV9pGTW+OsX7OSOT3rsBcxGpkMFTXXkSLVnYWhJrT?=
 =?us-ascii?Q?IjSZw+gI7ohiwW+BByU+6Vp0FhMHxvmfwB1XAR2SufsiubzvH8J1IACJUENi?=
 =?us-ascii?Q?ZEvVQgp5IrJCQSPaNw+ekIY43iI6M0rTzkDAEWrnxyb97v7veXVBPhTE2Q7V?=
 =?us-ascii?Q?tCGwjqjYiB9u+8AcVmxHjkidSJXIWGnXNAm7N4FX866mDJM2MsSu2GlyJZQJ?=
 =?us-ascii?Q?xx6ayGs0VOQyRqBUuC7l3c2QFQrHApvZHPQoARCaavqXaBZcQb27ktwlLlpe?=
 =?us-ascii?Q?Qmzep3JPYKM1BxMIig82YMvWn4cryxsNHfWd7WtBEq2wVAGKyuOWj04y6A7P?=
 =?us-ascii?Q?jhVQW0sdv9aS4YxuUNhzWw9/bDntJ0KRXwm7iUEaQHGXf6yT8qVwnnC4Oo5+?=
 =?us-ascii?Q?eYGBXR/D/Rm9QPyGji5blp8smt2ewA+tSXQn38vlcFRKHMQ1EF5tMDKaNddy?=
 =?us-ascii?Q?BmjnDzvananF/uYT39mWCcvsqaDKYo0KKBFLhU5mfsv8GUhCEw9oBZpRO6NY?=
 =?us-ascii?Q?IEPLxGLv/1JQHLwIYcwV4aQZ7gvuteOtX2R3s4faYZciScNDjhRMjRRmRfa0?=
 =?us-ascii?Q?/2lD65fDolwUEIHGC77Cu+99rt8B3E2I8SHdgrMYW1kKYtI+xroKXW4V4S6A?=
 =?us-ascii?Q?RaZVzILhdO1ACKs1UBK3ryx4RIBVsTmTdnPozB6fygzsCYHFjpFIX9Bj/ZwC?=
 =?us-ascii?Q?iX7El5JOsjEMcKzXgEs9XxWmhzF5IJI5Smm25R3tDwHadDF4oa1uPP+Rx7zY?=
 =?us-ascii?Q?XY5exksx6A=3D=3D?=
X-Exchange-RoutingPolicyChecked: VWYtRIO12uxSeTZ7TRHi23MXE1eZtSEV6sYkJja2abEzfmXOh6oAtQoU6saFjGANZw/5/sWkArGrd7bRJsICtLCce+JhHwYrPfSetxtyz/qN7F9Q0r9weiTPXtogbB2E9Apq2w+0bf+qJjCqQCixQ8IsAxvEOIiqzBIiJmafFvs3YSlJru/++JFHodqrI0lyRu014ExGvXanGwh8OPOWdGzlqhTNRZvHM3FRZp4qot3uI2dnNlr3uUR3F4ifjdK3npR46W+GRwpULyMUu/f1UiubPXLNK+WRZYNLb7Tes98/jZk8nsVFn5Yf1M6wz/JvYUzH1enRi7as4ZAxRv8u3A==
X-MS-Exchange-CrossTenant-Network-Message-Id: dd326b8d-8096-47a8-3184-08deaf5d1f2a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3658.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 12:59:22.4445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u2839HJf0EA7C3W/V7SFRS152RPdy50E5GbuoTre3n5o6brHxIjZ+vN7raOI2RSIoY+kQjT5sBuLY8a1Q7IxDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9252
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
X-Rspamd-Queue-Id: EDF6F50E62E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideak-desk.lan:mid,intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.992];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 09:50:59AM -0300, Gustavo Sousa wrote:
> Imre Deak <imre.deak@intel.com> writes:
> 
> > On Mon, May 11, 2026 at 09:20:56AM -0300, Gustavo Sousa wrote:
> >> James Xiong <james.xiong@intel.com> writes:
> >> 
> >> > During driver probe, DMC firmware is loaded asynchronously via a
> >> > workqueue. There is a race between parse_dmc_fw() setting the payload
> >> > pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
> >> > writing the firmware to hardware registers. If the probe thread calls
> >> > intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
> >> > intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
> >> > registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
> >> >
> >> > v2: Fix by calling intel_dmc_wait_fw_load() in
> >> >     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
> >> >     Sousa).
> >> >
> >> > v3: Move intel_dmc_wait_fw_load() into intel_dmc_enable_pipe() itself
> >> >     so the function is self-contained (Jani Nikula, Gustavo Sousa).
> >> >
> >> > Signed-off-by: James Xiong <james.xiong@intel.com>
> >> 
> >> +Imre
> >> 
> >> Perhaps this deserves a fixes tag?
> >
> > Since that would result in backporting the fix to -stable, it depends on
> > whether enabling the pipe DMC functionality before the firmware is
> > loaded is an actual functionality problem.
> 
> I think we depend on pipe DMC for the flip queue functionality, so I
> suspect it could be an issue.

AFAIU stable rules require knowing that a fix fixes something for a
user. I suppose one way to make this sure would be reproducing a problem
with PIPE DMC explicitly enabled early, before the firmware is loaded.

> That said, I'm not very involved in that, so I can say for sure.
> 
> --
> Gustavo Sousa
> 
> >
> >> If so, maybe it should be this one:
> >> 
> >> Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
> >> 
> >> The change itself looks good to me, so
> >> 
> >> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >> 
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dmc.c | 7 ++++++-
> >> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> > index 0df4f42ba3e3..4151eae92744 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> >> > @@ -786,7 +786,12 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
> >> >  	enum pipe pipe = crtc->pipe;
> >> >  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> >> >  
> >> > -	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
> >> > +	if (!is_valid_dmc_id(dmc_id))
> >> > +		return;
> >> > +
> >> > +	intel_dmc_wait_fw_load(display);
> >> > +
> >> > +	if (!has_dmc_id_fw(display, dmc_id))
> >> >  		return;
> >> >  
> >> >  	if (!can_enable_pipedmc(crtc_state)) {
> >> > -- 
> >> > 2.34.1
