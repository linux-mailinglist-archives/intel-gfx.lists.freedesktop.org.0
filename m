Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uh8hBf/eImp1egEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 16:36:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6778E648E04
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 16:36:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=ZMyp8UtV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1BFD11A901;
	Fri,  5 Jun 2026 14:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE5911A8FE;
 Fri,  5 Jun 2026 14:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780670202; x=1812206202;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=grVQuDrsdUnZwdNGzryPQMq9aYFfJsk0Z51sVUkKYVo=;
 b=ZMyp8UtVUXwnD0BMK+Qkm59HzWL4pKjSF+azw6YIcmieyd3uYgn+k9J+
 9nmiRWs77rDqZA9rC7bocHjVqGup0wYN3MtdFn9xoYY0Gp75KMH0+F6IM
 I5b+HPuulc3ZLMh2QJJkFjW9q2rw134o35gG07K1zghOx9D9DndM6PynC
 6q075piZRxXwdm99b9c2+5GytnNzZ7MhaXh9uGOuRZj1LlDo/WeUb8Fwz
 C2ZKa+SwLgnpsa823aKe4dbYTtk1sPPuptBAtgFGAaBJIdvXX9r7XSKGy
 fJ/TKkA/nmJrxh12LSW29HoA/O6WIcugF50H6jyCK/7UvmVq8ZlLgShlM A==;
X-CSE-ConnectionGUID: s7k6DOJOSeyjKfX6c1MoQw==
X-CSE-MsgGUID: Uiyjtq9HT+C9ewvCWA+kgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92612368"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="92612368"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 07:36:41 -0700
X-CSE-ConnectionGUID: 3N6AMPHWSVioi9WBzdkY6A==
X-CSE-MsgGUID: FIlNLiYRQWiIxdmBNlaLVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="240404907"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 07:36:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 07:36:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 07:36:41 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 07:36:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gKA87yzO/Z0ab6AhMg6eCI03DyEjAfLDGlsJiS+lnj+jAHTJeLUwv5pfGmecwtfPxV+ZG/A9j8rkw/ymnQcgYA8rDa+wZcsPATOtvJbn+QNNnxcdYqgJo83uzuG1WalbMevqNP4PCE5uiC0AQyz9FY1/CXOkPgxDmOrmweMhYDdNG7Zenw4+W6kxVkZ8woRPECn6ugMP44wMC8SY0k8DUsSEDub2QMPbIl1QaEjmRXitYKDVQZF4E/TGXQTfgD/fxN6C64vcvFLkmsgNO8DERhcbB6i0AzMKvqmj1Sm03cT74/X0YjcBFDoTdCUZ99srQH1HqsYxfKzuyjr4I4YRDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b+ny3UNnzNPMG4KCAyVPUEL9KHhLlqOfk8JA6rVtOrg=;
 b=sXbbVBJzOtsBTPUjkI7OyqlP/P29sObXuwB/NkS2ziHzVBYBiBoVy1I3W5eQRWxfzk3uNW1+h1tr6gxdZJspdQzZkTvhpGDYwN4cgsdnb/xeOZFlS2lR1M9mTu3Q4VmZCTStC8GAJ+7spx8/L4/hsbfZ3EisDLh8wCNpXn92s4l8GiEFTui4N3WEPFMmfy0hEQrHEQnzJpGZByln6yg7tZWZfYyCLhvq3dCrYxLR6dKNfRZq226bNOvzjqPtBpUqP5FH6PDlnKhcWquWG4Dkhxvn9qz50hTT8JDe+o5MiW/WTGafJgkDuEb7672e//HL11/+ffSxIx6I6SrIuHDA5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DM6PR11MB4658.namprd11.prod.outlook.com (2603:10b6:5:28f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 14:36:35 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.006; Fri, 5 Jun 2026
 14:36:35 +0000
