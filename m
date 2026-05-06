Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WESJKmKc+2lxeQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 21:54:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F304DFFBA
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 21:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892C110EE96;
	Wed,  6 May 2026 19:54:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dcwdOv8C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3526410E20D;
 Wed,  6 May 2026 19:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778097247; x=1809633247;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ga7a47i0MfBdMLK13NHemc0sdsKoNX/DCAcx3yg5OkM=;
 b=dcwdOv8CG4gtWfO8QA+Mw+/vIeUOdYfSPqQ+Chyxov86RlWck7OJt7SY
 UNs4QUy3huXS+J2EUI3b/UxLX8yxyMn6C1yRfCOFBiylOFBQBOxoMWMni
 rLbFZohTOMigzjZNX8W/xFUpBCbnUL/HW7XBBi8XyqYNzR9WyjL8xSd03
 54D9rlQsOZ8+pP+QGVRRoAlmr60YFfZ8yOmsUEQJ9XsaLhRaNsnJ1yvdk
 W8UrnTWMku2+CJH37f/3S+aJfjCuzf881qYZ66WFGkQcWEE4pA0XSAvox
 IPrsDCVgh08XutMsNqfCTaarJywVDA4fdUkmhJtXOoHtDKaJRYvU0Qz2q g==;
X-CSE-ConnectionGUID: hu+Sq70nSRezx+9aNaIh+g==
X-CSE-MsgGUID: Kb67EdS8RLaMx6cNMK4B6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="104500640"
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="104500640"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 12:54:06 -0700
X-CSE-ConnectionGUID: Cj4EeBeqQmu0u1N9hSTMxg==
X-CSE-MsgGUID: 7QQH9Iy3SZi+mxtn2fMO2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,220,1770624000"; d="scan'208";a="236148749"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 12:54:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 12:54:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 12:54:06 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.56)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 12:54:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=llS0hlsCSzetkC9IhOmrhfn6822sLMq2Mnkd2I/t6WdQkffrsnIsoX4nqG8jqvNlPxJ99xQIpNURpxWkATOwns6r9bnXxDZydd61GGfqGDq3CMc+YH6o2VB4GIk1Edng/B1bvOn/OaOw+/2rZtJteiJp/2Cai0+5zcNR1xxdJJNuFCKbiE0b7VQftp6R9/V5w9z1mQD39otLvTxFUoC/0tp5mUltnv09hHjYjg9ow/EtSZvPP9hhVy+IJ0j3perCakmAcp46qOEID1Akpg52GfBB6uG5RQypj8LAiiaoA4YspSTgfu36qJ6mhp6YWqj/O+Hdu5ZYNUcVPlOPEwlbyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yMa4yhVgpL/I7iEiU1SR7bkvNE7eobKfUKvX7S1D290=;
 b=aGw+nWQUxATFcg57yLixzYqtcj0y/1yNLNXNniRoy1MTvKvm0wWSQboOFhz5AYbrm2e4Jw02sMmSbee+azasQXCLhdA9woWgjZO621SbO1zPJe7PNbgmGllDJl7qW2eUswdtJJJiGf2auzRUbJhtUhATnnYYQJBeobpMBuJcDPUaRXAmk6jU84zm8Qeca+IWjwOWUvUxRhHRrrfJjHRm0N1hdWC/VnRXRa26hvXhXYavh9AMCc3/5YbHKOYgSmYGsxmOETiCAbPpcntVMrB0iL96unZVaTKnmXBkPYzNb/MGoMeILpo82ZrAeCq3A6EapBMLdWShQN2FiBc2wscJ4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 19:53:59 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 19:53:59 +0000
Date: Wed, 6 May 2026 15:53:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, Oded Gabbay <ogabbay@kernel.org>,
 <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <dim-tools@lists.freedesktop.org>
