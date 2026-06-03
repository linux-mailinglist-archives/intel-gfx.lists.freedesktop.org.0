Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FlitJtQTIGosvgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 13:45:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02359637304
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 13:45:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=gAmMuhD5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B0610FC82;
	Wed,  3 Jun 2026 11:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A931310FC81;
 Wed,  3 Jun 2026 11:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780487121; x=1812023121;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=4weZ62x2HmQTFwXYjz0Se68wEdCnva8bIgWFbL9mqYM=;
 b=gAmMuhD5PkNuUxG0DQnvqrilyiUA7AbzA6D5l7IxJmKMJ42L31q3/rIg
 Jtk6BTFSwBLGeLAKlC4drsll8I5IvZX4xqJcjEJwj9iILc/XmdX+3XzBw
 eXsEWXrVX+Q/w6jTYERuACql+Qgk04DOV6Ci8+XgEvvrcmKCGAwEC4q/I
 WH6diyOd2GTHO1lX4Wh3aFHaHMqupvBM5tGCWmwasmemMqSpHAH8jPn85
 4XCVAgUB8LECjON5EJQFMWGTaYKCSKmnUQngJrmalG+N/NR41ghmvY5eK
 Xvn5+ScSmdX6LI30xUD7wnwxhWC9pxV0C7snGn2E1BUjebN0c9RCwjE7J A==;
