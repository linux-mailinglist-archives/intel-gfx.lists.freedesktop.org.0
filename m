Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCglEmzjiWnGCwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 14:38:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D90A010FCD1
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 14:38:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B689410E3F7;
	Mon,  9 Feb 2026 13:38:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+eH6zOe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FEE510E3F1;
 Mon,  9 Feb 2026 13:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770644328; x=1802180328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Edw3BI4BIApf0t+igPTyiy7qwXmL9yDGzrHsr5KuAys=;
 b=R+eH6zOe1rlo9AaIOilmm1qlEgtHZX+CAdH8H8ThfAE0d8vMkaSzhOw1
 2fZebfQTI44IMLhQUUhg4ANwwXdDy+2/BVHURgSV9aKeQcvj1LBXhi29s
 ojTUTPldQ2dD2K7TIWDkd5uaz3WwjQcQZI0KUSzcmN8IzPS+A+K2/M7aq
 7rq84CcUT/VypxfR8dFfX1QXtm5ui4TycsU7MrLHZjwqEFUB7VBkUAnph
 +bErki70taqXAR1yxRo8jsVVlHiKsoXCNAjbH9TbeonHHI7TyfzHwwzUF
 hsiwkaUETOQ6ChfaWAyj8uiTJFhZFx3ESPOQ4PK+iXdhjH2unI+cyvknh w==;
X-CSE-ConnectionGUID: C73zFLVcTe+/5Z/+IKihGg==
X-CSE-MsgGUID: ZvPA282pQge7epk1IjOleQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="82488126"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="82488126"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 05:38:48 -0800
X-CSE-ConnectionGUID: iFEBVkdIQUK4f7sN5yUMJw==
X-CSE-MsgGUID: d6bce1+aTu+uPQq04aGwfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="216078193"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 05:38:48 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 05:38:47 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 05:38:47 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.63) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 05:38:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UZE/hMbL7DpCYTuGwkGwGPOUYxBI0gJfptwxY4/m2gAjwt5FbDw0ns8Ij++8iVeWUp47LSarXGcItI3xUSn1YKZ4tNb7dZ80BIo5JKlI0jEWTHR/BTlTC1FtDDyu7hz5cr+KoF6FaBsG71tGH9nZ5YFleZLsqBcKo8zCbZ55gLxMkDJ1lWy++DQE4VLI3v2RcZBqutiYIwrDDVkitlZQFBGAf61HnhKPAFAysrb7OceqOJgx6ds9piudZwhgLnW5Qj4NitH0sZ4vVgPyiva8b1LVXYUXe4U2U/fGufQgRjkRQXw4PZn/XR8t2Dqu5KlPIxEDrl0Ua+HQG46R7Z7FbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y3ey1pH1XADCmlCTKuDD4exYJv0/JRykLoq8lTS0IzY=;
 b=bZtrRrhhbNDZ4jQuZuTeozksCJGGsJtgRzXVGXUnHnQPkZsNOP6aiyljdoFyKSAE+e+yocSyJc4BOKj/iOuoPtLt0Z6Iut4VDNOlNGiqTlPDm3GtkY8iE6h69XdAWXVektvhAodRkBA1AT8XRJsqnufYH0Y9/WS/fu2mv7eDjYL8B8Vw9E5KDCOlhpv676ifvDyB6Fj2DmKIMDUlSnfO9f3cYgcy1XyPE5aIzZUHLDR271HUt5rhmOhR0lrDIui0MgF1FHqBluD1ZyKj6/xQ2R2w1QCT1XLVikPV42MfSDgx4dTU4lryVxKHHtfIyBEHzhcF+AowZu+d2rpGc8dz0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8622363CD.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83c) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 13:38:45 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 13:38:45 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 2/2] drm/i915/dp: Verify valid pipe BPP range
