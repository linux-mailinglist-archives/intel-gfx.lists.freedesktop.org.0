Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id phzlNxr/VGp6igAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 17:07:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3CC74CCB4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 17:07:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=caF3hSeb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FACA10E118;
	Mon, 13 Jul 2026 15:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA4A910E118;
 Mon, 13 Jul 2026 15:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783955222; x=1815491222;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fsuwV5rMvHnr4t+j0lbFifrIqbx+jiMFRqNnT38RDZU=;
 b=caF3hSebcBvizvtVXxtyrPBvIl3j0S1QCg+Tu/79UwKua/VWPKqg8atY
 Oll3lhq4ui7nfPxiDrfyfQ8/1+WGh6IYcj/v5R6MsdbPkIDDm6E/bsQKR
 uZ8wdaKBbsbP6xj5O+3jm6ivY6MIkSyeTXgXYgchOrwSRwUsMEpj8lN9M
 8aT0xrakWhkuBCmISeEVW/QtmJhSVK0MtWNsH1sTHaIKziedkWab8TtK2
 vQk1cwxxfBICa2Goi6gdkCqCnvIcDS1eZshk0HkpTMdudSpRL77MaPngt
 N8SjnCQI72Cqz0qlf5GKXToRnkiAEO0BsKYWGYy8pa0/SOxttqXljKSYY Q==;
X-CSE-ConnectionGUID: uJdt+8v+Rv2OS5sZUHavrQ==
X-CSE-MsgGUID: MI1KaqAyQHSa7i/vkAvEkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95934791"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95934791"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 08:07:01 -0700
X-CSE-ConnectionGUID: /0AlFHhbRO2sOwpzg/jkXw==
X-CSE-MsgGUID: 57RR0HU9R82JapqR7ivudQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="256218381"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 08:07:01 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 08:07:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 08:07:00 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 08:06:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F3baFoVch8FbAQ6USbp6mgKixUh1nXiHgzN29iRBFVBVD6vFZc8+spBpJyhTD2oIfLFp8PEw+J7NbXA5ulGukLEk/a58SC1Iq+fNLKS3Ahdwu7eOADaN6WTjuOwrD/JJSjswbuM2A0azcGLjOfU03HJNd3kUjp/X1efkB1914UM0MEMhXYXPF4e/tNFJjybK185oOBLLJacWZwXI+ikZFJtjai6IF/e0hs9gNjT2PhpWk3jFpD36c+KjLtOakf6TUU9Ys6DzJwIPanoV4hC+/l+PfgMleTW2kXvZV+Cfs3lJHsPFBwkK/ED9Zk3TFn1yep8iHJZ7PGuHBaOGvLx1lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ajrt0XiI3pv+/wAAEUN4cBGKgALPf/9unmC0DUGpS74=;
 b=t+KClmwjEA4nI18vQ2SjOAcJG0z+w2l9Q/H6wvCVC5HjiAv4IhXmK8nADpIZOb+tzdNUTZIXdkmAf85mH8CjjqEB+kMt0RZHt2xz6S9dCKk0XjBPNiSvETULhEbvATu8jEWZXfKUYpiIVHN46jU1d6GL20cFP670bpE0Dt/9f3DbXQVj4KYm74uzeNL64YSQnDc0ldndzAaEDdEgbb0EwYdAsUQq+S9M2j6VLupfNpwYbPWDCpnt6H206stnea3Sk7C5LUS1T13MTfFiTqBW/ZtfY/p3t/vFjBOTQ7iqFSNsItt0bzGJpYqugYbg2CSyHgS3/sjwV2DxUh1kkdgj4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by CY8PR11MB6892.namprd11.prod.outlook.com (2603:10b6:930:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 15:06:56 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 15:06:56 +0000
Date: Mon, 13 Jul 2026 08:06:53 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Danilo Krummrich <dakr@kernel.org>
CC: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 <christian.koenig@amd.com>, <thomas.hellstrom@linux.intel.com>,
 <ecourtney@nvidia.com>, <simona@ffwll.ch>, <nat@pixelcluster.dev>,
 <airlied@gmail.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 09/12] drm/ttm: nuke buffer refcounting
Message-ID: <alT/Dbp0JSkfGRjA@gsse-cloud1.jf.intel.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-10-christian.koenig@amd.com>
 <DJVRYBLM3B94.MAUO8T8NXM5P@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DJVRYBLM3B94.MAUO8T8NXM5P@kernel.org>
