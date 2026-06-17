Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id njIONPBJMmq1yAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:17:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2216C6971C3
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:17:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=b+hee3bX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FB6410E954;
	Wed, 17 Jun 2026 07:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37DB610E954;
 Wed, 17 Jun 2026 07:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781680621; x=1813216621;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bLhOqAqayXn8+mJ6RIj8KksG1WD5vII2G6GeQttjyPg=;
 b=b+hee3bXQDcua+uKDZWtakekcRxO7GO1LpDWNeWcKpCh86XZfzBy/iWQ
 Qf2UVu0hMYFdYC27p2x2WQd08LYYC/C5+ZXRkgPATKc9xOnPeJ4twZYJb
 ephjh6ruw9X5TYkQqYRoSXuxSh1fCMBbvOJNFDre6ZYCYYrDIlyD3O5iG
 cV9b6Q8z6SdEjyy5/WN6G449XmWQqD2n2Bn7ZQH7bItCsWDmMdLXA4LHN
 +jq6WxHXhNs2j0kqjCeS6jg3fWda2MKLJcml3P3MiAM7DZsNp9j50UUa+
 d09DWyca1SJWfC/hOtFfNq/szqi1a/hJ4MElc07ur1dlQbzjFxspn2JMU g==;
X-CSE-ConnectionGUID: v0BHiHM8TWCbZYvLThL6Kg==
X-CSE-MsgGUID: 8/K35VmeRzSLrHad4qS4Zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93841385"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="93841385"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:17:01 -0700
X-CSE-ConnectionGUID: 2MNa0m+ESN6PmHz2ZD8sDw==
X-CSE-MsgGUID: PK5zHP2ETGG5NwQ1ToTXeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="246851831"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:17:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:17:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 00:17:00 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.11) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:17:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lIsEvUNRYDAM7ChKa2PWoj5nn3SFspW2+qJkTdGslah3K1dwp1EJmaGmH0JPbHapGZo0JrwMUtt4nnXHL3k5MXpyS3s2f6Ygak1WREvRytVNRngMDx+j42y7ASSfWonMsIWyp6c4o2zj7VrHPqJs7abRRnMXV3RVcmBF0DyZCBmlGUQ5JO0u4HJnZ0pKi+BoxecaonUZfqVTzL+gxeDUvmolan2lqjRinQ13jbMIgW3Nu8dZCLpccc9ATRzu74Bxl+P00ND9KinSBSvtYiSaihBb7ILH0bTLmaHdLqNJOOkXCm4IiJTBlAvSUzXf4iHCOpPb3qO28RgyJyTA01yPag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/R5hGOoD7L4x21NohyOAfjZINgZYQ/pMenqHPib+zY=;
 b=bpiVpNB7PlpZjyfcDoeWyfI+xmnASCF08wHsZU+AomI2/IlXV3UGfs9FO4LokJ5XOri4FUp72wMn1NF+5pCihbICRUMSVuKHWg/oFQv+LkUYTN/TVS0X5hSuAhaij0wDlq6E/SAEt11f84XUipptRicjr449W+LDbjL9nB6OmLpb8kMoQ0kwgVRIdPnJmVslREoazMtGL4ZyVtJjbUQyt5X+J7PaAqZTCau4Acbqdal2IzrvX2rzojK4wzxbunbCEKafnvCgRAI3arpeOg6BAUIv+jpz+4dF6ULlBstQdH1WiuXS4/YpcplExt8JTyQBh6ozr5TV7uS9+p/c4E4euA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SJ2PR11MB8423.namprd11.prod.outlook.com (2603:10b6:a03:53b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.15; Wed, 17 Jun
 2026 07:16:56 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 07:16:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 05/16] drm/i915/display: Add HAS_DC3CO() macro
