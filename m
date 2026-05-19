Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIgFMEylDGq8jwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 20:00:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD22F583633
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 20:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58DF10E3E0;
	Tue, 19 May 2026 18:00:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wq27yjMG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1042310E3CA;
 Tue, 19 May 2026 18:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779213641; x=1810749641;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=a/dq12H9FEKdsKPPl7zUDxZsHyg0hgwMUN3D1vYUFGk=;
 b=Wq27yjMG3Uioe2Q7pKeDhSb/sJOg1SsOUWFL/iS7a0GAw0noHWNZfmx8
 7mRHoBJdZAuJlkQczIQ56Of5gs2fGkgh8y8hz5EXqnK4JLEC+PI8W8BAc
 yURBZI8xk9frIMORwASs12Vbgoq7eXVA27JO5XkX9jToOKYfwQ/9fHzkn
 GIMmw+59aGvDbTVJlhVogjrDrDrCBL7rX8lLwF6yE8j7PKwSl0PnDNKSP
 5NICQyvErHmDujB+jsA1a9wMbGUQk35cGR/gztWitAD8sQitWJYRCV9Ya
 s/LY5VUHbGKmWsjJ4MC3dIWoRmjL+1G0TvAPrrXy29KZDCsVNnir31s3S A==;
X-CSE-ConnectionGUID: Lp/wc8QhSmOv0BJhkVbdgQ==
X-CSE-MsgGUID: QZZi7GR9Rn2J1PkvX98zew==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="91567671"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="91567671"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 11:00:40 -0700
X-CSE-ConnectionGUID: IdkI/V+ERn2Tzjj+nTAKxw==
X-CSE-MsgGUID: JRuihu22Ss2bX9zYKg3EBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244818490"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 11:00:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 11:00:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 11:00:39 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 11:00:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RaZGpRt4r92wCqfDoeDYYRd3mD4dLPoD5z5S6x1+zPiaTYjhUNSrBz6zNF8ifi/6vAPm+NtiAGL1hKu0m4Z/oVdmppu9294AoqNWkuApCVXFdwGGd/b9D055icqutxn/IT+xhoO5aseLFqvoULGvNkPchqX8nx/IVHDx5m2OJHpmBSRI88rRiCA8Zmw6V63vOek+DUSe7W5jJEhLDEmy8DtY3CiD4YdAISKjbKAJ69WY8iVsaUlq9yDtwc+2nLOxV8jtJ6nnZ6QeB2AD4lzKudqrJtO4Fgjz2e3Qj+p5dSFZyy94EyzIaYe4Xxz0k1wt913V66XGkz6DkJKoSyjB2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iw2vbWGtW2Mdtv8uJT5oI/y7oNwsHejSPps7o0ZHXFg=;
 b=QCZ6GvY3Z4j46TBdfj0wquxwI6hPSkSwDAlMTNXbSxSjo/WG9jIAsDWvohEvruoxbHtuAsObeOmdDaIU5iRMcH0g7WedaH+x5VX4OMnZOnZcq59OnNBHxJRDItCgR1iuHBNXvqUZcozfIGdt0V/mEsP2mh3xUR8BdcXvsK81VjPjPJ2jPZ12OdyeR6iGXGmuOhhi3QUmib5RU+X0c7/h9q36SZKWn/d/0ZTyhsg7FvdaM43fYMnUd6sMejYx9AgT0EN3JLgvXJtAZ31+AdrSeHH6Bb0L3KDmfCSaoeTe9MlQhZiBt4fTRQyGnkk2hgYrGuDsUvetWqhDZb+7tnxnRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB9615.namprd11.prod.outlook.com (2603:10b6:806:4c4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Tue, 19 May
 2026 18:00:36 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 18:00:36 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v4 0/5] drm/i915/bw: Split bandwidth params into
 platform- and display-IP-specific structs