X-ClientProxiedBy: MW4P223CA0026.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::31) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|CY8PR11MB6892:EE_
X-MS-Office365-Filtering-Correlation-Id: bf87b96d-9509-4ccf-29ca-08dee0f0616f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|23010399003|18002099003|22082099003|6133799003|4143699003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: jAzG/7BmTyMqtc3DnqMQ6Gz/RjolhI0LiKLPmdVvtG420JZzIBHf+/CsVSxrwKB8LN/zAa/jCNpuVJIVeX4nMf90YP9RFzZ+7a154NEw3csvUsSyzVg/LcP/2c8y5XUQhY55obFeVKgkAp4WoIxXAfVQSD5Ca0D/JjTRDjYHzurF6yV7XVdHGpSAPgx4u6E2V4NgabaC+WCmWXEzKdAPKqkntCsbB1KXYIhvt1TEB63F9+Ipkzz9CZWqDLCz7vvS4Rex80n21647lbqfv0jefPrvkuE8QG5d0fIxPsiuURltwUajHBjkJCVil9wmYUy4Kr9s3FPQlEAyqSBBN0EV7Jqu2EduOAeave2xUME+L84J3aCp60vEUUff7+wqqPcBEKHCCurcxcd2f6d06JmDeSFoACmns/XNUWXpMc1RtmfKwyu1ZL7ZkaWWPHJHvAg18kJbH1ywVnsZs7XvM3qlKcT0TMYQrRzveEp2sNj6aTex8AW+pREK0QOlhVJ9a9POw89fCUJPWk4i/bTcjJhnmSP3dMK28NbW+pjkABg4jSGvl+ot26UhlN1YAzOJxwccdFrmZoAqwaBQ0NXpavwo6NwUezIHKvYygjQ7TE2Yk/p0NY2+fVkwxDMoc7C+193q2oTWlzABDE4yYUB6Z3/dbIlBo3/6CWqUaLAyPs+oJqs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(23010399003)(18002099003)(22082099003)(6133799003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8nnRCf0fMg4A4J+HxsYKrh0Ma5WpaUT3C1wb+yCW5uiUaeCluC0opr3w3B8R?=
 =?us-ascii?Q?XHAY5rL9WzsW0VppYLNifJnkqxJ4ZBaj761P/ySuzPLInGpoig9phM2BzQ6W?=
 =?us-ascii?Q?2RII56lgb6pLzS4yGknpj+mzsqep2a75H/vw3vLKKnS7jrPYWG893QHhlvjS?=
 =?us-ascii?Q?hungNToxDMk9eCxuCu9Zcdp5NgZTITCsH0qoBsfC6psDSUOnFVkR3g0mdwJ3?=
 =?us-ascii?Q?P0Dm0xsSpEAJaC0FSKKuRNnF2vEen+qXwp5CvHh2M1RG3XEpdzw34tiTmqqm?=
 =?us-ascii?Q?Z794ttwXKL4ohfpmiF1whC5LKZzRgQlvmftKOAx3HGQa/BO6CNoYG591c3UG?=
 =?us-ascii?Q?So8KBtsNIyuppyfOCJSJWEfS25W+iT6/Ez9wteibrlyH4R3YYuO0FhTylQ75?=
 =?us-ascii?Q?1UAVda/6dUNRG35L64XhHG1+zDkNgWgfwDZr/nd74z6BYKkrmfm/ExKVU/WO?=
 =?us-ascii?Q?0+ERVxtW2bXrwFsW3gATYXbb2+KZgC7P0U3Qkq63HuHMt61gPaiHfuIa9WVr?=
 =?us-ascii?Q?N7N4B671NsOEtg0t9PXH6PIBvQGp/u5Xw1taYUKg8HpKqkrRM27yJyzg4NKx?=
 =?us-ascii?Q?8C6ZaqPWERcYqLRbGvDzzlyMHyHiCsO1B4XxtPusUNA9h7JXBdNwrfjICDNI?=
 =?us-ascii?Q?FRY1aPzqN5z8bEwexn5yysOINSlW0gekFbrCSwH1hdRxqNcFaULGGY6pgk/J?=
 =?us-ascii?Q?GgApQWNiHcHFg4z90237YOhlw0FheCqVvTrRidct4MQSi2Hvpfk/1bFWgD7s?=
 =?us-ascii?Q?gJS4EuIdJNV7bLjiTniCgrvmdZddu7bLs2o+ZkDSX51DSWACJTV0qEYSNJKQ?=
 =?us-ascii?Q?Yo8jd0b8sQTof+F7Bo08aErZfdu8d6/1YEfMrf0TrP7OM9C0NLDgGbVBR3m/?=
 =?us-ascii?Q?5g3PtJ8SBLfIDSR4LeE4gHcjbNTJKq/ybtbl+XPHHPNrneO59yc7LzgzfXjN?=
 =?us-ascii?Q?MO3fJt6iSRleoqImxg3pq4q2202vk49jV87/ksLdqcF3KdSXU32Bse86FuML?=
 =?us-ascii?Q?d/dB7nrNHh5rm381Gm24qEsMSPJURgwoY4ltAxzO1S21yUugG9SyJrB4lDoj?=
 =?us-ascii?Q?Hw82+d7GKibyvgZ0lNBuBkwgQdrrABpO3ljvblSwe0qqQ7IMRCOD5QIeNXuO?=
 =?us-ascii?Q?2BePiE/Nw5o/w0FpvnPEV+kT3xcwvbpRgmlHW7jT0VWvQ9XU8C1VF2kpV1b4?=
 =?us-ascii?Q?GlgMiGrbYE6OExVjFnPKwobFaaQXsV3tvpv1WOPg7VhPnBaQjn/7pWpfZPCo?=
 =?us-ascii?Q?EpHRpt6z9am9k9qh+btK2mhvT2EIwavUsriq/YTqQrLnoTWy1ip8gzLfCo68?=
 =?us-ascii?Q?ucT+zFLi4Mweinp8d8zZV95bWjBj/WJloQFb+ZMFQrpg2IYjejX55YMIGO+5?=
 =?us-ascii?Q?TDigvaKRUzM+6BJK7AwY7tm1iLUFFy/KsIgPAP5DVaviuN8340WuYJdxAAI0?=
 =?us-ascii?Q?lbhUNzB+EgLo++W3Xhvic1y3SEKwAlu6mVNw9VValhjnblZkPCBDgBCGhKOd?=
 =?us-ascii?Q?ajXhLj7OJyU8Pf+dcqX2X9GvoY9hkfleL+j6cHxHvOxODdXwEho9cIQxyX9d?=
 =?us-ascii?Q?t0JIkubCstaNxPAyPmu7GDD2uXyjT4qH37GOi/dhvgLFYmeYhRnO+T0hjdeE?=
 =?us-ascii?Q?w8mCkm3uycRjtlsDUDvX0+OxFWUCUwsoAgeVICr2Qr5J9vtkPKdtGItWph2w?=
 =?us-ascii?Q?GR/iE35Tlqgvo1R6Dgqyr6hyc72DBE2XiTpMO6rmtl9ggjFvbNOHyCKDmbwi?=
 =?us-ascii?Q?kxNCS6N16A=3D=3D?=
X-Exchange-RoutingPolicyChecked: lGjaZi2dxPLZD00E9xBE7JVZuf4hGsAfMfJwEW3tDg8qg7eXlSKVxUnJaOOOPPRNlkpirOL96MVPyvxXiz+VOts2YcrrN9+6J5xMhblztckKzoHV2WWRXfT+qg+TTYaxgMaY4ZVxd7X8OpNkowaGYd4rymM8aiNAS0iLCtoy4XSeH+zRZpooUYYsj/3zD+TqXVNCl8ynhGGKZP0Wk9PjZ4IpMQ5OV1CgxS0PsRbi9ffcA2sqksmSevh/3yy8KqfTHErSpE+aQZmgaxWTYomfVpiktAZQT+4gIIm4aHwVYbBVg+3Rs3z0ZNEMidnox4YCt152LTWczYXyf08CsxnnUQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: bf87b96d-9509-4ccf-29ca-08dee0f0616f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 15:06:56.6149 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z/KL+SI2eknJiHP770X50bHAMAC/rceD2UPq0yZCzGjXwXhOlZfh9dSK3PWr9AiRiN3aLqzq1hyIBEzbX3Tkag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6892
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[gmail.com,amd.com,linux.intel.com,nvidia.com,ffwll.ch,pixelcluster.dev,lists.freedesktop.org,vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A3CC74CCB4

On Sat, Jul 11, 2026 at 03:26:18PM +0200, Danilo Krummrich wrote:
> On Fri Jul 10, 2026 at 8:52 PM CEST, =?UTF-8?q?Christian=20K=C3=B6nig?= wrote:
> > +/**
> > + * ttm_bo_is_deleted - test if buffer is already deleted
> > + * @bo: the struct ttm_buffer_object to test
> > + *
> > + * Returns true if the buffer is already deleted and only waiting for
> > + * destruction.
> > + */
> > +static inline bool ttm_bo_is_deleted(struct ttm_buffer_object *bo)
> > +{
> > +	return !kref_read(&bo->base.refcount);
> > +}
> 
> This is an anti-pattern, branch decisions cannot rely on an atomic reference
> count unless additional invariants are upheld that otherwise guarantee that the
> read values does not instantly become meaningless.

So I believe that means the TTM refcount reaching zero is a terminal
state; i.e., reinitialization (0 -> 1) is not allowed. I believe I agree
with that or if reinit is allowed the check needs to change.

Matt 

> 
> Something like this should at least document in which context and under which
> conditions it is valid to rely on the returned value.