Thread-Topic: [PATCH v6 05/16] drm/i915/display: Add HAS_DC3CO() macro
Thread-Index: AQHc/ax3+7IsC5MbbkyiYEtGiC31NrZCVvhA
Date: Wed, 17 Jun 2026 07:16:55 +0000
Message-ID: <DS0PR11MB804916333EA66D669A2E741DF9E42@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-6-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-6-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SJ2PR11MB8423:EE_
x-ms-office365-filtering-correlation-id: a86ff07f-fd8b-4f72-b060-08decc4069c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|11063799006|56012099006|4143699003|38070700021|18002099003|22082099003;
x-microsoft-antispam-message-info: yw5nKwyVWGxqWYUC7YYamHWTk4o6pRt/G4DG5exrrUa65TMxmuZWJ7ZkdC63vXsI6qmvn+yb1m/dce3j2PVbl3CEYVxmMjRQ/V7aglb6U8fsQD7kuW3AayEVrt3jGpGhcNUYykIqS/KpZ15uMuh8Pai47DpW95XZ/RcZkJd7FfhR5q48WXvqMQ6z+V3fn82rxf8QwXU94f4z5krNj2URwP7JW1n6H3Eos0WrJ4QI7avZxhUTIDE9TUqWU0w2BwdNYn5FPrBS4+Z8912V/QpZkuOknYIHoZgZMs5seqBpRmtrcgIXdaaLp5f1Rys65msEgAZm9ad+PvQdrzerDxc2vK0N0zPiO2Sf8pb1U92n2DzuxHhig+f54UcWvMKdwqt5fRTP3Uykt61DUWccaJPD9UTiYDC1eXlaAvhTdi8PDcF+O6zI0Nns1C+hDTzT2t1wXcfCpW3zYwwhMVAREMBOXqSHGJlBVPzA36sZo+a53Rtbn9ND9FDumc7LBVdiL+NDMUfHUaWim5XaYFoU7rnWPAoAGZLzM6I0vRuNtgYgwZunLTs7E/yoZhaHyPeisOFrxt/YVxPq2yH+6yVdh5+DJRHBcIwqMnbXG412P0KEnbswZf8Qd4f/M8tKHQTSGJ9sV2EjQ3aym5ilG5Vtv19FVsQmJQ5icZ/Gle8PlbC9kfWE9p9kCL8m2F6Tvx5ZT/1Ra3E23YCd3PlSTG/wXNvhY29VKhnKGhAo8mhdMQZhuxbkuE3iC5QAmBE5PHOCIrsY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(11063799006)(56012099006)(4143699003)(38070700021)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6E1Axk526+mIN7DZV9dtC3cQH1MBKEeDRnyjvYgs5FUB25v1qAhK+5Q+aLG6?=
 =?us-ascii?Q?EoEt1gw6KXUbZ/MbUsqSK5Sq9p8o1lUYtevOYTVdOM2COlYmv5EhE+xJw3eP?=
 =?us-ascii?Q?W+TwsG/Gj+urVYAYo6XikzIGDx/1+cZHAtWExfaRU4YeZJTdqVEi7lOZe3qB?=
 =?us-ascii?Q?oyGDbO2b1gUEcT8o4ff2044FUGvqu9E9oHqVqB0+LZarelAGNTJSvJnkoWlu?=
 =?us-ascii?Q?Kcs/ldHjflr0r/VplIe/p8EJRq9uf0b8QonHf9bjBGD19fj2assKbZ0VR8wJ?=
 =?us-ascii?Q?ZM8AgCDJoqPhbf6oMiSVTWx4Ps7dhzPyUoZhITnCxzUOYgPwtVWkTzbNWA+W?=
 =?us-ascii?Q?hC1Q7/jFVJmFKsyLIQLpcTV9/EASS4LbM3Rd81M//zT4HXlUztfbpsq5+1Dt?=
 =?us-ascii?Q?XKKBOVUQDX27oJeFQfixAXUGdCBkpnApMKgUpLvCvEpwnOYNwyTh+Olp7INm?=
 =?us-ascii?Q?exVXJrE8tiMOa0OL9BRIpL2xo+Zvt08iQSnM3rus5/9kw+1G6BXUsNvWk6ki?=
 =?us-ascii?Q?LZenr6qfMlq67sgkvKJt/K+coWoKYJC4/iAq6wp3AopLKaP0cIjgHGdbyhsI?=
 =?us-ascii?Q?1zTuI/SY5aR3VTXZWSO7WdlmNVD4eskPTXRkJ4TM1dLbPZq2mw52D8ldNzSk?=
 =?us-ascii?Q?MzigM0Y75E9lG9TcxbeODJK8Vnlzchn3srQiX/eD4qRAyLm3B13wd019SFIi?=
 =?us-ascii?Q?5OliduWLgGW/wnSLVN6hxgst3lXUzeZkpUbOh7PyfT1gKq60gsH1XKty6R4B?=
 =?us-ascii?Q?OszGLt9ItMe/9PZvs8ilfQb/sUbeftD3IRsDJAN0iD4NaJVYGboeyqJv6BZt?=
 =?us-ascii?Q?d7Z0kr5IGVb8eWUuEr7/2k48ZwVpNwdPKlVIKGPRQ/8qvmWVbXRVjYauTU/a?=
 =?us-ascii?Q?gzwmCGgzXzdIKTv3W9CrK8jbxGBmTlMoSBeg1vWR7LbM6FSWqPhXkwpl1KBG?=
 =?us-ascii?Q?gB8VeTNKeAJ9u9LOSXH9O28OAlzzALXOgpwaHcj0K4X5ukXRrkaruSc1HG/f?=
 =?us-ascii?Q?DsFJiPRQ6TT4hC9EMXtwNBcw3ZXi8SIMm7pd5u4K99ZAiYQh+EJexI9YqKfS?=
 =?us-ascii?Q?tasKHnuUN8sQgo2kDl/Tk/0UjQxNnmB1sxUhCah6hZ5/aL/hXKRZyK78Z+EW?=
 =?us-ascii?Q?1vzFISZo1iqsqwZqVQihXtmgUl2jf5YsugX81DJaoPDUDIzaZf5aquwGi6+i?=
 =?us-ascii?Q?twW+2cQvJcDrdrFMtmWr+phWE2WCP8nVR5Yu/OFS8RTXvSZCUMRsSY3sFUW0?=
 =?us-ascii?Q?KG4zcEVYbaIAL5WW7bJar5QsSwyldlx/2e+w/q+4J5BXKi7/exArvoskFVFr?=
 =?us-ascii?Q?PBss9h+0U0MFyzZA4kP6gFVFLQW98xw/L7QnHS4I0k/slXPah/Bg1MOr13C4?=
 =?us-ascii?Q?PjCAzkEnyB0lJbKacrJlmx8MIk6Ios7Jntp9+u2/kl9W4T4pRJiDD2O3yida?=
 =?us-ascii?Q?MBZlwNHecG2onGQrFuxukEGVgg5zdN5+Se2PDgC02rBgEwT3N8D3Ae4rXu/v?=
 =?us-ascii?Q?J1HMDAA3vNG4u8ZVoL3UVyAZ84aIXOp+wD9h4zagIgdjg4Kf8nCL7x53U49O?=
 =?us-ascii?Q?yXFg/CIUX95W4Y2lvLFa7SxKNixZvXI1I+GVyzgA9o1lGdXSl35EYYXODDqr?=
 =?us-ascii?Q?l+17isygViFJhdIuqbd54O7flPGgabH1I3rOLi3F7RXf4V9nZSJSR6DnFHNy?=
 =?us-ascii?Q?Rdt5fQGjC1ojdpiJ5FpRJ4n729XXgZEVy3GbuCjvCUCK6+lN7YMQuStvYvKZ?=
 =?us-ascii?Q?BkGtXO+CIA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pPHPanud6ZRKqakb/PD5Nw3ZoCYqRgTnyO/EkcSfL+jPXRNzJbeMxmd+2dBmgwK+ZGN5G45e64Y/ESYqmxle7qXx3hAbCiUhzn7ZE6Jg1A5wZcpuHI8eKxPL4xfHZGi8o90mgPmVb7kGeJzC3qNd2cGAVONMv6kTofbEMlK4gObXTB+2RhvalQ1AlqmrkjtQfFzD48lybiQJQxKZ/faHXglpcgrt6np/rIwkgCpF0S1jgOsAUpoEymK7djB8e7KFzz8LN6LNaRmZ209BZ8N1LvkO3Ry1J4YB63w6zuTbKnBsCKj3/41z8Q9UTUoDq2rrLmkpuNMYwQKpz6mJmBA6kw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a86ff07f-fd8b-4f72-b060-08decc4069c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 07:16:55.7359 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nkd0AuHS9HX1HG4vOLl7HYlJg7YwpqUbnbkRyRWVhJPILj0iYhQjXsZOayOpR3cjQkDnlKZ8sxGtU76M9iGIbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8423
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2216C6971C3



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 05/16] drm/i915/display: Add HAS_DC3CO() macro
>=20
> Add HAS_DC3CO() to identify platforms supporting DC3CO.
> DC3CO is supported from display version 35 onwards.
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index acb9ca87dda7..f77b3da2cff5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -159,6 +159,7 @@ struct intel_display_platforms {
>  #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) &&
> IS_DISPLAY_VER(__display, 7, 13))
>  #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)-
> >platform.rocketlake || (__display)->platform.alderlake_s)
>  #define HAS_DBUF_OVERLAP_DETECTION(__display)
> 	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)
> +#define HAS_DC3CO(__display)		(DISPLAY_VER(__display) >=3D
> 35)
>  #define HAS_DDI(__display)		(DISPLAY_INFO(__display)->has_ddi)
>  #define HAS_DISPLAY(__display)
> 	(DISPLAY_RUNTIME_INFO(__display)->pipe_mask !=3D 0)
>  #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >has_dmc)
> --
> 2.43.0

