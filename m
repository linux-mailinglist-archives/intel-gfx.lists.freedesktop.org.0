Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lSTONVIXLGriLAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 16:27:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4824567A299
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 16:27:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=lmEo6g9I;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE70610F557;
	Fri, 12 Jun 2026 14:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B0E10F54F;
 Fri, 12 Jun 2026 14:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781274447; x=1812810447;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=MNS6Iw41eroIosMlZYP00Tein9WUs1axGfhONy1kfwg=;
 b=lmEo6g9IyN1+DEsaYqLzyjBNDLbSd/uM5dzObK1PYhEDQ9OUAJar1ph2
 1uvDQdoTrjJTwzjfTnx7hBHK379ktaB55GUtoT+4ZimvoGZixviCtx2CI
 aYY/l6iOfcXTQtQY1HbSI8G+XgTDNG6D6cq6tPRZ6bfV5DP91jtxdPXNX
 DL3ANOUKUW8kHEatt4kB6jtwyaibx9PawS/sE536KZ3bq0bjscJyyj0PV
 7UH2uEX3M55QpmHMiZlfp/pAHL8kLvW/HEVkHdpwilUkluCIkWCjVzD6b
 zXVXljPp4KztlQYdvbRGuKPRUCS0usDIYcAh9smxyBIipXAlwidGxH9C8 Q==;
X-CSE-ConnectionGUID: OMJATM2fRpS3TgHFEOOClA==
X-CSE-MsgGUID: yD3ge3WwTG+INSIsmON5oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81116252"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="81116252"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 07:27:26 -0700
X-CSE-ConnectionGUID: AubY8WohS3iP30lB6Po+KQ==
X-CSE-MsgGUID: JcphWJ0/TJOuVwWCTU9ZAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="243902777"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 07:27:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 07:27:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 12 Jun 2026 07:27:26 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 12 Jun 2026 07:27:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OyKmQV/4Cq054dzsn1ynBaTXKKkyEjA51VphJoKKKQic8986aLTGxSE2R87sQxMtIAjl4oQd+MChWM2m7iKxbvQQVynZWkG2XHVyRc0bopu1fKsib/4UjviB2Uuttj/94ddkUF6BYl2h3hWNYO4zbDnj6gckcO4gjS0bjksTrd5nZLlkXthAxb5tJfLjwQpNe6iH8P/MfAclTen1jrkVerv6PFHFnfkkHn2DpjLye5lJqNAWIcc5XIVowIK0hdBBmw9KzcOcudUXxfoZrXIcrPM/feDytI8hp7/I/jlFrfFrA51xCuBdYLQz6WZH0AysvXjURlnfHipKfk1UAHTTjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IZK6kcP535YUZ0gcUlZ3EJISVSswhySfqjEUqpK92eI=;
 b=ZiIkGq7eTIBHjtkLkCz2JRE+5Dtkl/cZ8JDTFltDjYvrKAAB2UmKvudhgQMEZ7xuAzY50KagVXoSLyL9vAJuXUDSGjFoinmMxnUSXQW3S59W/MPZgnqiVADZCmsqM70nZ+Ypmbg+bbFmUMlIw8LtafK4PE9Rjq3rXIxZLu9foEQlSKdVsGX80R3vtTL/VInjYa/LpaKhmM4dY1Vb3b5IHpwWSXdTil2kn92cI/4rFuu2upSxKru44Eq3F0Xt2r8JV+oFdfrEYLVbxvaJXTLjePZlTYT03FsHWFm6oHXwVeOOHJpa4nBWu2OnYacJJyDguVjxKiTxPZKXiuqrSx6dHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY5PR11MB6283.namprd11.prod.outlook.com (2603:10b6:930:21::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.14; Fri, 12 Jun
 2026 14:27:18 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.017; Fri, 12 Jun 2026
 14:27:18 +0000
Date: Fri, 12 Jun 2026 17:27:11 +0300
From: Imre Deak <imre.deak@intel.com>
To: Guangshuo Li <lgs201920130244@gmail.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>, Uma Shankar <uma.shankar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] drm/i915: clear CRTC color blob pointers after
 dropping refs