Subject: Re: [PULL] drm-intel-next
Message-ID: <afucUhn-9PH9h4dr@intel.com>
References: <afot1cjSpeAjYzg2@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <afot1cjSpeAjYzg2@intel.com>
X-ClientProxiedBy: SJ0PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::13) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CY8PR11MB6817:EE_
X-MS-Office365-Filtering-Correlation-Id: d561c90d-83de-425a-17b5-08deaba936f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 9IvqHp5bp3irkSQAsFYg+UtnZhHMKvfRFBqpI/niQAy7YuilsM1rRTlAHeFqlvzc38EaMc/eu7qarBteIy4ie0fDVhr857tX67doNuA7D02o1m5NiMmoghJaDTcCIEWPYEySvHzbUf2Qm9Swap4BTO3Yyck1ZiJHFcoVKtMk7g+Xq1rAv5QXWW/V+2/5zszSDSBqrVfIMJs/qE8kXS+ONxhHAHTYM02mpwj4Wsn/Hn5CtlxWnAqHthRi+ZiKWLo/mURsXFdSrx5zziZHUD6M2p4Z3oQTH6e+u1jxsoPzNFZRWDUr+4N3yDQShWQ0LNrT+ANPIW4NHzAN192gO2c8BS37NSOIS1KwH0j7Fqwb3L4PzAy26vi2S1oFLHXMkMkV2qVZoZD2rWbloeLQSg2fLnc2mQbLesPrHnx0HUVbYtStpx9JKZXkZhIFYw/7omRfIAei4oZlqXPKloGGUBHIcGUHv6p23FIKqggiPycTH/V2azf8kO7LQtn2tQ7bY74KIvS0alAXgfc+DPq5FNJFH3Z3YuC6lbvnNVIqzwY0E0Yrkwl4hO00nzpPn1/woeEURVlm1caCA6GbA1N85t4bO9nnsrQHcQwfOcZleIv4NYQjCse18QPlRZ53wRST72We8Lt5cu53ie0yRyTt/EqoT7PJjHIgdu5hQykIoRMy+B5Fz5XYKMo7g5ERd+/d0JL5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ts9gRIllDkAl0jMFFdKgYKo1aRn7WtrJB5OEf9qYiWkQ7ekEn/IpmespDIk8?=
 =?us-ascii?Q?J61kEaSrth3z/pM5TZxUapDnG089dXScRwNDJgAPbkVNfI0MpeILPAc5Dswv?=
 =?us-ascii?Q?r1cBcTgxofORtZARjNkncjSBXKCIObLDbL5Zg/taA5q0bjjSWRNiCQdJfDuO?=
 =?us-ascii?Q?XmTuVDm/TFNm4ONWBLwITR31VHGJQc23VS8GrS2uKGT2RMSsswbR63yBcYaR?=
 =?us-ascii?Q?311FaUmtAs/9cJIq/U6DWPEzAFJv4oa/YeSei8PotxBPzw1A1Ix71w0atkTc?=
 =?us-ascii?Q?j3XbU1tBUk4waQhScYgJzcf0+yxjXnqLYMOqFKOQp3e2ZJO9cphNZVYRLeyI?=
 =?us-ascii?Q?DscFkYtjcKd4bjH2Cx7uwbtyEVkNEvByYS1mD7273NOxUwLYV6cpFIP9NZmh?=
 =?us-ascii?Q?W52dmtk4nejeaMgMLOk8AqTaUYq7pYj59IAxyadnmerqvUFmxfAuJ8fAEdB/?=
 =?us-ascii?Q?S75UraASa6LJ3zSYd0gKHGmhCMYhwJ0aHnBCdyaQPJNHo8HeMToPCe7vMiKx?=
 =?us-ascii?Q?eHrn78fvLzHt57/Rghpl4EQI1Sniow/TH6ryDdqLyajAUh9m21XtZWujCwGO?=
 =?us-ascii?Q?kiL2N8TRcmob6jPU9n/xyZFkc5hhz0QCWasX9iZctKN8jZQrGJSqWY8MZQqC?=
 =?us-ascii?Q?Mb246wamU9O1gHfiRvl/0TNOhaSJPXnPPyhIXPypMP8NEjdgM2vg9Dpr3v/h?=
 =?us-ascii?Q?97+xIkhpMBijyvRfmXXLjUBLWShSzztzsUJnVWl1aGJax1RRWKyWKoZ0wGjq?=
 =?us-ascii?Q?UFJ9S+tigUT60S67pyNVJByhlN7RSjQ3kh3MFfi9F/BV3XsJIZZi4nf2wAAX?=
 =?us-ascii?Q?tRYdiMdCkPYBl+70pCBgN0umrrZod5Ee1GnOqDJTIqi6MOU59wQxAgTCyzL3?=
 =?us-ascii?Q?W88+Kb9+WLCS9jkwA85XWtEjAEzrng7txEAtV6jZCvTtPYwMilfWcCfE5yXK?=
 =?us-ascii?Q?HXAO551O5hoefa482pFfgWA2IIg6xwEMz63ejHZawTDliSYVqqLut6fjR/ar?=
 =?us-ascii?Q?CxG2Ra2QTcCba32wktTHv7cWyCanC9K5j/13F9Udk7YEobGA3nMvsBub62EQ?=
 =?us-ascii?Q?t59TWFBkkt4mu6aBT7nlxUyVcQTR1ZamP/PKXelHrrnmCMejWvK7OvkR1u/D?=
 =?us-ascii?Q?4oMKpHugGnHvDSDL7hyKmHY2jOqNRKQJ8pphlzh5eaq7pcQ/1TBiv3kLk7T+?=
 =?us-ascii?Q?ySuRkEiwUT4RBfywfl0YTZ7Vq/e2TiW/iL1r6zfA0USBdY4HawDMLsfCyqO1?=
 =?us-ascii?Q?zWQN5dfkrvHuC3BArcF6ISyZ+U2r+sflAv7pEMNC5VTzYVCjjzGJJ15Ei4P7?=
 =?us-ascii?Q?pNyk4auukByZUy69zRPva3I2AUP8kvhA3Om4A2pCwxuOeErmQhTFl33BnIaY?=
 =?us-ascii?Q?N7OL0uew5lIMzXWeRv/+ZfL9LMSQHYVV1ECVBRK/MGP4JCHdq4axlkULsSNW?=
 =?us-ascii?Q?BAeo9V85xGil6Okueo4+oUzP4S3Jof13W6jTLqc6hUY2XIY8BSnBYq7bok89?=
 =?us-ascii?Q?KkFNmk7UOF4VfjqPm+8MNz7Kk2PJkDGlfzD7NAc+EwFdwFAGpaszvSSY+MKr?=
 =?us-ascii?Q?sEWVJcAQEhrPSlqhWwXuN1O4/GsPl5/nsfjW7lu2RHWp2BiCMckNWjLIgzUK?=
 =?us-ascii?Q?pYViTE3hdqc5n25Wz/yZFuqcS1kObD5/Di9NCv+WX5PtJAui1mIE5oBs+ILh?=
 =?us-ascii?Q?3Wrtiau6844bTiaeL1bSELRap0RXrR+qoXUJiu0zMp0N4WFKsVnJjHmeHfd4?=
 =?us-ascii?Q?EemgADmKbg=3D=3D?=
