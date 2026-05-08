Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMGzB2/Z/Wl2jgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:39:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814C74F6717
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:39:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74CD310F4A5;
	Fri,  8 May 2026 12:39:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LsqOpSiE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A1D10F49C;
 Fri,  8 May 2026 12:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778243947; x=1809779947;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=CSEd1l2Ns1J9GpL1vod4RXVgUnlaa4pl0ZmmeyXWiCU=;
 b=LsqOpSiEFIiZ1mPD0BTzrRkk4w9UvVEYb9JvH3MvN8U1fIguHuN9mJZc
 fpDppSR34baHtLY5MlvnKcr0KY9yKaW3d/h44uwdsCNGcy1cpNw3MAdgc
 E5tgqsPy9uz9ffPLe8axPY3zvjnbpvmiycKWPf7Y1AIhpiYQ8LT5+XPLW
 SrhGgj6DOANb7GcjthGUtOfppI5hzJM4vVSnM6UIGTxee8isgbEQo7WuC
 6LAvTD1pkK6qcM1eTBtHyVmBFloCkvEJlm2UFiGgM9Kl0VYgBbfBNvyVt
 6dL723ZonjXN0QtR5Y0vjZUYMxn2XCN2GHa/FpB4sA+QQk6mwbrUndlku g==;
X-CSE-ConnectionGUID: KOT1ETj1RBKjIAhwD0X6OQ==
X-CSE-MsgGUID: yQA/kMDXRR+fgvj9TrujHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="101882982"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="101882982"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:39:07 -0700
X-CSE-ConnectionGUID: 6lMuSkEGS+6U3vEPo1dY8w==
X-CSE-MsgGUID: IfjFiv2uSc2MXnGQoiCv4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="267136503"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:39:06 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 05:39:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 05:39:06 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 05:39:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LehfL5KjeF8CeXhcQz9MreVWcNZkcn1h8fJuTROXAUOQ2DaqOr2sj3eDh1311gRNfGwmlQuy0CZrgMFYxP3F2Zk9hB9apF/xqmEz78IhqJR/soEJ/mIw89vJuWmnr0wsCol0+EVkeQF3bG0Vva9yl2yIi7W5MF3njHr55M3+JK9zzRsA8k8EKd2hBRJyaDh1x2mAUJ8REllTKEzvhGSKQI1ACLw21/ggEnUft5hyZV4uofy4U+CMkcddCkCz6PZJ3SNTEvLWYvO7aCebIoPttuLcmmVd0cTYGn1zlVLgL4yMUObMc1yfFRP16sK+v/wES9w0akRED1mH3gR2Ev3EpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tEdbm1KMsEOnndW44s18VfGE/NPkDlydBmD78V0mLyc=;
 b=oFCDgRqlqe7Vib0NOhBKaHHER00HoUsUU0bvh9Se5o0Wt6LR3hFD67FHi2hdNPPkCI0uECmnG4RPBU6Rkg8trSdxqGrhHfwSGxnE+rGbHbupNNmQigmqMNwYIE5QlnH959oLqTaiQP52nOqJ2/tYqtAzL6VlgjPvi7wYNJto1Ark4JzGM+HiMHvAk54qbOpuW+zTqjgh9RwT6BtyIoXrCwGRGdll/Ryl20PmPq6an3BpVFMRqcdK+K/c3gQrFZ5pg4i1honZtxJUrw4XEFAHEYWnYMVfBxXg4mi2eSbFlnuOg+kjrdXM6D3gyynZN0Tvegr+dFC35WEGLmCM2CsMzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by EAYPR11MB9948.namprd11.prod.outlook.com (2603:10b6:303:2d2::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.18; Fri, 8 May
 2026 12:39:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 12:39:02 +0000
Date: Fri, 8 May 2026 15:38:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/ddi: Fix cleanup after DP connector init
 failure
Message-ID: <af3ZX8JZHwo91I6t@ideak-desk.lan>
References: <20260507065940.2046690-1-imre.deak@intel.com>
 <789f07e13b359dff1f4fb273a4a27dea7eb51883.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <789f07e13b359dff1f4fb273a4a27dea7eb51883.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF0001A326.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::68f) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|EAYPR11MB9948:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b6a1bcb-52bf-48dd-5b5c-08deacfec8c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|3023799003|18002099003;
