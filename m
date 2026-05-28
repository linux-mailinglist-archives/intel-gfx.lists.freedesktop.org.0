Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AUMKmJBGGrfhwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 15:21:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D89F5F2A56
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 15:21:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A92D710F17F;
	Thu, 28 May 2026 13:21:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cf72mu5D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AFE510F17B;
 Thu, 28 May 2026 13:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779974492; x=1811510492;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=IAUNks95YsYZ4Z2GNsS4mxj/9LV/01GaZffyTpX/sL4=;
 b=Cf72mu5DO2BALVl0O0RpPX7kN+xUkBImX9je7Ec71tbB3WLBgp+XzY0Z
 rWA7xICXlWFPjLEhXm/epJdhvaSOyQ6HYHcZDKxLxJVGZVR0Ccd8uCFR6
 Rjo+7d1KzNDscho93ppGXdmUdjxZS0372ifHIeY9nxgS9yCqbfSaoy5fA
 uvQkSYmc96qJFl6wfBYLQLXYFIrF8tGmgcDKWtIab++6ixL3u9n/IgMAq
 lPS2WvGjKJUQaFcI20Yyl/QxGWGzNHprro0Q6aGK7i89FiCPA/7t6CUFU
 FeF7XA1uDOfHjgLCkqNd7+5FbT+yi5VRzkPUUrLzGRnvQnS6lWpjrNwzl g==;