In-Reply-To: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-0-918528006549@intel.com>
References: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-0-918528006549@intel.com>
Date: Tue, 19 May 2026 15:00:32 -0300
Message-ID: <87wlwzp9dr.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BY3PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:a03:254::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB9615:EE_
X-MS-Office365-Filtering-Correlation-Id: bee4ad20-7f7e-4db4-197c-08deb5d08768
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|11063799006|3023799007|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: lg+DMTiJS/8/C3UHfsTBcN5O2as758Uo4Sgxa2N7Ykt/qjWzV9MIA35eQxJTTIcFhIetN6DebyjLGw1LeqEnEWaMkShWf4z3v/Y0K+MYc5L7z46SiqzKN0zqqfV6NJEMHqedhbvk2WDHuzyYri/7UVxM62Du94yYdiygBSCIktWd//Wqr/WS8bAOK8Uze+yfgq843lgv7dtOUvhkK/1gKOdaNZa1MfSTE5q5MqZ1pchSQ5PTwzpNNKn2XwM+XNwiiWqDReDjsWAg72JV7bw+JsxSpLvPR8XbLcqkmGF4DEivzd7b69HBNaptqr2Tylr7mLxFjtLcYfryeEaGdrAKYU0F6dmDi0NJOyYC1gUeDSx+QAEAyfCzJ9VppBkX++2swdLzYZVro8vsGJBukhVOi6OXqsUltU3DPx56wLuzZA9lWrd8ApgxvjtGrkT6RiCxRQBi3hgN6wQAJ5L9+lgwrm02AhQay3vjzrk/Ffc7hmUqe1dT7/tdA3CKemo6dHc/WvHcv42yEoH9TKd4Yi1mAEEyA2WMBuCdu9UC62K+zl5lECZYiee/akQSn4S/ijOFrigWkZX5dKEYvvqDa/v7L8J/etDA2N0g9pINEiJ1ZUektabj3X6GwOXnIY7Ewsvu8+xVWIersmY772FxQY5zGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(11063799006)(3023799007)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lwh4kD8vHed+x5AKudfEhufoPioI/LpN6bGgrwjTRCcXfBagsjDb7sb31cAx?=
 =?us-ascii?Q?FIh0Vh4yD6cLzHClRDlEl4vpCi00BPxq/m+CyjzOP7hX7xy3JjQPwch4/p6X?=
 =?us-ascii?Q?vSxS2h28Z7FYGiarMT/y0dTRtdgxgMGxWfJqE1E5iKPgazBxe/e1WgIIB7fZ?=
 =?us-ascii?Q?7bPqY1/e5MXR8e4/pG3M4ZXgbfix3tcfyKF4IAkP1EFg658nde71bqlmclgd?=
 =?us-ascii?Q?bugV5VAugfZOt0mEqQK4ey87MwystTwCfoNJ7ggm5NN3Aud9Rax7tPxNlbp2?=
 =?us-ascii?Q?Zq84vuzwm+nNbZo8/rVXOJZOtGdw+I5rpVDlk//kLPwbNqxNJBq2T0cb8FAP?=
 =?us-ascii?Q?6TEoxtuy45BWGK/2ILCRmQDy9LDiKEeUPp4EYsoNFdXaoJZh/7t34rUQWacs?=
 =?us-ascii?Q?msAWKDu56BD9lkJDzMIH8+ovVQE75clEk62RHOaH+5HXNryTOC+OC/U88HCT?=
 =?us-ascii?Q?KXeUhbLJPjRwKPxm3KBGtl+h2BUX/T40FlYLWG9AOmr8GF+fn/1SRLF2EoXz?=
 =?us-ascii?Q?sbjtL9QcBy3HRvGGoXroDzvYg9jygJJvUy3flqTkIR2hDwFdB9kMdm5mBBsd?=
 =?us-ascii?Q?YljJoxlC69q39ZH3VPBUvGl+f43tOW5b9lMKJvUSSvZojDSZxj1aLbLqWwPN?=
 =?us-ascii?Q?Hpl5F0p7ivqeJGxWx7hujU+MNBHzq7AH8R78BFOd5q6FLW+pzO6dKAreKxSy?=
 =?us-ascii?Q?2vfuE5H2L37kbQHSeDLGhNnz3q6eDn6c2ZNWYuGsOpFTajFo5/ba/tAftARR?=
 =?us-ascii?Q?cYGfxFczyJXElgh9Lfr71Izv63rkJeAV6ChUVZSlWT6YKcp6csrYFifGGsZ0?=
 =?us-ascii?Q?ijtGLKk+SbuZGizvE14HLtTYkR34wwbdia2X1rfmR7/IT46rTkkiiXp/hGon?=
 =?us-ascii?Q?ck/CHkXAXEKWfiy2q3tPFalq5AevioBZeZ73zGYJuz9MoDr3jHO1zH36EcNA?=
 =?us-ascii?Q?MqmIvAcMalNRWQrKF+UXZgTRdmVBwNSCCgk6ftpXWr0xk164/UvECMCPYnlO?=
 =?us-ascii?Q?NZ78qKBXwe/xKEHBAuqvqBoXA8XwEn6HZYSkLdfouo+0MPEynqtOYH0CSUq/?=
 =?us-ascii?Q?o9Vl/D9u4fDYz/yOXtnikMKGY4ZxYZoLMSSoEUdcftYm4m3MbYtbOsvaxAdL?=
 =?us-ascii?Q?o5V8PAV0ISn91d9VkzJrNaVVpoav/a66wYPySvSBo4Iyn9SVCgRfmUMFi7Dp?=
 =?us-ascii?Q?kM04zrPg1elAXEK6lDXXnssNZJpgCALwQpxHvilHXCah7pjuCsAnM+7HFgXi?=
 =?us-ascii?Q?me1+rjzZutiGlh5kFF1mEQWB+AS8JD6pTDG+EyJkS1C7wz5H8DeGHXw9iR37?=
 =?us-ascii?Q?vhzvsaRnNb8Eo/VVZOlitUVM0WsmUBqatEEfP3Rwr4E/sBo0m9ZtPyiRQEqU?=
 =?us-ascii?Q?SvLKinKJVjhcXiXrVgp0sZ6tdPRdxsRkqaclkLetHwwJtz8WjKb0fdd3Dp3T?=
 =?us-ascii?Q?eGtfnvNrBv/3qpRuDvTkxP7NexRFxCdvSSNntvVcsqMOBgAu4vRn/0zFbJI5?=
 =?us-ascii?Q?HbclZbNhNUfHeshrp7vAM7bo5OJire5UJwbiZFiOE0J3KT1RSKA08v5UKWvh?=
 =?us-ascii?Q?1IjKENUEVzbdYr2bssgQiFqT0R8JWqDxixJZYTW+pfa4gns/akx4gtBRMu+7?=
 =?us-ascii?Q?ST2lX3ZPYfqbH4l/2DWBt0Sc5LAkQJd4XSxW3N6kYy/vUeX1rhYY2s6AA3Vi?=
 =?us-ascii?Q?nf4qQQgj3AUqEfEbNRt01OyzKO20DzwHDr7O6GEbETlfU9j8zjuq3EjmbUNt?=
 =?us-ascii?Q?IKnPnniWTg=3D=3D?=