X-Microsoft-Antispam-Message-Info: kSkQCpB0qBmoTdkRsLjRcjz/Zde7iPhcWedFG/rH5t3CDMu0NKy3n9d0hlUFdN92G6b62lHtJYI3DMyhxuYS81/iQpGUqdsfAfb0pesxkRxaIdCcb+myp7WUEQcaTVbC9xiV+PtLndLb/KV5lHbVvAOmaD9zd/OvhgvbNEbeoC97QtqjgWdTiMRAWX169ZGyls4oigezsHQjPK9bKD0demhJ6kKO+1GwCDjdH9JrMqhLgnPu0csr657ApkL1q4R8BC/wkWEy+zXvXOBkTUXtKM3p0U49g9ggBOpPD3d8dZh1weqVwhmD/BiS//QOyv+R3LtxPUIrzMzsizMB3mW9/lBMdTWaPRfP/ZxJnTp6R1zvZrEal/9qcvxXl6QcrdFiVmpOMapnkwWOuU+AmNTmGD7zcRgDAh63MFuRxwp4cwaop7qE6PDkpZooqw3542uuFrhc9+FlNuEa7f/wPGbiikzzebXLWSoIrms7kba7j5J3vMffIy1KvIcpP4HV7+87kprriin3FBd7vRnXSfRUBN+qIhtgW3r8icBXbaccXlCFUoEBhpnsaKTPi0IFFLicYjSxWQLSlql++C5bKUBfYRLimzmvyeqvU63ynAbdPHua3deVzMyK4vZYgAE7V8G8SKwhtn0XgAcrVoNL3KWVLm+o6UDWTZTvkM99vHXFnBpXA5ENJAU5ibYHsG7I9Jna
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(3023799003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?gXRahOpBP/8v1wBn3Q+siJH5zDHh5UEZIJYFqOluNQmTOB1XJu9HL3dP0+?=
 =?iso-8859-1?Q?zgER+NrH0QC2D9ggtSfTrJ4BltiX2hXxIPxhcAN5WTotoebyF2paCUiftw?=
 =?iso-8859-1?Q?GKO7X/rrqZC985Ah0Jo7yoKX6eUMtSDG1bYGRZescaSybKpc8ZDIhCA3BH?=
 =?iso-8859-1?Q?Eh/t4bCk66RHwOSlPPQLKr0ehlpOlPdQgglus62kIoVJERwRIVXfL6Tm8O?=
 =?iso-8859-1?Q?ByknUqlzbeGnRo7hqd2R2RtWZVhVJM51z2iTI2iUPIK4xzzLIEBcxF2oW9?=
 =?iso-8859-1?Q?6Z6hP4PXtz/Mm2dLLIfr/eXx0gCoW1YIMDSpRQwyHyZTTn45FbDaNYEQG4?=
 =?iso-8859-1?Q?4cWYhSlc56bKFYViJF6rUKyMajcarpmPKdIZHbDj7V+k7L1dguJ9mVqjFb?=
 =?iso-8859-1?Q?Uph0k+3ZVK/DTCVrp3n0gNM1RNI9Datt1Iugb5Tb1pEG+Ox+GluFVrRLXT?=
 =?iso-8859-1?Q?ppF82UwuSht7xvc+KxcOiRIMxP2y259GOewVl/sH71Ty+9uwukqPYBEcDP?=
 =?iso-8859-1?Q?BQh7M9RntIcPN2MNdXziFv/5YeOEyhyPB5l6bvcZhkWeSaKsvgF7rTPfHy?=
 =?iso-8859-1?Q?3OwlI3JhzsPiw6/H3iiArjug3q7/FpoJLQHNnNcYOCD3xq4decbIs7/kYs?=
 =?iso-8859-1?Q?1wA/ScZ6BIO11C0z+hGnraV1lldtLfJv6yCmhE8JU6opWLrCvxy5qRiYD0?=
 =?iso-8859-1?Q?2goeqHNZ/T73k79WLV1GySPw8OjGTFQY5RjKaR11jo9yWpiUCr7w0iLqf1?=
 =?iso-8859-1?Q?5sot6dVO6RNAy1vrlbX1H+R5rfhNm/YcE9jSJjoiCmzbeSuB34aYDBTxVX?=
 =?iso-8859-1?Q?KKMoaqlS2UcBKQJu7W3qeRgIPpLtFZN8neNMgGlpqBckcYiSS66eFE4vAi?=
 =?iso-8859-1?Q?F2UemVWDJYoYHxhyLxonBvKGd929F8AAumE3kRCvRbacTviqA439f1m/36?=
 =?iso-8859-1?Q?G3AIAJtNNBUl/hiQVhRb5VuODhDPL2lR1cNis0lnFIf8RKRVritoSd9bh5?=
 =?iso-8859-1?Q?1akqVixotMir1GtQ+0+UDLJjq9u2qA9u27KQOiTkEJWrcZxMh7lmL+GTOW?=
 =?iso-8859-1?Q?BQxbvxnWwHqlhZeIJoSSwV/vCb28+yiA+f+cCJRg5g27K1cjnsZ8cprI01?=
 =?iso-8859-1?Q?vs5r1XOOd1wey4ck356UoBXzU9cRJunIRm+N/Rtu5Pb7nTq8FUskjzlTUi?=
 =?iso-8859-1?Q?ix68BPETEfTjBJN7+riB3jYLnwM5nYrvj6pZvvnjMfa+5tC5XmIdLaHn0M?=
 =?iso-8859-1?Q?DMMKCF/SFhmglbNE+C3N7E7CjsUSuaACWGNoJnnuSnhk1Jy06S+f22P5Gc?=
 =?iso-8859-1?Q?wHYevOqvQcgppHrPMvOT3KdO+ja+ZIEjbJMN63RL4J7TLcgWzEeFvyC68f?=
 =?iso-8859-1?Q?zNlPQEiPEbcKPiMBfrxKZMCymC+qUU8vd5FIPR6QdUGP82dJtqaCjH0CYw?=
 =?iso-8859-1?Q?ZRAaosRxiNHNGdOPBw2QQwP6J+K8UOnm64nlWVWTnJsJw6rm7EXmTEDVgd?=
 =?iso-8859-1?Q?tX1pRm49crQq5RiYgTkSmsFA2RgBL9N0IPv/V195IutKIJiTroDqMnXwiG?=
 =?iso-8859-1?Q?8l0RyJ+Lt1ZDw4WrdC0wU3CRa/XUn0Sl9PprHvtl189cLo3VZU3rZ8g9Jy?=
 =?iso-8859-1?Q?u/zaN84VT8rz718s9JfgNO+8M66G0QtrU0ELW20tjgQ9xPuPrz/4MyGZIs?=
 =?iso-8859-1?Q?UMrBDQi+H+33qvfDwJHusNX8LWrO56DCvViF9CweTekX2SxJ53ht9q2pGO?=
 =?iso-8859-1?Q?xLqnOXq6FDfWoBQ4SxBwnju/yxvcrpGVqOXxfaTMhCmTAIwyJkkjffv9r6?=
 =?iso-8859-1?Q?lBRjGJAP0w=3D=3D?=
X-Exchange-RoutingPolicyChecked: RqGCRUhJBovyNyZLwN+d5sasN6p4tqXEdfVkmEvJTR+HPKoEcf4G2npz5r4gEqJKkRW8h9AMYpmGqQ8TSjlDmN4kge14DjRMixDcv+2jeAfQs6zp717AFwrAhC+hqe9Q+EmyxMYC73s3Tcmf1CjQKdxtYmzg/IYotHH0pcGPTPQDGyjKix6ZseiSb8V2DEIiwwPo2RqLbENi3enVY3Tg7rUL3gWtQM+wlYQHYDaSi0HpRwXzG/GK5zgLv3Cckfi6KDtfGcYIEbPHc/9mOYxOsYhM4FymZsJKaI20i5AX+8dhXH8t5UJipPDOwlC8rO0aLvRxhN9vQ9ow/kMYXi69Vw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b6a1bcb-52bf-48dd-5b5c-08deacfec8c4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 12:39:02.5025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LClXAL9Ab7e07S6h0vtLJJ1+Xqz288FAzogVytzOExA8L52pZ5Abl8ltDIwrpwxgAFToyACorLleuAxSejaIrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: EAYPR11MB9948
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
X-Rspamd-Queue-Id: 814C74F6717
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
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 03:26:43PM +0300, Hogander, Jouni wrote:
> On Thu, 2026-05-07 at 09:59 +0300, Imre Deak wrote:
> > Fix the error path during DDI encoder/connector initialization by
> > calling the missing TC port cleanup function.
> > 
> > This fixes the leaked TC port state.
> 
> Do we need "Fixes:" line here? Otherwise patch looks ok:

Wondered about it too. Fixes: involves the automatic stable backporting
of the patch and the criteria for a stable backport is whether the patch
fixes an actual usecase for someone. The likelihood for that is close to
0, it's an error path and even if that ran for someone (due to -ENOMEM)
the leaks wouldn't be the real issue.

> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> 
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 2681940a5cfe3..e37cc32ee83ed 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -5411,7 +5411,7 @@ void intel_ddi_init(struct intel_display
> > *display,
> >  	if (need_aux_ch(encoder, init_dp)) {
> >  		dig_port->aux_ch = intel_dp_aux_ch(encoder);
> >  		if (dig_port->aux_ch == AUX_CH_NONE)
> > -			goto err;
> > +			goto err_aux_ch_init;
> >  	}
> >  
> >  	/*
> > @@ -5447,7 +5447,7 @@ void intel_ddi_init(struct intel_display
> > *display,
> >  		dig_port->unlock = intel_tc_port_unlock;
> >  
> >  		if (intel_tc_port_init(dig_port, is_legacy) < 0)
> > -			goto err;
> > +			goto err_aux_ch_init;
> >  	}
> >  
> >  	drm_WARN_ON(display->drm, port > PORT_I);
> > @@ -5478,7 +5478,7 @@ void intel_ddi_init(struct intel_display
> > *display,
> >  
> >  	if (init_dp) {
> >  		if (intel_ddi_init_dp_connector(dig_port))
> > -			goto err;
> > +			goto err_dp_connector_init;
> >  
> >  		dig_port->hpd_pulse = intel_dp_hpd_pulse;
> >  
> > @@ -5492,12 +5492,15 @@ void intel_ddi_init(struct intel_display
> > *display,
> >  	 */
> >  	if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
> >  		if (intel_ddi_init_hdmi_connector(dig_port))
> > -			goto err;
> > +			goto err_dp_connector_init;
> >  	}
> >  
> >  	return;
> >  
> > -err:
> > +err_dp_connector_init:
> > +	if (intel_encoder_is_tc(encoder))
> > +		intel_tc_port_cleanup(dig_port);
> > +err_aux_ch_init:
> >  	drm_encoder_cleanup(&encoder->base);
> >  	kfree(dig_port);
> >  }
> 