Message-ID: <aiwXPz0u6HAgSg51@ideak-desk.lan>
References: <20260612035310.3013066-1-lgs201920130244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260612035310.3013066-1-lgs201920130244@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0007.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:273::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY5PR11MB6283:EE_
X-MS-Office365-Filtering-Correlation-Id: 7883ef85-a76c-4a3b-41d3-08dec88eb51a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|23010399003|56012099006|11063799006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: U3tpPOjQy9Qg+6TOqdZy8eXgv9hzASWyi4wtDpd7Wz6H2KmaNoBhR27QsmxIYlJ6wov+pfYgRpPKVaWRO56OPE9H2RMXoFsCx+jaX9428aqltWJ8DZCSVch0wzUi7Sp2+pHWOXsxAnXxPQcpqP876mlPzmMy9t2L4FelYMqhjvscYyDFx6XTerbNDNO+jmI0XrPCwhL7SyB49f6Olu4FniHR6CxsSJb0YTJOi9HXmoECaxEj6JEzo/HeIp1UKCAd2qoLiKuTBWOCuenrbhnYaIziHplpN2oyPsO3YN0/Qfw5WwhMip+lLW+zyJLL2NmkRs5lAAjy0OCZZ7QNYQbuAngKPQ6rUwn0w+APGegB14ghc8nMtO9mMCDXekYFACA9c3Itg/wxiqDaHYnbjUvEAppE6kYJgGUuw7nd0SsGSQzAUpXf5z3QGaApkJ68jnzxsTkwI1lElMwbYKgPSRu0HIavwinmvxmYP1Pn36c6lSOTeHQhIDKTt5D5Tat3Jz4QHom2Jc3ffW5ZHg9CCGz4rQNeICuw9AVNSFNwbrcBoQw2I7H+iJ4LOjr3R3BRgeM5fTs5NwDdDQaM9qn6+piXLyOATl9MOLQvNIyggxtwJB61yx0wtOgopVqEFyt6VloCBieiv5bcw10NV721z2WdfwRWC8N8M8fpmVHsvJjt1KEkgV3blCNAJIxu7oLfrQmc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(23010399003)(56012099006)(11063799006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Zsxguk+exyjkkuDflZm5io0JmCtNFJwXaL2F8oZHtF78XdiNCYP59i/pzPyC?=
 =?us-ascii?Q?RGfPJ5R1AcIavmAhxHqePFAmAq5kn4ZAl7cfRU3aAgglmv78GcZ8ZG5TwVnU?=
 =?us-ascii?Q?8H9VF9CgHi6PN36DrROKAsURHHx7+aoWQKl8xv6nS/IzuqeJeS0Gp9P/KAiI?=
 =?us-ascii?Q?P3Nm9vFZOgDqBSrnHq+fIiDtxggeRs532m+ptIvKFRtUWftquxG8B38nBEWE?=
 =?us-ascii?Q?Fs3FTAPK/4CDV2YDvDJe3aq29yksXNu11vXgcryMpob1VhUWllI4TbX8roQM?=
 =?us-ascii?Q?8Cix8t4qoxnKSWvxkakEXw2cBVegUADOXp/UohWVHpFrkz/iCvUV9NFHlBbB?=
 =?us-ascii?Q?uf9sfblAF0RYjTJjE3RlSiVF9lQlgy7N3vGf2nhGnQ9SeUOYxe96QAEyl0sn?=
 =?us-ascii?Q?nfdYKVa07bTpAznSIvRjVnjmqEtPj2IyCMxp9iMUVIrAG+geKXSI0Bv8Cyro?=
 =?us-ascii?Q?d1rS4LKL6qxkOduJbtRCnjnkiiRU7xB2jrBvjQYnhAJQQGGfgz0diRdZa5Jf?=
 =?us-ascii?Q?0l+6OW7zXTf2Za8sThc85xwVNu6+jsI6YSNvAdiMzL6wWP8T2EATYZDxZwvI?=
 =?us-ascii?Q?Ha4lzuUPOszInN1EVXV5rVelVCmSahlwjthQVcAlD+ETbkkd9df95/4SO4Vh?=
 =?us-ascii?Q?M2r3+EH8kMVECe6n2rDSxZLaaHQxoGDCx/MzLfkVjZe+ScmqMG99V94E00qm?=
 =?us-ascii?Q?99wxNbzYptViibJtfOcwUqeH/YcIGTXYmN32AN2mQwgbqjBwuMv93ahG6lu/?=
 =?us-ascii?Q?N+ym1AlZiiTTYOB1fNbRkiHDHr7SuFje3LCirHUuaOXs66TkrJnTLmIZrTF4?=
 =?us-ascii?Q?+e66tn/mU5lpSfIZF9M0ghdD927xmVnLQMrkKJx21wZ6YdPlDxBZ/sEtIWGv?=
 =?us-ascii?Q?LqzKPhDjvy3WX9+xtL3oSsYYj9e5QPGOtjM0qU3mWN2VSw6Tj/xyKqQckWwn?=
 =?us-ascii?Q?+exIflKtt3h3t4kLyJd1rxjw+0W6V5ezTUeQb0zOX3djHi/fEKoydTZS2se4?=
 =?us-ascii?Q?3Wc/f+rHhVhseTPXQWjp/ggipaWX2EzSpH5BBlcKvI83NSntLRphwOqFf/qt?=
 =?us-ascii?Q?PQhhQ0ubv7LSumGecPPgtEWFyVH8cxEaPX8Hg3VF7HW/Tp2dqArFazGamige?=
 =?us-ascii?Q?6vmzIesCtlsWyxxxHSDcNR+PTs9TMChMSHZm/f4ZSoN5XJXfbUctjsoTQC9O?=
 =?us-ascii?Q?JcaT5l7jxfcum9rzFn6xtMig31unJV47ML1OXjPrr0blsnBGohScKAjjmWh+?=
 =?us-ascii?Q?7FQQvQQn6f4f+ukKXZ7CRb50K4cw/3EV0+tzMa/J/V3i1AmsqMGecvIsbGzX?=
 =?us-ascii?Q?udL6FkXxMVbR/Zj8WoZU/lYqF0OIsEs2KuZJQi+X1gwwd3OHJ5jHWLqGYO4c?=
 =?us-ascii?Q?fND88FuIWoGVitIDPqIBwmkLwM7cZJMfgs3eAv9Eg1LlnfD6UK0gRndOi65r?=
 =?us-ascii?Q?1z+94Fk7M3iunxrgtO9UZcWEMfDcF/0uNAkxLxSVOC6Letp8HClmIBJmoh9r?=
 =?us-ascii?Q?56RIVqqwID87i7dpXa9FmttDfSoE8q3wURFLd6IRMLyZUUy4lOp+4PsrMCv4?=
 =?us-ascii?Q?wF2AVDpsEa5//4V37vviY8bjaK7VlLX+r0+CADmfSB63gTiQ6p6Dmgv49ljU?=
 =?us-ascii?Q?d6j+JJtX6F3XuBT8zNMriN7apIjbZOgMPTWCyCQtLhMStum85O8w6S2VIxm9?=
 =?us-ascii?Q?GBtXGoYVVFbqkQPjg4/pLYRZO3qpbahn5Yse7ljquv7VTkst2gqlJUn5vik8?=
 =?us-ascii?Q?+WepghMBZQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: Rh5LXE8/dzkuN5qeYOmyVI1DFYFYN+z1RxVTmzzLtKJOXoymamJQudUBsCiDTLgq+2uir+A0zRH3zZ+0A1H2bzLQglGwRpa57HEeyJB1aT4eOZOpuujJTRTi0vFo39ULVkx1ljBqlZ9jiRn1ykl74GtRncEYJdimmsrbIwd9Uv5aUHYbUfNvAhS9/iIOXOfhi691rTyPQ3U321YwBFDb8xazzMO87NjIUvrATRJcVwVxej84k95dMw+lTZocM4sPQLcXnqJyIg3ChSt4Jv/czOMjP0hjblE5KhWx1DLlSw8NWlcUX8TbOf8oJLGVQnxv8KCvSAailRBsSAL9hUKA/g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7883ef85-a76c-4a3b-41d3-08dec88eb51a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2026 14:27:18.4175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cwMjgIXeUp72qH9ZdBatDMkpmDA7AtzmW2lBzgwjcHDwJTpKaZGJgT7SU16IHmXLK+IwdYf/sNImJsO7IZFwZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6283
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:replyto,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,ideak-desk.lan:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4824567A299

On Fri, Jun 12, 2026 at 11:53:10AM +0800, Guangshuo Li wrote:
> intel_crtc_put_color_blobs() drops the CRTC color blob references, but
> leaves the corresponding pointers unchanged.
> 
> This can matter in intel_crtc_prepare_cleared_state(), which frees the
> old CRTC hw state before calling intel_dp_tunnel_atomic_clear_stream_bw().
> The latter can fail while looking up the DP tunnel group state, for
> example with -EDEADLK.
> 
> If that happens, the function returns without completing the cleared
> state preparation. The failed atomic state will then be cleared by the
> atomic core and intel_crtc_free_hw_state() can be called again for the
> same state, dropping the same blob references again.
> 
> Clear the blob pointers after dropping the references so repeated cleanup
> of the same CRTC hw state is safe.
> 
> Fixes: fb69d0076e68 ("drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state")
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>

Looks ok to me, thanks for the fix:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
> v3:
>   - Move the blob pointer clearing to the end of
>     intel_crtc_put_color_blobs(), as suggested by Imre.
> 
> v2:
>   - Keep the original ordering in intel_crtc_prepare_cleared_state().
>   - Clear the blob reference pointers in intel_crtc_free_hw_state(), as
>     suggested by Imre.
> 
>  drivers/gpu/drm/i915/display/intel_atomic.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 71b7325917b6..a16e1cb7d41e 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -289,6 +289,12 @@ static void intel_crtc_put_color_blobs(struct intel_crtc_state *crtc_state)
>  
>  	drm_property_blob_put(crtc_state->pre_csc_lut);
>  	drm_property_blob_put(crtc_state->post_csc_lut);
> +
> +	crtc_state->hw.degamma_lut = NULL;
> +	crtc_state->hw.gamma_lut = NULL;
> +	crtc_state->hw.ctm = NULL;
> +	crtc_state->pre_csc_lut = NULL;
> +	crtc_state->post_csc_lut = NULL;
>  }
>  
>  void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
> -- 
> 2.43.0
> 