X-CSE-ConnectionGUID: Z9tToIfKRTuhwF78SCtD8g==
X-CSE-MsgGUID: NIPnqiJBRiqtFQjRlIK/4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91385654"
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="91385654"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 06:21:32 -0700
X-CSE-ConnectionGUID: deOvt5PxSj+Ofoy1ip7Scg==
X-CSE-MsgGUID: I4rapnHvSUa/yUY+NuYgyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,173,1774335600"; d="scan'208";a="246577372"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2026 06:21:32 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 06:21:31 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 28 May 2026 06:21:31 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 28 May 2026 06:21:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JfWHe63nANqVABsE7byIdF0Qd6wATnjXJzZOaMoz45E1J8bI8RqD6utnUYrV7DJv/8oiUSQ8pvM4mB25rvNazdGza2Fz8itUaEwaJHKwcfhuYZ/MdWRWe1nUc8Z7luNFPsOOgX/Y1KzZ39Tll5ObiES33zCfwpGClhtwMFjfumRI0lW236cJUWBbOYRydGghGcyKKcDpuaQNgdchyfUeYfldvgbKHWhZrtjRKttfzneddOqVtg8Tc0+OrqeCIhIPPDF6inXkK2RXoJMhuueNLWYQY+EqTre5GNi3lLluTYNwruFV/3BgYRnvhdFi0w1H+cSBF0MSC8CktivZ8zhXoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4YBKM6kvzzMEqZdXo2jAdr+zsBS49ai9kyzmPVaJt8s=;
 b=axzEm4CAC0PWB2+/wDJ2t/7GuCLBymYsuFnHwNmwYVawprDEhIf1QJSQsdR0EoM0YEKVtUE+pH492JWpkpvUeAZSXzsRi72ULPGMlRVEF1NTspoqJas08KENNUVVF252LnGGA1fF6HJ8iUm3/cQQJV250WRqNf3xLUcaYH/Z9gsyuUzHoXGCop1XiCXkZZKNL++ss+UkMXXheg5orOewUtbXE5aKBAWqrR7GVO00dFXXoUr5lJsXGHKFd3pzncAdM1sbwlzo9EoxjY6hOGT5tVkcUDUE8/A9RAoPWzqg26voueLNlC36xUraW4JyN7bRs5K2W3lyM+0U3CKbX+m90w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by SN7PR11MB6677.namprd11.prod.outlook.com (2603:10b6:806:26b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 13:21:28 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 13:21:28 +0000
Date: Thu, 28 May 2026 09:21:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-fixes
Message-ID: <ahhBUt8fDqjB-mQq@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR21CA0004.namprd21.prod.outlook.com
 (2603:10b6:a03:114::14) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|SN7PR11MB6677:EE_
X-MS-Office365-Filtering-Correlation-Id: 92e3d8bf-f3ab-4617-7e19-08debcbc068d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: bYW59BIB646tzvTlbk54nedseqm1murGwRizLAfFVxbEF5Q4SBhcHB1ICw2kLII20FhgWkyapCPc2EmnRRzZSrpUKPlNRRD3FX14SqX2DgIFa1VuHkrPvrozQzopMRdqCQXZ5noK4635CQyK51VAkquzvXteal/hE+SiKb0icWCGQuGrGqPtQb4e1iHzzeRiezToORd4Dn9J+HEjhwcXIKVrGrNZQLSLritceYX5lzM3t7qIGblFoaH+G34l4Fn8ED2Z0sG6UIeinAMNPxT9dAK+ZOsOCU5tmBsY/kWZPfq7Noxdxmt4x/HaNpvwHceIcxXpomxtBNv/HP7kzgmoH5AOiCzlPLDvq9Xbw1NPYH8HsnYTp/0wPrdmmtwaMir7/nPI2KfUKReKy/hMswRI5XJfagsrX7lddITUroXyS6zc/IgueitQVQFUfPkQHEOWwPl/Wji6w1db2k06dC6ccqZsPdl4HgZ54x2wc/Qcq6b8zTbCYTdziSgBiwfLDAtN3mx8O1RxEXCPJywjgrV6d5W4ECRTx8Yr6wAzrUwi2nNIHj6/fBKJdYkS0Xemq4ikLRuWEyTKCPSqOdzuaHctYJKcMh21BjQ6fd/LgwAbHVYFYQx5I1BZ4daoBUdilXW3GHxv6JQcLJ3J+lsqMA8dRg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LYXgaj8Mwpi9hE8zQQdOogH/8l27vLM0pNbYcWED9V5D3JzQtCOye+zxF07d?=
 =?us-ascii?Q?X6He7R3+PO+mi5Hxh5T7yNWztgHUJ8cbFvnnrc8o4J/LJHsaRtWbaGAvX06I?=
 =?us-ascii?Q?CUj4tCfCxh8/0+N6R9/sS7DnZ0X1JTnwlWam2fFyJX2mobvg2Ko+Yv9PlBir?=
 =?us-ascii?Q?HZFF/mP2BD1X+JkYWXvdscHu3Aa4nbvY1tA1BBbxtsVYwnH1lB+EgA1e8Kwm?=
 =?us-ascii?Q?K4F/kktIMcCtUSjBL8PDImsx4LwpG2R6O36RaRtjCvCn5X1UHc1NdrDRRtP/?=
 =?us-ascii?Q?Lr75yinxKIBc1F1tgvitKxYSjSRLY+M4HDQGH7yfQFqBdoP87llTefTWGztW?=
 =?us-ascii?Q?eECOCmqzHWPongni9TaNsGKSyZvRJPGvt/G6jxIrZ/fVEHlskIrqHpNL6kiw?=
 =?us-ascii?Q?fte/N76LPSntmDRNJYzTlRzzqrFeeXO/OTcJ6c6N44j5izT+TQgctO92lgJ5?=
 =?us-ascii?Q?igegScZgJ/le+yQK1PmUGPUogdteqEQkteN1HWg8sno2VjF/mKWNbmhDkDS6?=
 =?us-ascii?Q?x77PU4J4Uv7kDEjT7zu7HXDtFTpVoWmBhMbHM+EMm++wmeYcaRRmgWKLcq3a?=
 =?us-ascii?Q?Z88iBONxyXyLQBlDLniZ8dNjA2purKvgHNLUMFuZMIKzty56wRT2m6B/7V4K?=
 =?us-ascii?Q?MWkyNLntfZ1AfMrnvgZ2Yii/WU7T3dnC+LA8K8O8MIEZ9gWRG+JP8VbNDu9V?=
 =?us-ascii?Q?LVx5uh9cEsy2444cWajFRtDEgpsuQPLIkn9ZgjjWFwDEz5s2XV/LDiWJn/p6?=
 =?us-ascii?Q?HhxL66ZoV1AnQpDi95ezztlo/tgZdnDUtTn7/PWNcv+iQY09OgrVTs/89Hkr?=
 =?us-ascii?Q?ND9RR7r2bFm5Xdh8gA15o1g+NCNuhjbgkTN37ZCgOmLtEltLRvi8eJT90piU?=
 =?us-ascii?Q?de+Xg26dIa+/AEbO3v/KqI48GVqvUiFlIUTcCwVO0BsgPS4drxb/CL0/n0AT?=
 =?us-ascii?Q?DOZ0qPK3wNCLU628gSIfcLd5Rhb2KuWZEm9BKRjXU1RvepVg4ixKaHqbMYsh?=
 =?us-ascii?Q?XItcHMRk6NWyOyeFbBZ3xOOZyi9RnO8kxnWGXh7vucJ5BXiWfXitCEy8pG+w?=
 =?us-ascii?Q?qnM4XFXe/7e53puT2iu9r3Arpqif+Apz4dBJTaapJprzRB19o+NmOQXFydeS?=
 =?us-ascii?Q?P5D1+PZMyC5joGkY6BOow8WK+ugcnmRkQNxFD/g6p81Z/Gm/y0l6N3rhzXa3?=
 =?us-ascii?Q?ASG81qN+H5dGz2ePYPwIdwRQuWs87k0IV3de+3na/7g5Ws4kEvWMid9V4R4r?=
 =?us-ascii?Q?jkgN4+cLDDmva3ENptfE7S1KoAM/3DQGOCcqShtuPUnfbpw9K0eVM3Axz44r?=
 =?us-ascii?Q?nznQHRJ/sOxPEOcUihm5xpZSAY/2hW3A8mydFduQPuCFYqy2aohgDFFitRMw?=
 =?us-ascii?Q?8R5Af5AWwxIhMMx/X8RBR5s8FAzGrbpcOJhrWbjgFnRtBsTZSEB2t8Plp04V?=
 =?us-ascii?Q?aMm8lL0OiihKJVkb9RnFzOnTzXabvDPIjfDzPQIyU7VW8KTMgEFk51kcKfXP?=
 =?us-ascii?Q?brLrnk7RURKZeE2yPn5opr7A/QhjgHokeQBDSK0y4SHBr9ujYPL+h3byEGaC?=
 =?us-ascii?Q?TKhUDFJfr0/WDqlPQQZWRL3MZdL8TySabLXj7vE3Y7THdhX73qxQh68ZAWwa?=
 =?us-ascii?Q?TJMiAhJExsijvh9h20w08gj9tWvqr8Xip1j8kakjBLrvhChE01osKcel6+BJ?=
 =?us-ascii?Q?vM74ogss59M6PoHRshz4BN7oDVQHLM8b42+3nD0pszjf4L5qjhMJQ0h9QjjY?=
 =?us-ascii?Q?L9dvkJgngg=3D=3D?=
X-Exchange-RoutingPolicyChecked: bY4oH43cGxlWUoJxsIxjPus+YLR1FLPruwPnfP1dUEc3RYgj/eh0MlTag5zs+/RDfP3EBF7v1cioEPXL8OxX4J4Y/Ux+xB4gL14qLbuxmk04jiMwjiSBReXOriYUQNDgtkmqXjrFAC5ad2Je5yyIYP0ZxECF+qzrrk6sRwI4MBGsAMLJPiDjqeZG8L+da+ZfDheua5mpC6pTwtzwnzU/60vgFYgZlAi+UsLP0ejIZ/YaPqtgPEj2ANDlsIt7n/uUX+0jMDMzAL9RW28l3UGeuOxrLG8W+oVj5Fo2h1QOTV55k7yLMik/3X/3snJAN+W74P+2Hxgk/rle9HfVIY/fWQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 92e3d8bf-f3ab-4617-7e19-08debcbc068d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 13:21:28.6121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EhnoxwlhZUuiCmUGySv+gto/ADLnbNSwbYXuQI4dzsJK27uOyJhbdgsymu9yeVhNPbRkGe83ELnk/OwMRs3F0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6677
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5D89F5F2A56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Sima,

Here goes our drm-xe-fixes for this week with a single fix.

Thanks,
Rodrigo.

drm-xe-fixes-2026-05-28:
- Restore IDLEDLY regiter on engine reset (Bala)
The following changes since commit e7ae89a0c97ce2b68b0983cd01eda67cf373517d:

  Linux 7.1-rc5 (2026-05-24 13:48:06 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-05-28

for you to fetch changes up to f657a6a3ba4c20bc01f5be3752d53498ee1bfe35:

  drm/xe: Restore IDLEDLY regiter on engine reset (2026-05-27 11:27:22 -0400)

----------------------------------------------------------------
- Restore IDLEDLY regiter on engine reset (Bala)

----------------------------------------------------------------
Balasubramani Vivekanandan (1):
      drm/xe: Restore IDLEDLY regiter on engine reset

 drivers/gpu/drm/xe/xe_guc_ads.c | 5 +++++
 1 file changed, 5 insertions(+)
