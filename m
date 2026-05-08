Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHTuIxmi/WmwgQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:43:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B896A4F3D81
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5AE910F3D9;
	Fri,  8 May 2026 08:43:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LdT8+F2i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5670410F3D2;
 Fri,  8 May 2026 08:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778229782; x=1809765782;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=bVdCs4kTYdKPDbAG2Sc27Mp1P560zXQ0PYzRkOVFsLs=;
 b=LdT8+F2ig1BIJOl12rgsJq5o1Qdsj1UWzHyChOUy834H8nR96OuvJ8Tq
 kfFAr7FGYGYNcPwwD03BjcmCOAhL51/qS3B1Mp/mebv558IlfznGgZdEO
 mhEfg+CilIZl2vzPFVivuwz40+68wWNY4GfpZTzT2zArVuzYWwV7SNgO7
 0YtXplDnltnDclKSnJeBIeWDyXRzK5wH1JXHpPXDzI5Sg4JxoXurtGu3P
 nb1UT5SkuY3QCxmVzJkFn8nt2YANbShKfD6sR9cOKCU9Lsuof+4HnzHwL
 znGUq/4PGJ4yyGC+L4cBCY3TTQwzBv1F05AA1d2ryZNOOBIr8cz49YP7q A==;
X-CSE-ConnectionGUID: RvCtFynTReKYvta4jrtikw==
X-CSE-MsgGUID: aRrN7HHUSxafQdh46rY7BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="78919379"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="78919379"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:43:01 -0700
X-CSE-ConnectionGUID: pWgOQSr+SQqXVfP0/00v5A==
X-CSE-MsgGUID: YPzsuLuTTSaUbzmCUp6WBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241057076"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:43:01 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 01:43:00 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 01:43:00 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.34) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 01:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KwNY1GRtkBDKohpG8BKRuVWgDnm+NGUKOqQz1uDJZ5Dpf807sCVmY1Z1x6W2y3HJTLYjjatM4BSHzXfXQWzubQlJcNzoDhc4vN1IjTB/KwWturM5J6IPfXLhVE9E0iiryWofRmKQq2KuYrE9Lq/8Nogy9KPbsmnEszDOXzhrFe3tj/qOP4l1iUlK6FUA/6MLcJpF12uVcaWTUBCXueAWMETIn05DkWZ/uJ2cEY7ycZQsmt/wF/1ZmClQjjhdS1J0DmSD6syefg2PNsBTppxU8hYZjH/V3vU96skgk4nJv7837xI+LxIDUpC390eK8LLdut47y8OUmrhKxo0GcMXdgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wnV7S2EuPJEmbONTI7UKUtnaLq5ucc81bKpTg3eW9F8=;
 b=aRIjylmYHvq03OBYu0Ab57I98KQHxfAqcDa6LYQ7KVl34NLbG4jc/D5YzSqHDnYV/kAzQ4+qVtymnpt1F5s+RvKwBSSXV/VW+dwQMJ5CuoMuQTh+tcZoSiaUPP78wk75xUCmrbhW1y0JSmWRuqpJU/6tQgAJT//BuygXqECKX3hWzckKNT986COB8PWPwOJjNDuMDy/8vKFX1eKocPaACeRfn7ceqZYLnBJEzWNk91r++mCaleym6ql6V99Vv62XHb68Qfol2XbWfl1dQzgoUoJdxigJuNSTwrcflKSLFFKO/B8PBKNiM2ejXSeXZ4VUUea8iQvPpl2n+f3THwzvmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB6456.namprd11.prod.outlook.com (2603:10b6:8:bc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 08:42:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 08:42:53 +0000
Date: Fri, 8 May 2026 11:42:19 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 043/108] drm/i915/dp_link_caps: Add helper to get common
 rate index
Message-ID: <af2h67De0Aw-zcO_@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-44-imre.deak@intel.com>
 <7c6ca65645c530587fec7fa4603a53fa44b3ef8a@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7c6ca65645c530587fec7fa4603a53fa44b3ef8a@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6ED.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::248) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB6456:EE_