X-CSE-ConnectionGUID: vdV25ICDSNmlt9WCx0GosA==
X-CSE-MsgGUID: Mt72CePXQlKPsysDxEjtDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="92667997"
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="92667997"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 04:45:20 -0700
X-CSE-ConnectionGUID: O63r2kuaQxO+kS0LwOkJRg==
X-CSE-MsgGUID: EJo/SOJdSxKs64na9eVbWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,185,1774335600"; d="scan'208";a="239745898"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2026 04:45:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 04:45:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 3 Jun 2026 04:45:18 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.0) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 3 Jun 2026 04:45:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sKJO5YG1B5rdfVdhkTJpzZnGhGgO80Pm3Kt0VRVszVGLNXArTIlH+4z6Tu/nXNQW1qkm3CVKn/Dl1ZYzekkS7siGQtwzHl0MP2H5489dB0oq2OI+UhBo28qM7f/GdQJuhMwUrw+QIRGffAtj0Z0BhDdJNEurHyT0L5HZu4HyAKoPZE4kcdOkgo/Ku/ENtuIE7aUXAIVBzc5vIUkGWUtZvAetI973r2RdL6O+bIDSJ8skw/UsY6qboMJ41UymGc337TX7VAVac8DRq142f3fCp2ajrWru+tqIaY1kO0FLRTSmyFd7wDR15IH/1gCN5v9C8hTzRxYr9Wppoaj+b8V6aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BdQdq7P/avrITcXNYXX8COLQARWPmNRp5ieGKjoPvHE=;
 b=x/aBd0O9naiOf/VgFwXzWw3KP9pkcSckGcOwiJUMHQfXmelHD3WA9iQgEyF25f3eccnmTRVWPRx5h9aXzOio7Rz6AF7OSzo6ZMKYbXPnLeGPt18yI5BD05CxNk3fbdNjPglQwkdRBORqQL1edvuuRAP4Dj/ugChwZ178MKBxHvfvzevykfaF1FFfPy6YDnF8VawISBLH4GmU3t2MOq6Q9tSX6IYGOCr9bvklOwCsdbBCJbPxtAdawAyhfLw56WhCfR43sI1PrRwQia4PilYEBdRDgjyLacDHDnVPtrR9oEPFc/3/fSfBNCVf9mydwDiBXpKW3c5URv3eYWRTzWefGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5937.namprd11.prod.outlook.com (2603:10b6:a03:42c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 11:45:09 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Wed, 3 Jun 2026
 11:45:09 +0000
Date: Wed, 3 Jun 2026 14:45:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <uma.shankar@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: Mask RO bits in gen9_write_dc_state()
Message-ID: <aiATv_6EYar1AQHX@ideak-desk.lan>
References: <20260601090131.1840805-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260602113134.2477070-1-dibin.moolakadan.subrahmanian@intel.com>
 <9de0611a934b0a1fcfbcb5b78822611ee45cb2b9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9de0611a934b0a1fcfbcb5b78822611ee45cb2b9@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023967.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::33b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5937:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ae55d33-60c2-4ef8-d6fa-08dec165907b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: zb/NE8AM75yts1hE7QiQfY+7YpgQl4012mONIIo2QtREsIlm7HGnWFSEa2itvOEakp1O49RUWDwMMddrMw7Wih0iUZ8U6g+VjncMmLdlUoU+woWFxFZgJh/McZWJKaThJqi5E3Z9R/IS+migSkK8n1MNmrTGMgbzUGS/1r7pENYQKd8CLJeyTkJTYg1yCC/JOyXOuq489o79n84utD1mkLclJxmBsvQmSIEYCmJ+xOxdnzPdhDPHA90y+WChFGSNZeGIYjrHrGm3EjGjzIysAKquISpWF9cRtkWkWudlpsIO7B6iYWSCgc2MlUcIcBPtUQWA0ai+dwy3DnW8w1WnWSkUxcmjQVHv4qjLfx3xflG7dhvYQJXCIYFufdI9PU8wgu3WlE2AG9y70K0FvupoShefhVL2fE1yeO9/aaeD59ubHzWsGD9JxvkwxO+vR+7bEZUl99409zII8smGeDbYESbc5EOvAL8zsT+Z223RrpCSdyghMbpuMMKbEhxWF6G6dXQxo4zJC1bdxGnakM0+ht55yawkIOKIs9rRBulgt3MKbpoClS0/pK05ddCRb32Oi1zAtL3s/Dx5LVvHUxt470bD/ryVB71xzXPtZnCuS8bif4wmei2N3GQoClipx4D6OjDfNoaAA1FkbPRs8u+CVdo3bEoAHCmvq1mDwGw+qXyntwR9Jj/z54eGK8OK4aVm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gsdav9YGRDkd7n0Pvxtwl2hkkwHqg+ZHh15u9r4OzK9aJZ3ZG7LbzawFF3yl?=
 =?us-ascii?Q?y+LxB7D7KdL+UDkTvFpCrs3gkT5ZEr2yW3erqRumUOx4I600Xm96HMqlPktj?=
 =?us-ascii?Q?aSbEPK408c4HPLgASQOmJqcf7ePPe3YCMpmQ/RksBRGIjR2FimSEGCSeFFbq?=
 =?us-ascii?Q?KLNBs/uiUObdIKBLhI8+eHRD3CcflDBxiJQGHL5J5CV5oU9uhL0//OZjOXkH?=
 =?us-ascii?Q?cD3nCvryt8LIk2cdVWY917hNshfddOPIhIOx2hecGsIwdE3mtG3io/CLSyKB?=
 =?us-ascii?Q?Y3/S8VmXFtR6739K2fpv1KP2sKfF2KZUzlJBQ8uzNHP6/T4IvEbQQVsnypfK?=
 =?us-ascii?Q?VOkZSfORUgwPb+YbO+WrEpoV+xt1atDxDpHp+GKKLifuPGnSsBIrWt3Q1Pc1?=
 =?us-ascii?Q?2yP+Lh32o4NTqYWz+FsY2rgKVVkqf42jvvZLfFdAtpr8zox9JNDoFMA9hJjC?=
 =?us-ascii?Q?URe7nM/OwROH8JEwiREWJ3I6cVMd7JZLVP/GCkLgvFWnWP/RhEO34jRpmcdX?=
 =?us-ascii?Q?18PKtwuLv7zAtKbeEDIoQHtWIu/D5HofECArHtZiT8XGrPXcEZLNdITYuGOc?=
 =?us-ascii?Q?3ILIyGW+Clvzp4+VQ0LrtDDOek/rnQCRHlsvyTVhCfmgJNPO0yt0EDCao/2R?=
 =?us-ascii?Q?eJ4ZxEAdriw7cRzY6fC53LCEntRrW4sjx2DztkqQmJe3/cgImUXVqmIspfdx?=
 =?us-ascii?Q?xH89pWJhP00T2maXXoJ5ISgCzdJHJpeP+ZeuxL4j+0jZxLtOs9Z5ksYCRCFn?=
 =?us-ascii?Q?L6CEHs6AVy+05dGMoPhzpSLv490cP02llH3BhhdFWLJ0s5lXj1XqbNvEUNPO?=
 =?us-ascii?Q?uu5U9To5LBqqHNO5R1SsQUwMkaNxKhd7sJHrOUCjDccb5GQ1o9+nImkWNrO1?=
 =?us-ascii?Q?NNSAuwPrSYBQiZRiGK7r5P09ambuSEXgAUnTvv2MDf5AVO162bh2ukxQnnDv?=
 =?us-ascii?Q?vMFiao2D+8ftIGSzZeSAza/nMYcTsTTKXfuP0vpsxCXFPBbqXwxF7Jojqq6n?=
 =?us-ascii?Q?sPDUe/KDGKGRGK0ukOxFFatAbn9j3U0b3QXWZVdA/guJkTGW5s0otVyUK+aS?=
 =?us-ascii?Q?XEw53NxvVinLORcwNwEqTmPL3t6TMTyLzr8dwOLNL5MsHQjDJmK0WMZGjNty?=
 =?us-ascii?Q?dw6QsmGB+xyeitj885/ON5xlMRurmMgNqquKoX9NgJnbms+vfNuYwTIBkrQf?=
 =?us-ascii?Q?f65sp5xbx8VTD+31uC7d5Lrq+QMlDV+fH8jH/sMYJ/RtN6K//osDDBpSFbgL?=
 =?us-ascii?Q?pb9t+UaZQue2cv+om93WjGX+NdBGPOT4yw+0VOLLaGW/70Vl/yDzGcLevT32?=
 =?us-ascii?Q?3rqr0goTkEjF6AnRFnIjgH9yzE4uyR9hVOV+0HUKOpVgfuxAo5tWHiqxRBbA?=
 =?us-ascii?Q?5oiqEPiTCQ1Hz62K3JkfkPkq8vOJefDreqpasJ9Du1xGkF6zY9bahKKISfTh?=
 =?us-ascii?Q?Um147WLuAOPFwd8J2lNH1mPCvvCFdNxSAOS6imp40ABLuc1uUNNdQ7xM0Vea?=
 =?us-ascii?Q?9TzuoSyYhEyllI7YbF7ZWpHLn6l2A0fHEzGQCZw6QxgvxENiSwL16tR6Nen2?=
 =?us-ascii?Q?GhNUG+9ur2bje1g7dL6bkq5uSPgxjst8OjFPv6qVTyMQCw/gcoFAkDExRofp?=
 =?us-ascii?Q?aU0c/GR1IYig2ZcBFoIKghKQ5pscqpDypGs3IaD/NAv9JKSaQNOdISrid9v/?=
 =?us-ascii?Q?lADN1833ZMaKZY0/nxftbosecngJcpEDIh46wvVFZEAOeesJHbYwNUTbywo2?=
 =?us-ascii?Q?94QIwDTfQg=3D=3D?=
X-Exchange-RoutingPolicyChecked: YBX8+nAHCfXQX5weWBlZCpYl/n1HmKPRWutrG7TXKGfzOVspi9L6dDAq/vvDS6Kv3zdq5OH6+MNKR+xqETbdjeXuNjVKFZFs9iaDNSsAHU/LE4VWTq3uYJXNFrbvmQ1M0y2jA8ZmMomo67Kmr1hsBeCKI3wbxmKdSMlExBDMqmvh8gKihA8XYczLB69tnxQi9irO9OcuDr6pWXcSSOTsO8jmFPlLmYYnE9qs3GZT8IiyDcYIDBHB8EYhS3BNHGIDlyHRFUBOS6MElDUobYAgvBQHWPOic3cqWZE79H9MmC/+DjQ02j251dxxy41XpgQHug7RoChr1p3UeMIjQWz3Mw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ae55d33-60c2-4ef8-d6fa-08dec165907b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 11:45:09.4346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k+Bqo0HbkOV93ogkqy/n2Kd15Q0aMrOI/8Irf/+fmRdds5qb+A6rzkTT3v2/gPUZWIKPWpJ866QvI1EDMJkrjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5937
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
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:email,intel.com:from_mime,intel.com:replyto,ideak-desk.lan:mid];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 02359637304