Date: Fri, 5 Jun 2026 17:36:27 +0300
From: Imre Deak <imre.deak@intel.com>
To: Guangshuo Li <lgs201920130244@gmail.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Uma Shankar <uma.shankar@intel.com>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/dp_tunnel: fix CRTC hw state cleanup ordering
Message-ID: <aiLe61REFDPGvZWM@ideak-desk.lan>
References: <20260605060527.1443552-1-lgs201920130244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260605060527.1443552-1-lgs201920130244@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239B5.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::23a) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DM6PR11MB4658:EE_
X-MS-Office365-Filtering-Correlation-Id: 67b421b6-e735-42c0-74f0-08dec30fd844
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|18002099003|22082099003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: KXxxJKS88uHcSqPcmEVQuSTdYC+tFTBhRCQKZEtCbT9ob8BlKy5Rt5FzU41fl7vFYXuZDBtW+ypjQPCMHcbqKt5YGgsGKX6TgE1R9IcFnMdKHr2tz4c1BaLl6VtuA3G6GOGM64ZZNPSKMG4IKmLl47xR71VV6wfctQUmfoNnH4KnyPVJqnph4LenKghVmcMa+q2U1J07TqQsxXPWfpwC7TR72yN9gylwEj08JCTabKEf3a4boFfB5Wbq6gk7rGhQe75irjYOvzug+jiQ9yWgbyWvyam6mHrYe6PVb4bDYcinmj7C3+oMsjOsQ8Jx1HXhOQqf0VsUNAQJdjYXBXrCt63ckUA7mpTXsa3fvCPvSqV8T+AAQ6iTrWv2hYodFlFIGHaT2np2QjmSX7St9ipBImvVnViC6WTxOUg/xba4AbjMU4xPfeqhGYWcywR90mD7T2wYQBiZmYwPnBuEvn07kDxwvbB9WhT1eZsWt64Hk8umE0q9kRoTGa07x0szycGSrKQSlnqVZVHCPB0THqui0I7sI9m9OpXcL7IMbhr+4pGvdWJBjQJlynqmqyq9JMXZ9x+6BfNfsgg6I+ZgEbxeNaCwbObom+R44nvhlHMRQD3V8CJ29lzsb0EOYUVDTcbY0VcHxhgqqrnkyAYF+/i7DS793HeX3FokNDH+VAC8lvA0xPf4p/ksL1dBu52TEwdD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(18002099003)(22082099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uUw9dchlV+lvzgOSUXazivk0+wkIMz5O6GEbBBApd2gE/SGJ909AXl+BEkN9?=
 =?us-ascii?Q?wDInFVWOuvnRMbyL9f/yw3qMMXU1AIopgZJxRgDijUqP/jmDt7PPdK6RJVZx?=
 =?us-ascii?Q?ZBkPEpnYa6TV5sMfq7LB3CTdfDy1fWZ9TN4x0a0VDzQycuDyt/npOwGYYxpH?=
 =?us-ascii?Q?hFKS9wP4I8DK4X9ZAAZuLQzKa2csSj3s8au5BpjZ3rIWCk/S6q3iZ3jbv5V8?=
 =?us-ascii?Q?SfdrdKn+aas7uZL/RXM1TCLo1bZkNY81y7WvJq184flYU7slOp/HMcTXLF6a?=
 =?us-ascii?Q?DP3h2+lVLIRY83JEzc3QfeUdRX4QwAj/LbKGxzVR7L/wwHRKmf+g+XwXzTxA?=
 =?us-ascii?Q?GQJuAhqgJX5igAnNdgLDuwi1TWGFoGkuoW0lZVfG7ATrVLZq6NxItQJVstmj?=
 =?us-ascii?Q?BEHE0Oamvby65ismBl/sqH4ElYltQ2s491nuotoonvdbpTxP59eegIR0SlSp?=
 =?us-ascii?Q?I9/xsnORfRsF3YjROl+Qst5WFUR+OFHn2kJPvP5abTgRx2tH8dDgX1DT4qEJ?=
 =?us-ascii?Q?xjRrGbgcSZRkS5+vglr5g5yOm9PbxI2OWGie3i7nI5fJEaHHst9F470wD44D?=
 =?us-ascii?Q?olhCh1oRltSmr87/eyyorkhWQqFmG5/E1WIz45+GIGc3yaozbQc5CM5Y+moO?=
 =?us-ascii?Q?b8JXKJbJSjbCzMFbaLFDq4APipekZFBUOBaPjPlpUSwKOv2fcrIIBQVT4unW?=
 =?us-ascii?Q?cPNLncCrJ6BkfBLmwR9EaxHQ7PCDM06BcuGoFmL+dGgPPGo5lYLdS/MfEwQW?=
 =?us-ascii?Q?c4WpRIVaCpPF3sYrr194ZbJuIhQPlTIP3QDkmT/0tdeyuxwr5uYhS/CNhrVi?=
 =?us-ascii?Q?iPNLusy/w8vxkIHQfodbM1Z6R01qZJbYZVhzVwSsBuimc3QVBEHJBU9VoVx/?=
 =?us-ascii?Q?HiFdYVBmERYcL6xCfG7BAf+76iDlT1OaDobT8BZYo1IoJq7wuhLybfSgyyAQ?=
 =?us-ascii?Q?ssVV848OXtxghn1puq6uw+jymXveko+WNxseJ5Cs2Dve4Y2BvdyBG/TGRqq2?=
 =?us-ascii?Q?HIulFSA0IapZJn8YA02sRF5N/947VS8iM+6czNtUHw/CETQe42JwKQXKpvNH?=
 =?us-ascii?Q?P2POO9WFNc4mieEXHgjRbeU5YTLHFAlyhzUD4Nfhgci0bhtbeP2z7dYnn++L?=
 =?us-ascii?Q?1UIiOBxxjHoLOEbGBnzScTOT6BGFCiMcp/mn5Sw88+hlYP7ekIBYoE6yiPR8?=
 =?us-ascii?Q?vwguhmXk4C5zVOV9PYUxGsdVn7uun3uR5PSsjEHUiVJi6j7TqqGkFTpVbuqa?=
 =?us-ascii?Q?NZfEeY8ecmrXYL95jPj/rTftugpha1d8jLmUJwD0TFKpBYBCUwMbWD28SRRR?=
 =?us-ascii?Q?WHtDffVIbxr9wRsd72AFmqO1s5S39wYYcnU8DoyOZwOLaRUDPvGc+PesK9hm?=
 =?us-ascii?Q?LjyQ7gF209JLmWjaf8Dxlw2KMcli41qn3/aBd9HCdbdfeMl3S8/mL23wiyrc?=
 =?us-ascii?Q?wsVkq/w9UhL4JG/5A4sLbuqXFqsn9PrTcCfsgtEoLJXl67e6PV/LWk23QWrd?=
 =?us-ascii?Q?lL7o/yDgiyRXsZoM/O//PG23BGweiSnwy7jMVGchbnWxVGWzzulwb13a+qC/?=
 =?us-ascii?Q?bern6LaF3YgQgH1aioSG/1ngEhRkJYaZBya5okKKKmQWkU9RDYT3A4gQIEDN?=
 =?us-ascii?Q?PDipknsPI/F+Mah450PUEMksDwjA3FbRxUlmW1thS3l+YBXtMorxGwss4SZ2?=
 =?us-ascii?Q?7R5uDjBW0+vDZEY08SwmvCYmJwQUPon1VSEWP+x/ZRzW1mHiXj0uFRliWclN?=
 =?us-ascii?Q?fVrN45q87A=3D=3D?=
X-Exchange-RoutingPolicyChecked: P4jx5vvyYWBdbVbTsdumToQyl+rdDA6CO1gHW4DeiAOoIynQ6Az3gKQ3pnrorzARohFiP6k5pCe5hvK7KKsNQI2bQ0HJswF79M4Lf4SlmWs4qdLYUkKxq0pzjKayeWXkRB9zK+ZY7coP2tzdzU24N6gMiISge6x/RGNZjZXCxLN1oGXLvSyaOJQjUKTaDgunvmAj36Q8RJ+LNPdV1zgRyGAgqSKZD6WodMRS/eQ17nCWs18wWQBFtZMk+utyglm63ZzdCDz7y/5hOvI2FiVVuPcWppm95+5wYjduPbWJsZBSFcPPIJinS+Z8TMRztskcHog8WVKS9gM0s5E+idRDdg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 67b421b6-e735-42c0-74f0-08dec30fd844
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2026 14:36:35.4937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YhbtNWQupB731HqVfbL6IGpujBA98oaYSNu9v4JCqIohCAYv3WxqyfLksCPI19DXfgc6fhzT1J9RJIi+Z2G12Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4658
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid,intel.com:from_mime,intel.com:replyto];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6778E648E04