X-MS-Office365-Filtering-Correlation-Id: e4733ba6-7ff4-4e16-15d8-08deacddcb4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|3023799003|22082099003;
X-Microsoft-Antispam-Message-Info: R2q03DDUHlhQCdugtNp/7u9R8Pi3ohkNudPax1MZp9fkL5NnQjMovMwWoKCuuAjvq+LWfoLJiqLP78Ii8cNBaqxJ6fJw7FpmrZU3AkiJ+twx9gvBG6CBJLg2zuMbRGOeB1tpEbCM7BJz83sMhugSIrJjcb/Z2D/ffltS6UIlRL9Snecwnib0a8ZYGavlZFD+KePmk5mN1a641qsKsg0Phs2d6FXGI09HSZQczkeWOMjyDayZOxcXCA2jFFN9mJ/kimbKOggAijnSELEKd+5IFxLmulZ9UuC/JTTd209pwAesR6Fa7UZDPhWApASUn6OirzV985h8/6/dFZE4g1hOnTLNTjUvNYN8WTeamtQGcdIbRrYXZeavpimqOmUY/HhW3UbjmQyg/f3sDmTbbYI2qCmdYQCYVL+nRUVCJWcf9khmTSRf80uidIYjkn+w/wzt/alouCaS1wKjkZVz+n+gsRd+hddh1acFvcJRNriissSstePswgrtpgjXA+uMDuf/eqxA3eh86Lk8gy87zsrmRJQdachzKw1/ewC2hrs1O2/QArghqTOxobImB3ctBZukljp6JCoDCSLJOgQAub6qSzNXaA8UrrKTE9jgXLtAJnXfYlpci8xiz1ERSK2pAThc1huBdl/VHu9X/hMEBcX31ctOdz4ye2A9Py5gwp+59xaSXazZrOUrrr9G0IiCyUGh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(3023799003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yh7Ll5v5MWBJd0721PygzSIOM5Ip0QV/jXB1jY5abnH1HS96bhf2KG8ypzRB?=
 =?us-ascii?Q?Zh9T5PX0tS+bm3xosTvAges5fdFiIm9HNRGekG0YrfJFIGkwv6TZXMYlNfaJ?=
 =?us-ascii?Q?Qo92Pz4sxl/fPb0smu3rgUN2CMTGoU+gNZQdlf5d9YgHnHp953Ihq65K7p+M?=
 =?us-ascii?Q?/85/BGoAuJ0xTCFe9BXxnb+KBvGZkH0KoTEc0OdNHzuoqUEc1HHI25VgckS1?=
 =?us-ascii?Q?lZ1c0mZhKgexVDwAQPJsfc6YCfLBJdA/sYPiQjiYOcZShwnscOVClyRC2UCv?=
 =?us-ascii?Q?ukHNpi7IP2o6NdMVy+tccI8dkVDqyW6/O6T8rd1gCGPJ7uyN57ZRP0DOH+8c?=
 =?us-ascii?Q?a/Y2PMpcS+MjvrZccLJA9mT2ZW8EMndTgUIw0d4is4TndWwMvz3nM7QIDEmb?=
 =?us-ascii?Q?5Hj3qWi1O0q06L5LmA3Bd2e6OLlxieN6tB42V81Cl6OQHaQ5JjeCMo59FU/+?=
 =?us-ascii?Q?9MUI/Ucq90jvZSsy9thH7YqQ0ard1KDWkce8RGhRvxmtr5XTHqBEONFonGD6?=
 =?us-ascii?Q?sq7uZHkEpPo2Kjs0Zas71NAyn3I1keSFUM4btuBX2WGH7vvFgZRAH8+G+uji?=
 =?us-ascii?Q?0rhqLxJTU3kcbi44kfHZV6syatYei3krwDlQzaNqE7saw6Sx88uugpG5FhOD?=
 =?us-ascii?Q?EcqXE0y7Jmq8RZ9i9qZrqoViAfJ108ZBzz4hzhUnwwmC3CJOQrsqHCdfpMEW?=
 =?us-ascii?Q?EYFt2ArUtP0T/ysDbN2xDhkVpdmh/KXHxxtahOUtfHOy9QMSRCFb788te3GE?=
 =?us-ascii?Q?b7kRt+0pmFNFxvYSgAeyFxwQacQDissz7Yqyhk53FnE7BEZ732/x9I7L4uvq?=
 =?us-ascii?Q?wJw2cJx6QyNRZxzUsNr8we407MvDzIyNhqPhHR9ZoWsHpb8DZ0M+OH9kYTTE?=
 =?us-ascii?Q?NC1rQCY2TfIuhd0Mpv1YD/cisoSp9GdBifnAmCFcgfyNRiBpArGR/KKIMc7a?=
 =?us-ascii?Q?sr/E+nAgs5DJb7nvjC/xcU1aGpaf7HLQ8U92RVKkLPaP1/ADXdpI4nPhdvTI?=
 =?us-ascii?Q?fqAIPTMv/T8vqgnTuphuupSU7YjB9giOM/0TZar8bFhUHD9IyyPjEN3v7brY?=
 =?us-ascii?Q?sNeoUTYr5yvmWVfufFLuCTfTRVjvnCwdg1s7bn8yPFHZEWqJKct492dKEB+2?=
 =?us-ascii?Q?F09msgC3nN0tFaJyVXi+UGa3V/510Rb1oke8S+cwMwMu1cASXn/+9kfwA8D1?=
 =?us-ascii?Q?7D+TrErzMhz9PQ5mtgEWcmcRbPuro1CVRAcyGCsUwvsXmuwB6Qlc0CxsKS3c?=
 =?us-ascii?Q?qBkRz538ltCEL9+tiKESyAVbI2nIMReX3YWaJ254BMrtmmpzcb6+TBhVMGj5?=
 =?us-ascii?Q?/PThut7fB1hmBkfOd05Dkxu75j10It2RpJPa7u01wD/WddNfXbTniYniVC44?=
 =?us-ascii?Q?Hx/qVPIWhpE6EOccqXWDkcoko8faihQ1g39KqRJtYIUwhb3H/ugUzvQPwBqk?=
 =?us-ascii?Q?AZheWcaCgYWqqgH0s6vIxBcgp1tmLgdwgpUtCMkHP++vhuw1xPCvV7jR2L+l?=
 =?us-ascii?Q?71CFcxVYs0Bd6/ghqXLmh9jNgrRp5hZlgHAX2h3raj9rQ8e87gd8GjYQM8oe?=
 =?us-ascii?Q?wvvteWE1sFbG5ZJhbN5CxfN910Urr7v8uggzE30SPeBrhwgW+e0jBB0aWvd3?=
 =?us-ascii?Q?xPR6EApyMmMvNHeYN05fDPTRLdGtGb6gd0DD0p3XBgHMIWdoyVkOfrwaki6I?=
 =?us-ascii?Q?L+x3SlA3ZnoH+5invoBJynmtB0nF63gBPWDvPeVuy/Xb9pGvVtUZmQA0ICce?=
 =?us-ascii?Q?EDaP81W1wg=3D=3D?=
X-Exchange-RoutingPolicyChecked: utHURCTjGEoqixUPv3sDGJymCqdNQaWCO/Enm6ZaIk7AyLGV+m960yvcJs8WueDqCoUTjmRQsgbQuyLP6/1OmOigtwhY51b4vxxcoAfgEeTCLD3g8BDKXpLbq7JRw/e9tKksS1LsAd+KJVoEuS7oXQ9nVPhx1EZPScEUxrdzMIg8aqhErVcJgX9P4+LALPdWv/pdkCGwVgmIGSn+TSX1HqjlnUZyvbm7yttxCcNYEJxT0Aiapr6T2Jq3YXFM5dC8NvkFZ8VZZLD5K+1s8b/RMda2V0aUVq6gNmbN91mb9YVYQivDjjrFlbHxUEI1GL7FSLaOAgM5crRsCGe+nEwXSg==
X-MS-Exchange-CrossTenant-Network-Message-Id: e4733ba6-7ff4-4e16-15d8-08deacddcb4e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 08:42:53.4558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EFd7V0Zzh0rHsMtPtnGsL0mrF1r7DhPQ6izojdri390ihLEAImqfAMYbtGjBTqDurMzL2Bymt/3XWpki9MH7ZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6456
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
X-Rspamd-Queue-Id: B896A4F3D81
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Thu, May 07, 2026 at 11:26:25AM +0300, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> > Add intel_dp_link_caps_common_rate_idx() to look up supported link rates
> > tracked by the link_caps module by rate. This prepares for tracking these
> > capabilities internally within the link caps module.
> 
> It's a big series, and it's not obvious at which patch to reply for
> something generic. Might as well be here, as this function is preserved
> unchanged in the end.
> 
> When the rates and their handling were not abstracted, working with
> indexes to rates array made sense. It all started simple.
> 
> I think with the intel_dp_link_caps.c abstraction, having the rate index
> or link config index in the interface is a leaky abstraction. The caller
> has to deal with an index, or pos, or iter_pos, that the caller has no
> idea what it's an index to.
> 
> I think storing the various link configs in an array, and indexing it
> with some value, is an implementation detail that the interface is
> supposed to abstract. Imagine changing that implementation to use a
> linked list instead of an array. How much of the interface would you
> have to change? How much the indexes in the interface would get in the
> way of changing what's supposed to be an implementation detail? You'd
> end up having to deal with an "index" that the caller has no idea what
> it's an index to, and the callee having to translate that to a linked
> list where indexes make no sense.
> 
> I'm thinking maybe the interface should only deal with link
> configs. "This is the link config I have, give me the next one."

Thanks for taking the time to read through the patchset.

The following is also a result of an off-line discussion with you and
Ville.

Yes, the rate index and iteration position shouldn't be part of the
interface. The reason they still are is that I intended to keep the
iteration of the link fallback code in place and as-is, with the idea to
align that part with the new interface only as a follow-up.

However, re-checking this, the fallback iteration is really just an
open-coded form now of what is already provided via the interface's
for_each_dp_link_config() iterator. Using that iterator instead of
exposing new rate index and iteration position APIs makes more sense,
especially that this simplifies the fallback code a lot. I'll update the
patchset doing this, which also removes the rate index and iteration
position from the API.

The configuration index/mask is part of the interface to provide a way
for the link configuration computation code to support filtering the
set of valid configurations for a modeset (required for instance by the
intel_dp::use_max_params logic and the TEST_LANE_COUNT/LINK_RATE
autotest modesets). I agree that this filtering parameter should be more
hidden and not exposed via the actual configuration index the interace
uses internally for the filtering. I'll update the patchset to make the
filtering mechanism opaque to the interface user.

During the discussion you also had the idea to setup an iteration
object and pass all the iteration parameters through that object instead
of open-coding this at the call-sites of iterators. This simplifies the
iterator macro implementation and also allows for future extentions to
the iterator functionality. Will take this into use.

Ville mentioned that simplifying the link configuration table using
virtual table indices could be considered only as a follow-up to this
patchset, will drop that using the current rate/lane count internal
encoding for configuration entries.

The patchset should be reviewed/merged in smaller chunks. The cover
letter mentioned this too, a clarification to that is that the second
part (patches 27-89) should be further divided to smaller patchsets.
I'll follow up with an updated version of the patchet divided along
these lines, addressing the above feedback and other smaller issues
found by sashiko-bot fixed.

Thanks,
Imre

> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_dp_link_caps.c | 25 +++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_dp_link_caps.h |  1 +
> >  .../drm/i915/display/intel_dp_link_training.c |  5 ++--
> >  drivers/gpu/drm/i915/display/intel_dp_test.c  |  7 +++---
> >  4 files changed, 32 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > index b1b78e7cda897..c99fc7704b3e8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> > @@ -60,6 +60,31 @@ int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> >  	return intel_dp->common_rates[index];
> >  }
> >  
> > +/**
> > + * intel_dp_link_caps_common_rate_idx - get index of a common link rate
> > + * @link_caps: link capabilities state
> > + * @rate: common link rate to look up
> > + *
> > + * Look up @rate in the rate list currently supported by @link_caps, common to
> > + * both the source and the sink.
> > + *
> > + * The returned value is an index into the common rate list returned by
> > + * intel_dp_link_caps_all_common_rates() and accepted by
> > + * intel_dp_link_caps_common_rate().
> > + *
> > + * Return:
> > + * - Index of @rate in the current common rate list.
> > + * - %-1 if @rate is not present.
> > + */
> > +int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
> > +{
> > +	struct intel_dp *intel_dp = link_caps->dp;
> > +
> > +	return intel_dp_rate_index(intel_dp->common_rates,
> > +				   intel_dp->num_common_rates,
> > +				   rate);
> > +}
> > +
> >  /* Theoretical max between source and sink */
> >  int intel_dp_max_common_rate(struct intel_dp *intel_dp)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > index b2eb61272652e..7ec1612a044ed 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
> > @@ -14,6 +14,7 @@ struct intel_dp_link_config;
> >  int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
> >  				   int max_rate);
> >  int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
> > +int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
> >  int intel_dp_max_common_rate(struct intel_dp *intel_dp);
> >  int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
> >  void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 5218220b82b0b..456540925db55 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1805,9 +1805,8 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
> >  	if (forced_params.rate)
> >  		return -1;
> >  
> > -	rate_index = intel_dp_rate_index(intel_dp->common_rates,
> > -					 intel_dp->num_common_rates,
> > -					 current_rate);
> > +	rate_index = intel_dp_link_caps_common_rate_idx(link_caps,
> > +							current_rate);
> >  
> >  	if (rate_index <= 0)
> >  		return -1;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
> > index 5cfa1dd411dab..0b791eee3b910 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_test.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
> > @@ -14,6 +14,7 @@
> >  #include "intel_display_regs.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> > +#include "intel_dp_link_caps.h"
> >  #include "intel_dp_link_training.h"
> >  #include "intel_dp_mst.h"
> >  #include "intel_dp_test.h"
> > @@ -32,6 +33,7 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
> >  				  struct intel_crtc_state *pipe_config,
> >  				  struct link_config_limits *limits)
> >  {
> > +	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
> >  	struct intel_display *display = to_intel_display(intel_dp);
> >  
> >  	/* For DP Compliance we override the computed bpp for the pipe */
> > @@ -54,9 +56,8 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
> >  		 */
> >  		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
> >  					       intel_dp->compliance.test_lane_count)) {
> > -			index = intel_dp_rate_index(intel_dp->common_rates,
> > -						    intel_dp->num_common_rates,
> > -						    intel_dp->compliance.test_link_rate);
> > +			index = intel_dp_link_caps_common_rate_idx(link_caps,
> > +								   intel_dp->compliance.test_link_rate);
> >  			if (index >= 0) {
> >  				limits->min_rate = intel_dp->compliance.test_link_rate;
> >  				limits->max_rate = intel_dp->compliance.test_link_rate;
> 
> -- 
> Jani Nikula, Intel
