Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cO/mJxko/GmXMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 07:50:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6834E338E
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 07:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4960B10E02C;
	Thu,  7 May 2026 05:50:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PNEUKlW+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 458DD10E02C;
 Thu,  7 May 2026 05:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778133004; x=1809669004;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=trgXmQJ/SKMKWuowEC/oNJzEsqiViR3y3FZhuvEUQnM=;
 b=PNEUKlW+W71W5Ha7pDybcoCZCZC/P+jxDIiem4Yizq05l10zEXQXAsGv
 pEIEW8XoUgxtaE1NfJWOlJyKhKPzrqAa5gb35qcGwIshJ6nP0HPSbtU9Z
 DLah8uHcUA7w6PgcU/D+7uq7/NEoqWeWMLkGrGkQFjrG2CqF7bBbkSqfa
 VQLbuWOuEqydjfpqvCaeErkz6tCk+nCq0JgHX0aIGwHmyMxE5nNKuUd4H
 qt5bfEmQXGYhWB1kndG2jFDyUi0cSW9VFvFO4XgH43WWlv7kGFDbTpWDb
 Y+lZNAk3nfgCyYh8n8W/kfyCBA6uyDXzst4V+l3Me6b6IwJlb5qGxnMHz g==;
X-CSE-ConnectionGUID: VuOgM+iTR8W5xsCU81sPTg==
X-CSE-MsgGUID: w5mKUuI6T4ew7qPIlHzrMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="78969654"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="78969654"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 22:50:04 -0700
X-CSE-ConnectionGUID: Y9g+6ikhTEapj77rz0WYyw==
X-CSE-MsgGUID: ZdgEVYuLRm+tp73PIOWjaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="241344174"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 22:50:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 22:50:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 22:50:03 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.67)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 22:50:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LKPMvmQGMiVL8/onx78Oe5QLSq0SEv2ZBi1lT/l55+v9o0EZ3IJsgj0MQkEi2n+jv2MJl+g0Y7ulTBdnaKAP16gCxjzf3CUKOCJ7RYI8E6PCnMn9uN3fKu1hqA/ElxyhHk+tw52tF1aI9EfxXAsIlYXTHC1e8e+epl+DAyZL8QFdgFdrMkxGerkGABKW74VDKy8f8AakLL/6TI8XFUF6N+kNEE9kvF+we/lyU/7st7hGxPWigq3E41c2EdCP9iOlS7V4Xz76zY2fCSOuGt8R+ipL7kqs5k/r7mv7gfZdVe80ENqLsD+ptiOPlq+aZslDddnrO/cWNuS97dL0g7aY0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/r+F26dZLch1IYBQ0wBbs8wLJJ2ef3FifFvDWHnSZuY=;
 b=SsIht9hpW2HFm7ulh8verXStQaEO2oCci2s2iU7o1fXL9d+pTBxAb31WuGJ+YXU2/ZFr1LRr/jaoW7wP/gXRedUfNlk2XD9M5tS0GzkzRwDuAkG47J/ls42NU8Jj8U8t7/X0gJ+fFeRPeUIKjUSN5RaxNkqE+lcO4CmFNC1uf4iwxtnfxMr9WLitm6De2xdMC7eRBkG2yaqCC2MH2q7tm0NuEnfciQR+VONBQbR97BR1XSf8i8bFeyg1f54i9PWOnpojnx0kxnnyrhSvAbYWEBlCayisfY3NYCDdpaBm9BqooY6M+fC2FzOHiXBCpFbjSzWV0x2ir1Q+hGbVq+Jf/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BY1PR11MB8029.namprd11.prod.outlook.com (2603:10b6:a03:526::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 05:49:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9870.023; Thu, 7 May 2026
 05:49:59 +0000
Date: Thu, 7 May 2026 08:49:50 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin,
 Charlton" <charlton.lin@intel.com>
Subject: Re: [PATCH 019/108] drm/i915/dp_link_training: Track link recovery
 state with an enum
Message-ID: <afwn_kmHV0-lxDZX@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-20-imre.deak@intel.com>
 <22c8e2d9fe291f26195a71d4f77c62f20dfbb330.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <22c8e2d9fe291f26195a71d4f77c62f20dfbb330.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF00073CE5.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1c7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BY1PR11MB8029:EE_
X-MS-Office365-Filtering-Correlation-Id: a59cea8b-6ade-4b5a-2eb6-08deabfc791f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|3023799003|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: h5Aj9FLnreAYdHxzCII0vCd9Oslq4Hk5oM1jCUdATmh74eoMgufFRehfrgF+zeRRYroujliJj6CdCDexAbT6mVij5VYjCAAMa5pIJ8RyZyM9E+NBF6HI0iK7Q8Q2h3APf6Tut5Jgnk1g6R/Mq0A73DNT56/y9h0saHa1SU3sGe3EiJ/Ln3DsapbtrgTW0AGIadNRygAEpxmp2ViWsuIPDw5QMf8BX1F6zTYLav8iK/SRCAyG0MnQI17nXq6ZKmzTIG3ig1QH/l9BMOYmRChm8W+ZPiOos5eyj00UxTm0M4v+FdeWvmq649G+oLbcZfWV82RkYbDS8Gw4/cJW6/ICDvC0MHT47GAkLUVOPOL4gHuxJXadtfPDZkF5vnY/1TXgclvZKTThzXOPpr1HL3Nd3w5lGzNpyJNMBWhc4C/rBWfAOYowGGlVSBA/4qcwCYcWkDoUldqD5NuFWqkLYG8wFkRMb956ur9aLS+Tg4LdvseyFWswOO02KchIqP0DlgD2ncfccvk4VjV5U8GEAHd/riFhKiyT36/PW9LqFjYNvjk7dJgpTDHPdI/VE5O8tZcUJajXh1jr4lDkOLZMUcICOczvaFKfQE77/hiScg3PVOG3VN+NJd93uORCugiyueZpIYhx3ZeWrqR7o9uAEPyLWlvJ6FO3dcyP9KSX7m+SJFoztSYEv1PNhlm8gOLkF4HW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(3023799003)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?VdHW62alxUFXZecHMX/3AF9l59UZE/+/OMdQplmF1JncYp+wA9+Srma2lN?=
 =?iso-8859-1?Q?Q33OmifftEijerbGC46CWj6R/9t0rqmu44EY+AFEhf6+t6FWmGpP+cVdS3?=
 =?iso-8859-1?Q?tY6KlPxgbkUbW7hCvmu3z/fZ/enNt+TZoNnImjJvrmoSAjrzT1XptB3QCR?=
 =?iso-8859-1?Q?VRiF3m4fqCsNvrFq2MUCRrh7NXXLk4+k5/m/VzHbhAMLeP3MF9mK+MXMrU?=
 =?iso-8859-1?Q?wkSQ+V9n5ECVifecGxIiaMujpqt2nwl8g7bm64Yht+jRz7KC6lIvdDKQU/?=
 =?iso-8859-1?Q?vxZAnhPe83gBSvvtXIRsAQoRd27neao5BIPaLdCFGalMgoRAfnh6/inDLK?=
 =?iso-8859-1?Q?DSIXbX62RlXn8RcWapfVjDFvFaaQ/7U8wH+dSyQfOSVMKezTU0TaFNM9bm?=
 =?iso-8859-1?Q?7x2oCqBKpmffvBj6UCbMNvRGeAtr4RAyesmJ5ZjRCPei8P9fNEHrz97bjI?=
 =?iso-8859-1?Q?ccIanx9/V4KtHGRR2H42b3fKTtNQdMpZGeqDemhBmCX1QPG5joyqz12/4Z?=
 =?iso-8859-1?Q?BpAyafgbRK0jGlSQUDX6dE74cJIAr4acPRodTZk0Jr/cTeBISJk8M9Vy6R?=
 =?iso-8859-1?Q?WVwZv+aHPh4BBKYQOHcWR2WtMUbpS45UHK+thjBX7QPXBjKfyYREZhxWBV?=
 =?iso-8859-1?Q?MXC9TmyLXbVqTPyyLy3N+MjN05wBWqYBzMrjKwdGpD60idoG92jj4IypOL?=
 =?iso-8859-1?Q?ZXNHcApupdbF1K6EGpWvazDTzgcTzkSpuzAk9MHc9+ZxxrMebhE6hePQ1/?=
 =?iso-8859-1?Q?Oi66Ia3khqyuzARb/GF3ZUuBrSrVcj9C9RDzzWOODg89k6ZvWkeS3RlQAQ?=
 =?iso-8859-1?Q?gRyXXxEcxQxYlp4258MfRdO3d+2Rw+U0q8OVCxIAHhKHMqFJv/97o2U+Fs?=
 =?iso-8859-1?Q?l/bMOyc/OvH9VHLs/AdByvDwdgIdCbs8Q8h461po99sBjLldZmXbKdkCKO?=
 =?iso-8859-1?Q?IW/2FekvQysjfksTs73b8k/aqKAEYj3Q2gdc4J6Zre3DHF6GEjtzsW8te/?=
 =?iso-8859-1?Q?mDAnWdltp5CQsIzttch3t2OTAQJeF0wdpYXlLzbJcQEFMxlefTzLINiVkg?=
 =?iso-8859-1?Q?iMY27jcHb9zmjD+peyCy9hWxFweTHptwbq8nu+onSad2IzR3hyzMjKXNDf?=
 =?iso-8859-1?Q?51zEzyoRXUC+TWhWJEctym+S8U6wpcOd+KNsXurz9zuCCDd2PwUv8MEb+k?=
 =?iso-8859-1?Q?MMPY9l2q6nQLHjY56LborkWE3McKF9BByEloCy8wKwDfUO76mADklv1rE1?=
 =?iso-8859-1?Q?/II0va4e/nCru5RySBmwr0mMWKNdLtziS9El/WQwOiVwtVNJHngjzDjl5Q?=
 =?iso-8859-1?Q?yAizpcrmPt8ZMlGYAJdJIy9nJD3PRHDU7yK54/ytTu3wbqLmSebrWgYev6?=
 =?iso-8859-1?Q?yGq1SEBfPCVhzIqbdasy4gjlZylen/fdWqomHzgZYIdJGId59DCOnRMlzR?=
 =?iso-8859-1?Q?HXhNXGCN+tViYEdXr0x50xGk7AaGKhlU7D2AoX3ebzHMcHoPEB3V9if6GM?=
 =?iso-8859-1?Q?rHnuQ5EVfqQoJZ8L1a4PDVsryaVpdyk21MWSdEhPzTwKt9eooaQkBYI1wu?=
 =?iso-8859-1?Q?ffNzab308LGkyPl8d/fGYUEMpMesxAjFgTKfQGgNvmU2uwpwg9trMnCRfY?=
 =?iso-8859-1?Q?oUrSuMRntwU1d4RnqkZQRdEjWB7JRv8e5uP/mIn78JIDlei3zMgN3kYdSl?=
 =?iso-8859-1?Q?p/7IgHzK56VkA9cxffXcBfb14UGqxqu2FSv3kqmkzwKI0BaN3pv+FPI7cu?=
 =?iso-8859-1?Q?3eIyhlUNX/XRsdIEmoWkquRja9gsejd9ZERB5DitiinN/nXhtWLxUcdv7N?=
 =?iso-8859-1?Q?t4sij8XTcQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: Rnw2SABefnDZ4Jo85XSfTfccSVH6dqIyN+1TXggXxlRWDljH2XuPnOdekUPXwVh552WsCfreuvVSaRCCajN6ZJUemadTIdtOaJ9qnFk/jeS3vAMW2nUDx+WUgZGaGLEWEi1gyzM9F1+bLijaw9X9svKICY5sgujlRR/pwNJewHzurXWmMIRHsteG89vxKUUv/KoesUd1mxC5yS7z+/lrHfUCgGuXwOmV0Qfx5cqoqqf9rgp60kJMlQckHzZqYaTTUawnk33Ep/QIgEqZObX53n+QZE01u+9RYpY3Dre1JnJAp7swp9ELLcTpknktUfGPeB31Y9JoHpVi0JSNMHWYMA==
X-MS-Exchange-CrossTenant-Network-Message-Id: a59cea8b-6ade-4b5a-2eb6-08deabfc791f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 05:49:59.5324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MjN9CBtw1Q1fUb130Z8Wu31Fe8riWwif7/QGpIumcAnsy1bjS2Dn5PFZd9rwg6zzeyqFvfWuYNpaggGIMlmJ9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8029
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
X-Rspamd-Queue-Id: 0E6834E338E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, May 06, 2026 at 11:22:57PM +0300, Almahallawy, Khaled wrote:
> On Tue, 2026-04-28 at 15:51 +0300, Imre Deak wrote:
> > Replace the sequential link training failure counter with an explicit
> > link recovery state enum.
> > 
> > This makes the recovery states and transitions clearer: idle,
> > automatic
> > retraining pending, and automatic retraining disabled.
> > 
> > A follow-up change will also move the retrain_disabled flag into this
> > enum.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c | 55 ++++++++++++++++-
> > --
> >  1 file changed, 48 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 90bd1b0f1ab7d..c44416e0e328f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -61,14 +61,54 @@
> >  		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: "
> > _format, ## __VA_ARGS__); \
> >  } while (0)
> >  
> > -#define MAX_SEQ_TRAIN_FAILURES 2
> > +/**
> > + * enum intel_dp_link_recovery_state - LT recovery state
> > + * @INTEL_DP_LINK_RECOVERY_IDLE:
> > + *   No link training failure is currently tracked and no recovery
> > is
> > + *   in progress. This is the initial state after driver
> > initialization,
> > + *   power state transitions, sink (re-)connection, or after a
> > successful
> > + *   link training.
> > + *
> > + * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING:
> > + *   A first link training failure has been observed and an
> > automatic
> > + *   retraining attempt with the same link parameters is pending.
> > Exactly
> > + *   one such attempt is allowed before switching to userspace-
> > driven
> > + *   recovery.
> 
> When running Link Layer fallback CTS for DP1.4, we noticed UCD500
> complaints because we retry the same link parameters. In fact, we used
> to change:
> 
> #define MAX_SEQ_TRAIN_FAILURES 1
> 
> I expect the same complaint will happen in DP2.1 fallback CTS.
> 
> If I look at the following from the DP2.1 specs:
> * Table 3-31: DPTX Fallback Mandates (Normative)
> * Figure 3-12: Link Training LANEx_CR_DONE Sequence
> * Figure 3-13: Link Training LANEx_CHANNEL_EQ_DONE Sequence
> * Figure 3-14: Link Training LANEx_CR_DONE Sequence for Maximum Link
> Data Bandwidth Policy
> * Figure 3-15: Link Training LANEx_CHANNEL_EQ_DONE Sequence for Maximum
> Link Data Bandwidth Policy
> 
> I do not see it retraining using the same link parameters.
> So, do you think we should make this configurable, maybe?

This patchset keeps the existing behavior, one aim being to document in
detail that behavior, and any changes to the current logic to select a
link configuration at any point should be considered only as a follow-up
to it.

I have a doubt that a rigid/fixed sequence of selecting link
configurations after a link training failure, based on the above
interpretation of the CTS, is justified: that selection has other
conditions besides the sink's requirements: the source may see a good
reason - specific to the source - to retry a link configuration before
disabling it. In any case, I think considering changes to the current
fallback policy should be considered as a follow-up to this patchset.

> Thank You
> Khaled
> 
> 
> > + *
> > + * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED:
> > + *   Automatic retraining is no longer possible. At this point, a
> > + *   fallback selection is made and userspace is notified to take
> > over
> > + *   recovery, performing modesets with parameters it determines are
> > + *   required. The driver then selects a link configuration from the
> > + *   remaining fallback configuration set. Subsequent link training
> > + *   failures trigger further fallback selections and userspace
> > + *   notifications.
> > + *
> > + * Describes the link recovery state used by the Intel DP link
> > recovery
> > + * logic.
> > + *
> > + * See also:
> > + *   - link_recovery_autoretrain_pending()
> > + *   - link_recovery_autoretrain_allowed()
> > + *   - link_recovery_mark_train_failure()
> > + *   - link_recovery_reset()
> > + */
> > +enum intel_dp_link_recovery_state {
> > +	/*
> > +	 * Keep the enum values ordered from least to most severe
> > +	 * recovery state; helper logic relies on that ordering.
> > +	 */
> > +	INTEL_DP_LINK_RECOVERY_IDLE,
> > +	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING,
> > +	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED,
> > +};
> >  
> >  struct intel_dp_link_training {
> >  	struct intel_dp *dp;
> >  
> > +	enum intel_dp_link_recovery_state recovery_state;
> > +
> >  	bool retrain_disabled;
> > -	/* Sequential link training failures after a passing LT */
> > -	int seq_train_failures;
> >  	int force_train_failure;
> >  	bool force_retrain;
> >  };
> > @@ -1260,7 +1300,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp
> > *intel_dp,
> >  static bool
> >  link_recovery_autoretrain_pending(struct intel_dp_link_training
> > *link_training)
> >  {
> > -	return link_training->seq_train_failures == 1;
> > +	return link_training->recovery_state ==
> > INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING;
> >  }
> >  
> >  /**
> > @@ -1274,7 +1314,7 @@ link_recovery_autoretrain_pending(struct
> > intel_dp_link_training *link_training)
> >  static bool
> >  link_recovery_autoretrain_allowed(struct intel_dp_link_training
> > *link_training)
> >  {
> > -	return link_training->seq_train_failures <
> > MAX_SEQ_TRAIN_FAILURES;
> > +	return link_training->recovery_state <
> > INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED;
> >  }
> >  
> >  /**
> > @@ -1299,11 +1339,12 @@ link_recovery_mark_train_failure(struct
> > intel_dp_link_training *link_training)
> >  {
> >  	if (link_recovery_autoretrain_allowed(link_training))
> >  		/* Move to autoretrain pending or autoretrain
> > disabled state. */
> > -		link_training->seq_train_failures++;
> > +		link_training->recovery_state++;
> >  
> >  	return link_recovery_autoretrain_allowed(link_training);
> >  }
> >  
> > +
> >  /**
> >   * link_recovery_reset - reset the link recovery state
> >   * @link_training: link training state
> > @@ -1313,7 +1354,7 @@ link_recovery_mark_train_failure(struct
> > intel_dp_link_training *link_training)
> >   */
> >  static void link_recovery_reset(struct intel_dp_link_training
> > *link_training)
> >  {
> > -	link_training->seq_train_failures = 0;
> > +	link_training->recovery_state = INTEL_DP_LINK_RECOVERY_IDLE;
> >  }
> >  
> >  /**
> 