Date: Mon, 9 Feb 2026 15:38:17 +0200
Message-ID: <20260209133817.395823-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260209133817.395823-1-imre.deak@intel.com>
References: <20260209133817.395823-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00007562.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3fa) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8622363CD:EE_
X-MS-Office365-Filtering-Correlation-Id: af35e1b1-a763-4109-12d8-08de67e08bb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lcBblMB/d5eHFCpuCH+PXNMimR1n3OVaKAJPEuIDZvBfSRKVhi6hWqs2O+x/?=
 =?us-ascii?Q?P+onWaPWfuIEe8xl2EEeG0MrvLFTl+EI9mSs8jobCRq5DhkYGayguTnYywPt?=
 =?us-ascii?Q?heegq3QMOtkA/37eyDb6XEHszqR0aEiTMq9pNspi2zSQ0eZBcLm864W8f7wq?=
 =?us-ascii?Q?riCxiJaUferNDbsRAj+Bo54pEiMWC7AAoxmZVEhoBiHd2Uw+EUj2kjaBqGsE?=
 =?us-ascii?Q?IXEOxNHPP2iMKtWqnvibD8riAyAfddS7UUBZT1aVfIS3wxbG7h50pqyv8aLk?=
 =?us-ascii?Q?xi7EogBfEZjs+D4ftbB/GT2CXvkRVeDW+Qeboz9lHbZh9ksIzFwWYPRHrmRL?=
 =?us-ascii?Q?kkdJwhykja5p9+p63QPPCrVbYqa2m6FDnMNZFllE/SQywhMZYGgaTYiPNswT?=
 =?us-ascii?Q?vpWe9o3yNIrnagPhn/ljmdlG/0rP6HAbOwtbre9NKih4G8jSoLeSLYgm4z1P?=
 =?us-ascii?Q?XIDzkGL42AzJjUOpCJxZAS7X2QXLA1G0DKJL0fDrd/IgsfV5jVuW5+x30H6O?=
 =?us-ascii?Q?5Pu1yJV/AH9OuQwq8itvkG7J2OspRC+Y89R+qt+pxTloJgWxSXcc1GUZTYZq?=
 =?us-ascii?Q?NIZuLHAzDjuJE/OJro5i3NR5lJtxuWTGUzeCCINCRV+RIvsBye1HYe2r38zI?=
 =?us-ascii?Q?pddsS5dV1AVHrb0deFGRGkfmkRvToa65iHYnMetDOzygQmSWrDDZCnVPK8v5?=
 =?us-ascii?Q?9+tNeydhkuLKv3ikWHNhTGXhxaMrseFrd8PY9Yl1jWR+8WU6QbzSFZHafDc4?=
 =?us-ascii?Q?syiHfHLe+oibXlJil5lfa3bUnvRsa88zU1Xj10LGrvm0XpOw2pPaL30YgJeu?=
 =?us-ascii?Q?+rv7YZoPOWpAlDwZqJe+TlpvTz5TBfSJekAelFwrp6QoEZ8LM/3v0+Oy6eoE?=
 =?us-ascii?Q?S5C6BCX6YQBY131CDiMIbpCvd6KQcRVS9HoesRSEiTbhWi1a4tcMCjlsawYn?=
 =?us-ascii?Q?OUhkZ1a3ifynPE8jJPGwdP8EvFNGuxbMQsr+kUObl3EHOy9vsekv8tBBRadz?=
 =?us-ascii?Q?kmgRdVCDsVLNcaOnP1KQOjD9AQO1GgQVXImvaPu2JGjImvFnphsxWMu2BxGT?=
 =?us-ascii?Q?mYmqyjsEarwC5Zg4VDbM4nafC5oNILMbl/cRQCZq5ZPIDQYIQLbI5VXGQKsT?=
 =?us-ascii?Q?4Q7HK6MtuQDTPYb9DO98huzng3RJ08Hqf0zaKKwKFWfd0AmWKzNhDRRe203o?=
 =?us-ascii?Q?Siga5F68PcKhwyGjJ2XCwho2ncu3XkNWjBxD91C1dfNZyooay122CNvv0F6p?=
 =?us-ascii?Q?/rtVYBSVfcfXSxDOk0ZQt0jKI2529gvwK0wNMaJ8gjNOhs7kuOAVvA0bu8lX?=
 =?us-ascii?Q?GVOw4/woj63tivtYsUZOdhsvy/H145cux4e/tscreKRtnL+PQ2DwPWFANN5z?=
 =?us-ascii?Q?rhEGPJsQjj5ELo/FhUdgSnHloDZDV/c/nbX/f3a7iuNq/QbGqil9+2nzl2w7?=
 =?us-ascii?Q?rfGUKptDU/TJ+5rgHN2ZdGtuLjysP3glKHYAZmi67nz7EC4Hpym44ef4sZDA?=
 =?us-ascii?Q?hhUjIe/6na6tJehgQqdV9eAjY1CzVGsAiy/7mP775LVS2l9VDjuAzgouzNIP?=
 =?us-ascii?Q?TugA6OPkn13qm0YdJDg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FaN4qIptZwNK3CHvXVjKGCaEATxhwYyvirrdhLfsexxXruWQI8cIYsvr8s6r?=
 =?us-ascii?Q?zNkgvuLQTDCHCkOab2PMtlhLO5AuKuWr8gw/OJlYKhsQUYo3P+a8iOeGSKOI?=
 =?us-ascii?Q?Bv10Bf4V6iC5ihKubl3FRcp51kwj1sMLDsCcuanIIuo0fJbpCyFAszO4G8tb?=
 =?us-ascii?Q?nSr1L+yW3BAtL6lPwR1RLnfSq8ZHnJXetAnTcRaTY44gy9BYPlchxdTXlMAM?=
 =?us-ascii?Q?zs9774u+EoVBGx1zNvI6uVk7QX8wb28bmhE9lwaiyuF5TfyR6F7OMEtdY5fj?=
 =?us-ascii?Q?Cna039PH2b+804TyOi2ekmloM71sMMGIUzvey9PHZr+OTACDBZf2U/g6plpt?=
 =?us-ascii?Q?KdLz6UkTYmDeC2SOVUYfr+lnE6OS9i669PYZxGi8JFoNIdxRHr1mgsvg4CgS?=
 =?us-ascii?Q?PtRz04AjT80HpJZsrHSNfo7F0dAgS0nJ5+q7lMrufbQw49blJpnail4+dxPS?=
 =?us-ascii?Q?P4OQssFTMxvbSjWemXpuSXxZcbAwlI+YLyHFfPv6wGCwcPrpdLebSaxnlMTc?=
 =?us-ascii?Q?Gpxbz7h0FMc4QTUpV/d7QPrZagHZrOdPdGz9ph6yLUGhqAyhCeiAUbSKv0QH?=
 =?us-ascii?Q?pFKu+snaq3dwiWwutrFCmkA9+JYJooH6sp5g3VSrplrwkdPFLsipCZJIYOVP?=
 =?us-ascii?Q?aYXrNXtNSebby1xcdMeBToYO6YF2Tp0mLIkDQJpM+ZnodoJwz5yTO4o/54Nk?=
 =?us-ascii?Q?Q90ENjd/JLtFbgFuBxcfvcoY1Grz4Bze27yP1G7GQJogiRidqHCI4EuDrEcl?=
 =?us-ascii?Q?blU5kmpLQ+rzAAA7EPwUr3lSyYIIdtlcDsPRdflKsXfcshpzf2z/6UehuJdt?=
 =?us-ascii?Q?Wgz9c+cx5aW9cIN00u5xqVK+rd+s3spnlkykN28h5KSL6qzag9oizMP22BEA?=
 =?us-ascii?Q?prp/upFcSvQTgi7ey2jFkaNKVJRii58oaUKFkxlIZvcshmfTN0O0a7+eKgV6?=
 =?us-ascii?Q?URdo+ZafybbQmI4XqzOx0WhsayHoPESmkmfVd7FEMIehkf4yn50kHadYVIEp?=
 =?us-ascii?Q?9op0/j6EH82AUKf/HESH6euALhWco8td2c5GTGKakbJZ4ftLmoFNqLfcKFXJ?=
 =?us-ascii?Q?ytbBi4RO2YbAlqkczPLzhv6h8ZGsrRZdGgwOB7grIkMgevp5gZ/Ml7lPVLle?=
 =?us-ascii?Q?oLbRZsQ20irtp8+qLCBkHSibh2fm0dtmHoKovx2wqMeO4hjJawvSqYzDUFTe?=
 =?us-ascii?Q?fU/7WyRxJIv8dGvDYUPvAVXW4pbQMa58qb7O1qK/M1WW6LLPowQ0lMypl8nC?=
 =?us-ascii?Q?L3vJb+Iv4asT56a+iEA8haGLuPhLR8Buk9yDOsuLBsDOEUu5lg8nhWJGrOCg?=
 =?us-ascii?Q?5P3fGODhBIJSgndYj7Jp+u8Tpgem5JTLc9dAYHvNDIZcO0RT9i3VKdUvPNoH?=
 =?us-ascii?Q?1lGaxyjoRyo2Md6DktiTXQX8k4TNynLz2AF0399qWWF8JdhR1C4UTlheFIYX?=
 =?us-ascii?Q?8mlgsBs2QUxnjX1SzwpPDW8sBjN1H1uMTxNmAp6nKOl81EOiRX/VhzpWiR9V?=
 =?us-ascii?Q?l1NsSVfSd0EMhdJ9aJ5TLgzOIhWItVctrd1aZwZXi/D6tOC7Q+1dD15Vp7v6?=
 =?us-ascii?Q?PrlVAYwedyWh6CVZG3695OsOyoLtb7yNJK1mdIBPVxdoCInT1YreFxx5zls9?=
 =?us-ascii?Q?xfZDGBy5oubG8xnBLo7v7ZoOtQ+nhkzEB5TYZtAiNWkMWU1SuvjAujGS459p?=
 =?us-ascii?Q?p9+0NXzly1EfCikoiGyBPlIhMkIgSTW18K6CEVe+3Ri+s1CHJpQbcfP4fxYn?=
 =?us-ascii?Q?UeUbaxwjnQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af35e1b1-a763-4109-12d8-08de67e08bb3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 13:38:45.1093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /I1Pey333x8RqqN1YYs6PN6uaVrxAHUz32Xt21szfRcxscbgCXhoBT3E32hMcGtEIy+ldCrnCKRkWbgrGgpMLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8622363CD
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D90A010FCD1
X-Rspamd-Action: no action

Ensure that the pipe BPP range is valid after calculating the minimum
and maximum pipe BPP values separately.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7fd20df10f26f..48845899298e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2745,6 +2745,15 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 								     crtc_state)));
 	}
 
+	if (limits->pipe.min_bpp <= 0 ||
+	    limits->pipe.min_bpp > limits->pipe.max_bpp) {
+		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] Invalid pipe bpp range: %d-%d\n",
+			    connector->base.base.id, connector->base.name,
+			    limits->pipe.min_bpp, limits->pipe.max_bpp);
+
+		return false;
+	}
+
 	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
 		return false;
 
-- 
2.49.1