X-Exchange-RoutingPolicyChecked: qqFT/1ec9NxgvUcZjqYgoSeZi05K5jUUXFxdYvf82w+7T95mcUuL604iQ2J91n2BzE1ZjeYQ4KdYXF0f2St7PmI421k51ry5VeY0IUQ+0PSHBSNBose1J0T3L25njcWikx5aLDNU+oz9eT1yF5598zv5axo1SxLuSzOn0KOeoSI0rN7wr7yFAxaaqgGP3O2O8P2W4uaB3EMGo+auxAFSyhGBybh8hU/dgouI1OXDYFFWJLccljwLCcdH74KPFUpYa/w1MzsipouQBVNt9QL3o9GHptdgX0/UHU5B6oXIZNASJI8S1vYmokIJkq8BcTQwu3CspHX96ibvtZFUuhyQYg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d561c90d-83de-425a-17b5-08deaba936f9
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 19:53:59.6235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B1ENnMvHWexQGvHBhg8kda4nFUE6B4M6oD1VOGVhj4j+HPp8Gt2I6QrQRarCuWStkVurda+uHy8hzR3BQ9pKeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
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
X-Rspamd-Queue-Id: 16F304DFFBA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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

On Tue, May 05, 2026 at 01:50:13PM -0400, Rodrigo Vivi wrote:
> Hi Dave and Sima,
> 
> 
> Julian Braha (1):
>       drm/i915: replace select with dependency for visible DEBUG_OBJECTS

This patch breaks some build scenarious depending on your Kconfig.
we have a revert merged in the drm-intel-next:

b32b3cabf91e ("Revert "drm/i915: replace select with dependency for visible DEBUG_OBJECTS"")

Please let me know if you prefer a small PR with the few patches that we have
left now on drm-intel-next including this revert or if you intend to drop this
PR and I can prepare a bigger one.

Just let me know your preference here.

Sorry,
Rodrigo.