On Fri, Jun 05, 2026 at 02:05:27PM +0800, Guangshuo Li wrote:
> intel_crtc_prepare_cleared_state() frees the old CRTC hw state before
> calling intel_dp_tunnel_atomic_clear_stream_bw(). The latter can fail
> while looking up the DP tunnel group state, for example with -EDEADLK.
> 
> If that happens, the function returns without completing the cleared
> state preparation, leaving the duplicated CRTC state with its hw color
> blob references already dropped. The failed atomic state will then be
> cleared by the atomic core, which can drop the same references again.
> 
> Move the hw state release after the DP tunnel stream BW clear has
> succeeded. Keep the temporary state allocation before the failable DP
> tunnel operation so an allocation failure cannot happen after the stream
> BW has already been cleared.
> 
> Fixes: fb69d0076e68 ("drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state")
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ad2fe10b6b1f..0c015bc6c9fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4646,9 +4646,6 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
>  	if (!saved_state)
>  		return -ENOMEM;
>  
> -	/* free the old crtc_state->hw members */
> -	intel_crtc_free_hw_state(crtc_state);

The fix is valid, however I think instead of this change it'd be better
to clear the blob reference pointers in intel_crtc_free_hw_state().

> -
>  	err = intel_dp_tunnel_atomic_clear_stream_bw(state, crtc_state);
>  	if (err) {
>  		kfree(saved_state);
> @@ -4656,6 +4653,9 @@ intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
>  		return err;
>  	}
>  
> +	/* free the old crtc_state->hw members */
> +	intel_crtc_free_hw_state(crtc_state);
> +
>  	/* FIXME: before the switch to atomic started, a new pipe_config was
>  	 * kzalloc'd. Code that depends on any field being zero should be
>  	 * fixed, so that the crtc_state can be safely duplicated. For now,
> -- 
> 2.43.0
> 
