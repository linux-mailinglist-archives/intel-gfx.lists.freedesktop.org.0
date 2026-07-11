Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IuRmEi6cUWrvGgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2026 03:28:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CFBD73FEF9
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2026 03:28:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dZUkU9UN;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC41110E18D;
	Sat, 11 Jul 2026 01:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A869010E18D;
 Sat, 11 Jul 2026 01:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783733291; x=1815269291;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=LY30+nH1vYyhUdIHgPqIUr1fjyd7hXVy+gv0CmyfISM=;
 b=dZUkU9UNk6v/zieoKftt/6nTI9KNY3/SZgqXLSTaRb8iPy3uQxH3UP41
 wnfoilGmr7iQdSa71h9T93p9vqaoGKS0ZRcgp4+GOP8SIHkVeiWtd7sOf
 HRYUlozfP943Mkk+Mi7s9Ts+OgFmfifzJBPSq0BPnWqqmA2Zn4BpK5k9f
 grCVHyYiqKTBuOug8N9QT5vxb1fBIfXW5drHe1LSWN0Fz4bb+3GkV8J0s
 eApOEsoyDULPivpH6b51vqaZFq60v8H7H8W2Q1Wiz4U7ktTydIQneutxC
 Dtyd4fjOS1PQvMOHsFEqLaYe2H4HazNBai3PkPMlB1dGYtqcWZre/Taql w==;
X-CSE-ConnectionGUID: XP91VmOEQn6pvnxJbIf7/A==
X-CSE-MsgGUID: 0enTuh+PTN6KogpGaRhzoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="86976220"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="86976220"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 18:28:10 -0700
X-CSE-ConnectionGUID: C62VP/+dTgO4ZQaDHG2jcw==
X-CSE-MsgGUID: FAAG0nqgQXSGu4h9Z9jb3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="250611386"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 18:28:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 18:28:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 18:28:09 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 18:28:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F8tsdOyHowwbZ16nM6wHR77IRwMvvD44dw62ndswOfeE45+mgCML4XgPsQaZZwhrD9gTgho9GivfbLqVbMw1cPnODZ8nrXDuPoNS1AVTcRjqrbMG4sPgwer+oCJChWu5zNEqnr5+nWyUUY0kaKRZzUd9wVneLIeNhV294xzqQvUsMbjndFSXkEKNliROgEskNsIOUDE17CuM4ve9449IQqUkLtBQFSIk+CsH2cu8QamIQbzIiKDFlatbE34mPhzsszRMnWMhY2Nxnwj7drzkHn9zv/XWPi7b45jZwtgP65+3CBaaCR5DaUjMEw8SIzAnEPy8/RFa2hoATjnPUdZmqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aUGFsVSNipH8pXh+iLuJ/lGmqrLEnFxSrzsz5Gqidq4=;
 b=ca/JRtV/ZY1SRBcNTZJQwkOtT+I3dd4zAmfWqQmIsIf8eZjcfC/1vNpMva4N5QV9O1sq51KXUWS48OfifXJYbjX2xG6cm9d0z4abtijsNBKNY3VKvV1GVjwD4fI66aVOTXeoxttr4+ZNAjkAFe2HnJKUkCeky0uskTBrDgSx7XL9KdhRXR2pJ+ogjyfXocxUqfc1q8KDl36DR6Nnu5yDJ6sr/jv4Q14Mm76w3N5I3yp9clgmpLr6DawoP5WHRu8Mjh3F1WJzLSLI3uKGstdmeBk1+et8k7oTAuZ2QCPFeGOYPfOzLpc+3s2brFISNdlzRjJwp7yXoz8uuE2tSNj+Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by LVUPR11MB9591.namprd11.prod.outlook.com (2603:10b6:408:3a2::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Sat, 11 Jul
 2026 01:28:02 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0181.016; Sat, 11 Jul 2026
 01:28:01 +0000
Date: Fri, 10 Jul 2026 18:27:58 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <christian.koenig@amd.com>
CC: <thomas.hellstrom@linux.intel.com>, <dakr@kernel.org>,
 <ecourtney@nvidia.com>, <simona@ffwll.ch>, <nat@pixelcluster.dev>,
 <airlied@gmail.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 01/12] dma-buf: Add reference counting to dma_resv