On Wed, Jun 03, 2026 at 11:30:04AM +0300, Jani Nikula wrote:
> On Tue, 02 Jun 2026, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> > The DC_STATE_EN register has read-only status bits that are set by
> > hardware on some platforms. These bits may cause the read-back
> > verification loop in gen9_write_dc_state() to spuriously retry.
> >
> > Mask the RO bits from the read-back comparison to prevent
> > unnecessary retries.
> >
> > Changes in v2:
> > - Rename patch from
> >   "drm/i915/display: Use rmw in gen9_write_dc_state() to preserve non-DC
> > bits"
> >   to
> >   "drm/i915/display: Mask RO bits in gen9_write_dc_state()"
> > - Mask only RO bits rather than masking all non DC state bits
> >   in DC_STATE_EN.  As the register has also some clear-on-write flags,
> >   like 'Display DC*CO State Status DSI'(Imre Deak)
> >
> > Changes in v3:
> > - Limit ro mask to read-back comparison.
> >
> > BSpec: 49437,69115
> > Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> > ---
> >  .../i915/display/intel_display_power_well.c   | 24 +++++++++++++++----
> >  1 file changed, 20 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 04bd0dde5bed..ab0200701a73 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -726,12 +726,28 @@ static void assert_can_disable_dc9(struct intel_display *display)
> >  	  */
> >  }
> >  
> > +static u32 dc_state_ro_mask(struct intel_display *display)
> > +{
> > +	if (DISPLAY_VER(display) >= 20)
> > +		return BIT(10) | BIT(11);
> > +	else if (DISPLAY_VER(display) >= 13 && !display->platform.dg2)
> > +		return BIT(10);
> 
> Register contents need to be defined next to the register definition.
> 
> But even so, the caller already has the mask we want to change, I
> already suggested passing that in. What's wrong with that?

The mask used by the caller only contains the bits which the driver
changes. However I would like to know that writing all the other bits in
the register also take their effect, reflected by the read-back after the
write.

> BR,
> Jani.
> 
> 
> > +
> > +	return 0;
> > +}
> > +
> >  static void gen9_write_dc_state(struct intel_display *display,
> >  				u32 state)
> >  {
> >  	int rewrites = 0;
> >  	int rereads = 0;
> >  	u32 v;
> > +	/*
> > +	 * Mask out RO status bits from read-back comparison.
> > +	 * HW may set these bits independently, so exclude them
> > +	 * to prevent the verify loop from retrying due to RO bits mismatch.
> > +	 */
> > +	u32 ro_mask = dc_state_ro_mask(display);
> >  
> >  	intel_de_write(display, DC_STATE_EN, state);
> >  
> > @@ -743,7 +759,7 @@ static void gen9_write_dc_state(struct intel_display *display,
> >  	do  {
> >  		v = intel_de_read(display, DC_STATE_EN);
> >  
> > -		if (v != state) {
> > +		if ((v & ~ro_mask) != (state & ~ro_mask)) {
> >  			intel_de_write(display, DC_STATE_EN, state);
> >  			rewrites++;
> >  			rereads = 0;
> > @@ -753,10 +769,10 @@ static void gen9_write_dc_state(struct intel_display *display,
> >  
> >  	} while (rewrites < 100);
> >  
> > -	if (v != state)
> > +	if ((v & ~ro_mask) != (state & ~ro_mask))
> >  		drm_err(display->drm,
> > -			"Writing dc state to 0x%x failed, now 0x%x\n",
> > -			state, v);
> > +			"Writing dc state to 0x%x failed, now 0x%x (ro_mask=0x%x)\n",
> > +			state, v, ro_mask);
> >  
> >  	/* Most of the times we need one retry, avoid spam */
> >  	if (rewrites > 1)
> 
> -- 
> Jani Nikula, Intel