X-Exchange-RoutingPolicyChecked: et6OMUARg6QfMeqdMlScewopMRKDBTLfbxTbb8xFdmfObsef3kKOXEaVbeXx5od0EDV7wiKrZ7lyM1BM5tMYTuwOLCn5zW1ibnM/jWP8AolrD0YeX6nVHcYyn9yonDEND3mwhl921neExj9RDWS+dG+nPSs3yrMMfpT5KVt3biYTsOXXvF5vDZEl8S4CWgOFmNHKeFc1ixrA3OsNljlQg9vhzRO9kvpH2cvQrUjp8LKzfyU3FP2CGeTf3KUbND6EPtfCtB7l0gKtFrdAarE8Rm5+sqziJ13iVR959dPoxiFT1BAJ60Jy8OmsGefRJiW/FCu6kayOvxajfm+XP0Y13w==
X-MS-Exchange-CrossTenant-Network-Message-Id: bee4ad20-7f7e-4db4-197c-08deb5d08768
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 18:00:36.5920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2anbsi7vcVlxA4Ao0lE2PemUqYN8+q+K20wZdewjNsKglMCqOxGbD6FTDbx4kWN8cJq1BOZR5aoQrcTFsuTbZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9615
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim,msgid.link:url];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DD22F583633
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Gustavo Sousa <gustavo.sousa@intel.com> writes:

> Some of the parameters of used in display bandwidth calculations are
> tied to the platform and are orthogonal to the display IP.  After talking
> with the hardware team, we now have the information (and Bspec has been
> updated) that the members deprogbwlimit and derating of struct
> intel_sa_info are such platform-specific ones.
>
> With that, we are now able to make the driver code more aligned with the
> hardware by splitting structs intel_sa_info into two different structs:
> one that is platform-specific and another that is display-IP-specific.
>
> That change also allows us to simplify how we select the parameters for
> the calculation.
>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Pushed to drm-intel-next. Thanks everyone for the feedback and reviews!

--
Gustavo Sousa

> ---
> Changes in v4:
> - Minor updates to fix issues captured by CI; see changelog in
>   individual patches for details.
> - Link to v3: https://patch.msgid.link/20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com
>
> Changes in v3:
> - Incorporated review feedback; see each individual patch for details.
> - Link to v2: https://patch.msgid.link/20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com
>
> Changes in v2:
> - Incorporated review feedback; see each individual patch for details.
> - Link to v1: https://patch.msgid.link/20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com
>
> ---
> Gustavo Sousa (5):
>       drm/i915/bw: Don't call intel_dram_info() too early
>       drm/i915/bw: Extract platform-specific parameters
>       drm/i915/bw: Deduplicate intel_sa_info instances
>       drm/i915/bw: Rename struct intel_sa_info to intel_display_bw_params
>       drm/i915/bw: Extract get_display_bw_params()
>
>  drivers/gpu/drm/i915/display/intel_bw.c | 205 ++++++++++++++++++++------------
>  1 file changed, 128 insertions(+), 77 deletions(-)
> ---
> base-commit: f05be6b9858836632ce6b4839e1bda3a470278b9
> change-id: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be
>
> Best regards,
> --  
> Gustavo Sousa <gustavo.sousa@intel.com>