Message-ID: <alGcHjo9fzhHshx8@gsse-cloud1.jf.intel.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-2-christian.koenig@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260710190752.2355-2-christian.koenig@amd.com>
X-ClientProxiedBy: MW3PR05CA0013.namprd05.prod.outlook.com
 (2603:10b6:303:2b::18) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|LVUPR11MB9591:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d919bce-dc7a-4cb5-dd5c-08dedeeba5b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|23010399003|366016|6133799003|11063799006|56012099006|22082099003|18002099003|4143699003;
X-Microsoft-Antispam-Message-Info: 8d600VgrbtVM9gayjLpx6TBoK0EMx092AiR+FdByBEzBLbOoKGQP9t1auHFbxsrL0f223QoXn8nARKuPiPZZE6Xnp4yPInr7I+quuZ4bs/3fEMjIaSMx/54rIAY9XoO5nox5BWReDS2+LtgTNF2NaiVQveWpM2QVr14jraPAMGBYlXGDjF5XIAWhPs4SMg3o4uAyHju3UkaqGjlBvojn5MfCErSRXagEbSVN5rlU2LRnxTdieVPhZJ+6OuNbNHwLWROk3DyxBdrmiXBaS4JXMCo59QDKEOeg84T4VymuON/qNtUMyLDCNTc3V2WNrtaVaDKLdZZqx4fk839AMkzezYSn0neUKojXFNNmnXg8FA2g6tJKhYvhtQAVNMgUd9rAkpO5T48NdW7k9FeopHS2WY2KA+83zb4JiazPOoWnSB8IbCRe0jNNwnX1Ib8teD/W6BOIxHw7Ha2z+Xezhi0Hu6rBb7bcDGdgF4Qpu0ieaMRV/MAM5M4902q08kDlPo9pCBUgyVhitQ1QtbKVrHY2JZ2xqVV6/CUvNg+Egkh5U0COky4uF63RSMbTMnoKUN9lr4qQZN0NTckyUANemwGRkh0lBEqJvemyw/kqdPlpDUt93WJU/xMhnjAYevBDQdR9UNMTt0VT+GCTD8PSC79/yoru+sweMF+CCDcHaK0KOHs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(23010399003)(366016)(6133799003)(11063799006)(56012099006)(22082099003)(18002099003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?RjTwK+h+MUGC4q6h+oWmMZuVoVVn9917FhclLTk2XbbJ9wOBIHpsNNNnGd?=
 =?iso-8859-1?Q?/fuaqAVt5T6mNr6hfNueoZCIqaJg6Fp8wRE+RAQ4POAt0rnVxeuhekhSro?=
 =?iso-8859-1?Q?+E5NPak+E94YW+ImTuwpv3caGgDTlxCpZiF6AAywRvtjjm5lW8PeHmhKGr?=
 =?iso-8859-1?Q?aDbokBGOKzpMRscRdDhOZ3dFu9fO8auXhcmeqNU70rjDuvHemu/1aBaWgt?=
 =?iso-8859-1?Q?ZxiCVgV7qEzbwb/GVnkV2RpYxDP++zDXLfvk8vYyufLFsZ/x2pdvAuOOJe?=
 =?iso-8859-1?Q?d+YiFa+7Ra9zzm4oOYRs/h+vtRUQI0UirkkSsj5rGaXvtupjizY0pJXIFn?=
 =?iso-8859-1?Q?6fbOfmtIAsHsAmTe/JxX1rzcDDNN066YtYVaONDIeXVULBzALsOdlp8MBo?=
 =?iso-8859-1?Q?FkODbdJZwHrA5OcdILVr8UU2gA3tUp5W6FdzfEN6kDKsLb1zRIMC1Zb9FH?=
 =?iso-8859-1?Q?g/sdQ9Ur67ruiV2+ulbj6lOZBhtD8qkik+ebk1FrpbwOpQZUapcJT0+usw?=
 =?iso-8859-1?Q?9ju9GcMHcaOm6YgrOp48KVsp8OuN8fWR5Oeq7qFDGk5hB72vhwf1HJgYvj?=
 =?iso-8859-1?Q?SotKmtw7Sn9PyKe9ATNtJwwTdR8JvjwQlYagzOOxLx72XQp8H9bV1J8PmR?=
 =?iso-8859-1?Q?nfsYREmxjUHF0iIdKT754zHScHQ/aP9YAjTBeGi3tGqIlnUc9lNJ5ce12G?=
 =?iso-8859-1?Q?2tR32y9S9oNIxczu5PWz7+33JCXDWNtmMm/yePURRwyTqkpzDYBTlT63Gv?=
 =?iso-8859-1?Q?sOsNb+ip7tRgsqXvJdW0Y18cixzmpuDSFAdd9pD3YAtSRBX9b8u0G4pv+J?=
 =?iso-8859-1?Q?V9TQnApcuBUMHAV4bTcJy2Yg4o9n1zIq1Fb0EubqMrGQLwpZSwDPW0oKqC?=
 =?iso-8859-1?Q?zVjVy11F0YsAtGTbuDWaMRzy3zY1KksTx4luIe5Oa93N40FV394TrjOIpE?=
 =?iso-8859-1?Q?PnnhKt8f/cyYYoE80eOyv29h4PXoV4O/2RzwwzjRAdrvzkvTeFLuskdPl6?=
 =?iso-8859-1?Q?1U6Sqp644H5f6myar9cJFc8c8or6CbQVOQQ9aQU5CwkB6M+KRe5ISoOTYh?=
 =?iso-8859-1?Q?Hxo2JhGDf8FyltGum3+u+aTN9+AJuCvjKUnOTrzyq9Q02EltcHCogBpGZw?=
 =?iso-8859-1?Q?McBOySee9nl6UEnC7MGcZgGIeEiCQ+9iW+q7Hcu1I9QR7r+au4qCaVEnXC?=
 =?iso-8859-1?Q?q2GsEufw2F4dFHL1j8S8z+rBO2a2gF7he1NFlwbehF2iBx4lxauXr8DEaJ?=
 =?iso-8859-1?Q?Y0dBA0rIne3n8JRdSlzgPOTsZnb8K7vt6cyU3i3LcZprKemhoJHJbvEwje?=
 =?iso-8859-1?Q?23k1+jCk8B9sfaZwjIET8MDu501voEfWhiRXTynrh2YSmSd1Wv5VGaq4KU?=
 =?iso-8859-1?Q?YxSGRIu5zw7q+fL06GbQtlFpBmVoW5wZbHyBG2etxxK42HESBWuN5EHwZ2?=
 =?iso-8859-1?Q?g6MofJxWwUF19T5CXqmKhQafEWxiEz4Q9ceFb9ynqYPH2gV8IkAxUeMGn1?=
 =?iso-8859-1?Q?xcoAnTIKmiE4u4I7z/sUh1XY/c8FqeuO2rqo6R9QW7u4hh+4bPkm4TkFa1?=
 =?iso-8859-1?Q?Ae2stW0/IU8V0ZlhZ4tWMN0FmmQGrO+JVgVezOvEElrGawOHpLaHLahfBT?=
 =?iso-8859-1?Q?QJjqOg7zB/fdlWkHSi2ApW7Il/+DYQOfCzmWuEV/LjvvWOJcps5azCv51Z?=
 =?iso-8859-1?Q?DgzXRYTzkxy4kJ1S1YTXiSyN8izT3rogFhyml2M4nlVDpG1ZZE+Li98S5l?=
 =?iso-8859-1?Q?acaxMKbuQr7L1xZV75MZ6RXdkcdM/esmFw3/XjKsi2xSjx1cQfa7chjlJb?=
 =?iso-8859-1?Q?PFOgdWzXnw=3D=3D?=
X-Exchange-RoutingPolicyChecked: KwSWcYj3T4BJClE96zDDoLjV5pa08vXkLuPC5Ial4QcgXuVs0EFbJ14ey/7ne/jJ1xpAG5QBezT9pQRrcE5Zx67KS5hhIvRifqz/42bLOIgWuQyXdSxa4D0nBKQaTJUwWSlK1ZJ1VnwtvdJG5jVsJ8dlkUtC27ldJhhF3Cbgoh+J6qfchYt1ZHlAku78Mo3pczKopt9ADFFFvWfv50vJfToTHlO4XlDeqNrnTslGJrvPCIK2uOTLlLCu4p4IjD6bwJnGf1nhg+95vnr5vscK/GjjUCB/hFaTOkjmTV9owasQElsnGkVN6+YuR0GmBUFEnOwMptHp6E1Qwzz4hzBGSg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d919bce-dc7a-4cb5-dd5c-08dedeeba5b0
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2026 01:28:01.3816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NyGBVkkRZwN5sLlFIPbkqb/3jcnpDbPxLZ0DCyOpsGXYejyQKs3MAkANpUVs+3NiJPR0iuNRWxU4BLSXH0qZqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LVUPR11MB9591
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,nvidia.com,ffwll.ch,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:email,gsse-cloud1.jf.intel.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2CFBD73FEF9

On Fri, Jul 10, 2026 at 08:52:41PM +0200, Christian König wrote:
> Introduce reference counting for dma_resv objects to better manage their
> lifecycle. This replaces the previous approach where dma_buf would either
> embed a dma_resv or allocate it inline using a size trick.
> 
> Add three new functions:
> - dma_resv_alloc(): allocates and initializes a dma_resv with refcount
> - dma_resv_get(): acquires a reference to a dma_resv
> - dma_resv_put(): releases a reference, freeing when count reaches zero
> 
> Update all callers to use dma_resv_put() instead of dma_resv_fini(),
> which now becomes an internal cleanup function. The dma_buf export path
> now explicitly allocates the dma_resv when needed rather than using
> pointer arithmetic tricks.
> 
> This provides clearer ownership semantics and makes the code more
> maintainable by removing the embedded allocation hack.
> 

This looks a lot better to me. In particular, I agree with the last
sentence in the commit message.

I'm confident enough in this to say:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

However, given that this is a community-wide change, I'd wait for at
least one other person to give it their blessing as well.

Matt

> Signed-off-by: Christian König <christian.koenig@amd.com>
> Assisted-by: Claude:Sonnet 4
> ---
>  drivers/dma-buf/dma-buf.c                  | 24 +++----
>  drivers/dma-buf/dma-resv.c                 | 80 +++++++++++++++++++---
>  drivers/dma-buf/st-dma-resv.c              | 10 +--
>  drivers/gpu/drm/drm_gem.c                  |  2 +-
>  drivers/gpu/drm/drm_mode_config.c          |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c |  2 +-
>  drivers/gpu/drm/i915/gt/intel_ggtt.c       |  4 +-
>  drivers/gpu/drm/i915/gt/intel_gtt.c        |  2 +-
>  drivers/gpu/drm/nouveau/nouveau_bo.c       |  2 +-
>  drivers/gpu/drm/ttm/tests/ttm_bo_test.c    |  2 +-
>  drivers/gpu/drm/ttm/ttm_bo_util.c          |  2 +-
>  include/linux/dma-resv.h                   | 22 +++++-
>  12 files changed, 117 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index d504c636dc294..53e428fdaf6bd 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -182,8 +182,7 @@ static void dma_buf_release(struct dentry *dentry)
>  
>  	dmabuf->ops->release(dmabuf);
>  
> -	if (dmabuf->resv == (struct dma_resv *)&dmabuf[1])
> -		dma_resv_fini(dmabuf->resv);
> +	dma_resv_put(dmabuf->resv);
>  
>  	WARN_ON(!list_empty(&dmabuf->attachments));
>  	module_put(dmabuf->owner);
> @@ -707,10 +706,9 @@ static struct file *dma_buf_getfile(size_t size, int flags)
>   */
>  struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
>  {
> -	struct dma_buf *dmabuf;
>  	struct dma_resv *resv = exp_info->resv;
> +	struct dma_buf *dmabuf;
>  	struct file *file;
> -	size_t alloc_size = sizeof(struct dma_buf);
>  	int ret;
>  
>  	if (WARN_ON(!exp_info->priv || !exp_info->ops
> @@ -731,12 +729,7 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
>  		goto err_module;
>  	}
>  
> -	if (!exp_info->resv)
> -		alloc_size += sizeof(struct dma_resv);
> -	else
> -		/* prevent &dma_buf[1] == dma_buf->resv */
> -		alloc_size += 1;
> -	dmabuf = kzalloc(alloc_size, GFP_KERNEL);
> +	dmabuf = kzalloc_obj(*dmabuf);
>  	if (!dmabuf) {
>  		ret = -ENOMEM;
>  		goto err_file;
> @@ -754,10 +747,13 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
>  	INIT_LIST_HEAD(&dmabuf->attachments);
>  
>  	if (!resv) {
> -		dmabuf->resv = (struct dma_resv *)&dmabuf[1];
> -		dma_resv_init(dmabuf->resv);
> +		dmabuf->resv = dma_resv_alloc();
> +		if (!dmabuf->resv) {
> +			ret = -ENOMEM;
> +			goto err_dmabuf;
> +		}
>  	} else {
> -		dmabuf->resv = resv;
> +		dmabuf->resv = dma_resv_get(resv);
>  	}
>  
>  	file->private_data = dmabuf;
> @@ -770,6 +766,8 @@ struct dma_buf *dma_buf_export(const struct dma_buf_export_info *exp_info)
>  
>  	return dmabuf;
>  
> +err_dmabuf:
> +	kfree(dmabuf);
>  err_file:
>  	fput(file);
>  err_module:
> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index 39a92d9f24136..1251b18e1b540 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -36,6 +36,7 @@
>  #include <linux/dma-resv.h>
>  #include <linux/dma-fence-array.h>
>  #include <linux/export.h>
> +#include <linux/kref.h>
>  #include <linux/mm.h>
>  #include <linux/sched/mm.h>
>  #include <linux/mmu_notifier.h>
> @@ -137,26 +138,87 @@ static void dma_resv_list_free(struct dma_resv_list *list)
>   */
>  void dma_resv_init(struct dma_resv *obj)
>  {
> +	kref_init(&obj->refcount);
> +	obj->allocated = false;
>  	ww_mutex_init(&obj->lock, &reservation_ww_class);
>  
>  	RCU_INIT_POINTER(obj->fences, NULL);
>  }
>  EXPORT_SYMBOL(dma_resv_init);
>  
> -/**
> - * dma_resv_fini - destroys a reservation object
> - * @obj: the reservation object
> +/*
> + * dma_resv_release - release function for kref
> + * @kref: the kref inside the dma_resv object
> + *
> + * This is called when the last reference to a dma_resv object is released.
> + * Cleans up the object and frees it if it was allocated by dma_resv_alloc().
>   */
> -void dma_resv_fini(struct dma_resv *obj)
> +static void dma_resv_release(struct kref *kref)
>  {
> -	/*
> -	 * This object should be dead and all references must have
> -	 * been released to it, so no need to be protected with rcu.
> -	 */
> +	struct dma_resv *obj = container_of(kref, struct dma_resv, refcount);
> +
>  	dma_resv_list_free(rcu_dereference_protected(obj->fences, true));
>  	ww_mutex_destroy(&obj->lock);
> +	if (obj->allocated)
> +		kfree(obj);
> +}
> +
> +/**
> + * dma_resv_alloc - allocate and initialize a reservation object
> + *
> + * Allocates a new dma_resv object, initializes it, and returns it with a
> + * reference count of 1. The object must be freed with dma_resv_put() when
> + * no longer needed.
> + *
> + * Returns:
> + * A pointer to the allocated dma_resv object, or NULL on allocation failure.
> + */
> +struct dma_resv *dma_resv_alloc(void)
> +{
> +	struct dma_resv *obj;
> +
> +	obj = kzalloc_obj(*obj);
> +	if (!obj)
> +		return NULL;
> +
> +	dma_resv_init(obj);
> +	obj->allocated = true;
> +
> +	return obj;
> +}
> +EXPORT_SYMBOL(dma_resv_alloc);
> +
> +/**
> + * dma_resv_get - acquire a reference to a reservation object
> + * @obj: the reservation object
> + *
> + * Increments the reference count on the dma_resv object.
> + *
> + * Returns:
> + * The dma_resv object pointer for convenience.
> + */
> +struct dma_resv *dma_resv_get(struct dma_resv *obj)
> +{
> +	if (obj)
> +		kref_get(&obj->refcount);
> +	return obj;
> +}
> +EXPORT_SYMBOL(dma_resv_get);
> +
> +/**
> + * dma_resv_put - release a reference to a reservation object
> + * @obj: the reservation object
> + *
> + * Decrements the reference count on the dma_resv object. When the reference
> + * count reaches zero, the object is cleaned up with dma_resv_fini() and freed
> + * if it was allocated by dma_resv_alloc().
> + */
> +void dma_resv_put(struct dma_resv *obj)
> +{
> +	if (obj)
> +		kref_put(&obj->refcount, dma_resv_release);
>  }
> -EXPORT_SYMBOL(dma_resv_fini);
> +EXPORT_SYMBOL(dma_resv_put);
>  
>  /* Dereference the fences while ensuring RCU rules */
>  static inline struct dma_resv_list *dma_resv_fences_list(struct dma_resv *obj)
> diff --git a/drivers/dma-buf/st-dma-resv.c b/drivers/dma-buf/st-dma-resv.c
> index 0b96136bbd546..2c43d2d2b0169 100644
> --- a/drivers/dma-buf/st-dma-resv.c
> +++ b/drivers/dma-buf/st-dma-resv.c
> @@ -59,7 +59,7 @@ static void test_sanitycheck(struct kunit *test)
>  		KUNIT_FAIL(test, "Resv locking failed\n");
>  	else
>  		dma_resv_unlock(&resv);
> -	dma_resv_fini(&resv);
> +	dma_resv_put(&resv);
>  }
>  
>  static void test_signaling(struct kunit *test)
> @@ -101,7 +101,7 @@ static void test_signaling(struct kunit *test)
>  err_unlock:
>  	dma_resv_unlock(&resv);
>  err_free:
> -	dma_resv_fini(&resv);
> +	dma_resv_put(&resv);
>  	dma_fence_put(f);
>  }
>  
> @@ -160,7 +160,7 @@ static void test_for_each(struct kunit *test)
>  err_unlock:
>  	dma_resv_unlock(&resv);
>  err_free:
> -	dma_resv_fini(&resv);
> +	dma_resv_put(&resv);
>  	dma_fence_put(f);
>  }
>  
> @@ -231,7 +231,7 @@ static void test_for_each_unlocked(struct kunit *test)
>  	dma_resv_iter_end(&cursor);
>  	dma_fence_signal(f);
>  err_free:
> -	dma_resv_fini(&resv);
> +	dma_resv_put(&resv);
>  	dma_fence_put(f);
>  }
>  
> @@ -282,7 +282,7 @@ static void test_get_fences(struct kunit *test)
>  		dma_fence_put(fences[i]);
>  	kfree(fences);
>  err_resv:
> -	dma_resv_fini(&resv);
> +	dma_resv_put(&resv);
>  	dma_fence_put(f);
>  }
>  
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index 018df97d590dc..48176a11d5520 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -249,7 +249,7 @@ void drm_gem_private_object_fini(struct drm_gem_object *obj)
>  {
>  	WARN_ON(obj->dma_buf);
>  
> -	dma_resv_fini(&obj->_resv);
> +	dma_resv_put(&obj->_resv);
>  	mutex_destroy(&obj->gpuva.lock);
>  }
>  EXPORT_SYMBOL(drm_gem_private_object_fini);
> diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
> index f432f485a914c..b2d98eab380bf 100644
> --- a/drivers/gpu/drm/drm_mode_config.c
> +++ b/drivers/gpu/drm/drm_mode_config.c
> @@ -681,7 +681,7 @@ int drmm_mode_config_init(struct drm_device *dev)
>  
>  		drm_modeset_drop_locks(&modeset_ctx);
>  		drm_modeset_acquire_fini(&modeset_ctx);
> -		dma_resv_fini(&resv);
> +		dma_resv_put(&resv);
>  	}
>  
>  	return drmm_add_action_or_reset(dev, drm_mode_config_init_release,
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 5172d39826548..384c74794fdc1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -144,7 +144,7 @@ void __i915_gem_object_fini(struct drm_i915_gem_object *obj)
>  {
>  	mutex_destroy(&obj->mm.get_page.lock);
>  	mutex_destroy(&obj->mm.get_dma_page.lock);
> -	dma_resv_fini(&obj->base._resv);
> +	dma_resv_put(&obj->base._resv);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 64ca5bbc53c68..3cc8df7b8fad1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1140,7 +1140,7 @@ void i915_ggtt_driver_late_release(struct drm_i915_private *i915)
>  	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>  
>  	GEM_WARN_ON(kref_read(&ggtt->vm.resv_ref) != 1);
> -	dma_resv_fini(&ggtt->vm._resv);
> +	dma_resv_put(&ggtt->vm._resv);
>  }
>  
>  static unsigned int gen6_get_total_gtt_size(u16 snb_gmch_ctl)
> @@ -1524,7 +1524,7 @@ static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>  		ret = intel_ggtt_gmch_probe(ggtt);
>  
>  	if (ret) {
> -		dma_resv_fini(&ggtt->vm._resv);
> +		dma_resv_put(&ggtt->vm._resv);
>  		return ret;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index afbc5c7693089..7b1bdb121c88d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -225,7 +225,7 @@ void i915_vm_resv_release(struct kref *kref)
>  	struct i915_address_space *vm =
>  		container_of(kref, typeof(*vm), resv_ref);
>  
> -	dma_resv_fini(&vm->_resv);
> +	dma_resv_put(&vm->_resv);
>  	mutex_destroy(&vm->mutex);
>  
>  	kfree(vm);
> diff --git a/drivers/gpu/drm/nouveau/nouveau_bo.c b/drivers/gpu/drm/nouveau/nouveau_bo.c
> index 0e8de6d4b36f7..67c9d32f4f27b 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_bo.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_bo.c
> @@ -160,7 +160,7 @@ nouveau_bo_del_ttm(struct ttm_buffer_object *bo)
>  
>  		drm_gem_object_release(&bo->base);
>  	} else {
> -		dma_resv_fini(&bo->base._resv);
> +		dma_resv_put(&bo->base._resv);
>  	}
>  
>  	kfree(nvbo);
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_test.c b/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> index f3103307b5df9..49b0b48c6c2ac 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> @@ -376,7 +376,7 @@ static void ttm_bo_unreserve_bulk(struct kunit *test)
>  	ttm_resource_free(bo1, &res1);
>  	ttm_resource_free(bo2, &res2);
>  
> -	dma_resv_fini(resv);
> +	dma_resv_put(resv);
>  }
>  
>  static void ttm_bo_fini_basic(struct kunit *test)
> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
> index 3e3c201a02226..029c218f9fb47 100644
> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> @@ -207,7 +207,7 @@ static void ttm_transfered_destroy(struct ttm_buffer_object *bo)
>  	struct ttm_transfer_obj *fbo;
>  
>  	fbo = container_of(bo, struct ttm_transfer_obj, base);
> -	dma_resv_fini(&fbo->base.base._resv);
> +	dma_resv_put(&fbo->base.base._resv);
>  	ttm_bo_put(fbo->bo);
>  	kfree(fbo);
>  }
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index c5ab6fd9ebe8c..4d12519df34e1 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -44,6 +44,7 @@
>  #include <linux/slab.h>
>  #include <linux/seqlock.h>
>  #include <linux/rcupdate.h>
> +#include <linux/kref.h>
>  
>  extern struct ww_class reservation_ww_class;
>  
> @@ -153,6 +154,23 @@ static inline enum dma_resv_usage dma_resv_usage_rw(bool write)
>   * drm_gem_object with the same scheme.
>   */
>  struct dma_resv {
> +	/**
> +	 * @refcount:
> +	 *
> +	 * Reference count for this reservation object. The object is freed
> +	 * when the reference count reaches zero via dma_resv_put().
> +	 */
> +	struct kref refcount;
> +
> +	/**
> +	 * @allocated:
> +	 *
> +	 * True if this object was allocated by dma_resv_alloc(), false if
> +	 * embedded in another structure. Used to determine whether to free
> +	 * the object memory in the release function.
> +	 */
> +	bool allocated;
> +
>  	/**
>  	 * @lock:
>  	 *
> @@ -465,7 +483,9 @@ static inline void dma_resv_unlock(struct dma_resv *obj)
>  }
>  
>  void dma_resv_init(struct dma_resv *obj);
> -void dma_resv_fini(struct dma_resv *obj);
> +struct dma_resv *dma_resv_alloc(void);
> +struct dma_resv *dma_resv_get(struct dma_resv *obj);
> +void dma_resv_put(struct dma_resv *obj);
>  int dma_resv_reserve_fences(struct dma_resv *obj, unsigned int num_fences);
>  void dma_resv_add_fence(struct dma_resv *obj, struct dma_fence *fence,
>  			enum dma_resv_usage usage);
> -- 
> 2.43.0
> 
