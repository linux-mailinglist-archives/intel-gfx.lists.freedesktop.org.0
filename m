Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0L5JDgbkr2nkdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 10:27:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C4B2485FA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 10:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AF7C10E688;
	Tue, 10 Mar 2026 09:27:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MKFlRdpq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C09410E688;
 Tue, 10 Mar 2026 09:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773134852; x=1804670852;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=GcmUecu40HfgTnI2nHiawMNXeGfCoO4qXFsQeeRDkls=;
 b=MKFlRdpq5byVT7jKFtw2lmf4QvJ5d2LWZ+xJrBh5ByUH+sn2yqLPWHDo
 aaxnlhCPs5Bj3mAC3bCyf2Gmm3deZuhj53xv8nzaegXYUT2QU0y8Xeqrc
 2bUKxAAz7nX35mVyMPluykIZgf9uP5YoOrCsQOYgFK0cdgPAzimEk/N/I
 +16DZGSoKGITpw5y2JJNSy7FU6oA6ve7iz9ofNFsfEwY4+xDvLLVyWQBX
 PcfmmdbjCbhb0EzqWMlGd58xhGxtSEctertwkjblcgWxQn0UpGrLHW9UJ
 uIlIriH+nTCzv5WhBZXJNieAp6u6r0JbTtyuf5ejfbAyAkpu5ZkjTW2XM g==;
X-CSE-ConnectionGUID: Knavb0s0SDO4fXHF2qdENw==
X-CSE-MsgGUID: 3uJdqURpQ2OYALjoyhRNig==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="73876585"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="73876585"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 02:27:31 -0700
X-CSE-ConnectionGUID: sfhuk8vVQWuFoIhrCo16dQ==
X-CSE-MsgGUID: hhEwGloMRDCPQc+fAjRDAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="219175681"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 02:27:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 02:27:29 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 02:27:29 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 02:27:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nJGiN84IrF31AnSFZax6h7EftVsNJ2qR563d4vZd6oZSW1keOMbDKxylwJtz0VBPBAYTLnXLCwsd+/jpbIX7plCJHFpuXnwackSmvlbh3MK7Mw5p0RXGBoEdXm0kyWElN+7AlA9fQbsRR83XcI40Z7Rb+j6yS4O83s0sX80Kv6tEUlDUeW6F/qjcCB0slqY4WeOo5JTcH+3lmWjdxCihv5TonQeizlOI8Ncg/u4gC97efqwH8iszB72+myRoTM3RA1VbN83LI6w7174NY5POzzLajxmyPlxbnePys1SqirlmxMQ7keCnIbz/KDfxF9Kg77ONiZRRovyKz3M35e/m1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wqdqkc/dHVanUMfgi7cHeyDFw6o5CCY9KAy1wTvV/g4=;
 b=FGiF4Sw1G8ctk8DvPetwm0iRn5Ep/D1BppOKIdkTzbIBn50xgMXSP1hlVcTBoIuMFyAzg5mt2/6r41QjXwMFmIFSosUD9F5WK8o4LYPb9uHdw4NATZUbacw4vl0pjfml+D7rdCYSdBJHqQ36VwrJW2HHfsA90WwzIR8nV/SdffJen4Rwqo9gBHTwEKpOQUaXtXQGH4r0SQ+jgKeBEtkzZ5hRT4qN9eZkpIycymXii13oYQh0UBtY4Hz/NCiiZfaCHt0C1peZF3lOUfAYJGZ4sx8nPIVi2gbt+AoKY3qAZIDN69ifkrXa2v/IB/KjimJ3x3dRpUj9DyBahoAvWmVGtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DSWPR11MB9560.namprd11.prod.outlook.com (2603:10b6:8:36d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 09:27:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 09:27:22 +0000
Date: Tue, 10 Mar 2026 11:26:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Tao Liu <ltao@redhat.com>,
 <stable@vger.kernel.org>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [CI] drm/i915/dmc: Fix an unlikely NULL pointer deference at probe
Message-ID: <aa_j1Gxa7iWEEYHi@ideak-desk.lan>
References: <20260309164803.1918158-1-imre.deak@intel.com>
 <aa_Y7shwd1Vqiy3i@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aa_Y7shwd1Vqiy3i@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023A08.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::20f) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DSWPR11MB9560:EE_
X-MS-Office365-Filtering-Correlation-Id: c60fb968-8ffe-41e2-bcb7-08de7e873b5e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: jQXmRWW+rto38Q9DkmwW7CrQ+a1+UBLs8EFjIxQXC56DaSBlT5WcStL44fm9TAWxYIr+HrrBiAOgceXGYDTt6UhVoQ31pQGxHw0aw+VPI1Z0jy4673S1xGxNsP2tp20UgWvirlx9rkLZjoDavfV0aWLG3UDtyT2b8DhkOb6E5x4LXIrb0Mx/I5stzioZ2k+EgDUHcbpjJiHVz6P2+lLvqyQf8WJlUaQkbREvHAbuVxD5wPt5JkJ9kOmAz/cX5VlGouro9qbwCEnqieW8+k/EliRFv0ocYRKjc8w6iYQzRv9gH2TewCnP5p1+aMyg3ik1wyrotj+C24JvoQIjkT1e3XEWEGyaycDLoVix7zstfdrwZKATVNYSq2VDinFcpesojLJrZeLQPby45+7P/8gGLHm2J3EDkUdDON5+aAjl4sgklwD0sZe4SA4aeuev/lhrSsMeFpHJI9bZfMGLOT+saFaB8FpiCv/RLusQjkuygiplMuH94SWJwSa+rurACYyLA4lqCcK5dQ5mNbtDSHKvbz7H0ZFM977p6xGOrz5tiQ0broX9Z91I0CDxZeQFwKS8JrZaBa1s1flbuQRSxzm1HSdAsnjSLbX8SGxf4MdbAsb2Czz+FIpVzzS8nxJrudz3IAyKHXtpqp9Em+8H2942N7tZ4RJYSTNXu2SX5cMZLgDlnuZspWT5M+5hTNgI/mn5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?GW5xVeqcpOtRveAkpd2hTI175H9pDaCaPLkh2aacXE+qAtbV1sdVnbBbPG?=
 =?iso-8859-1?Q?73d53u/a3Vj9qCW1h4Z0LRIWQQiZlF/2TOCh3kKYE/rsXs9n1Ph3hiD1UF?=
 =?iso-8859-1?Q?DVQxjXaLTJrcjnp5hB3wI35sFAKoHiikPu5JWTdTcaz5NECLYFPn+btkkp?=
 =?iso-8859-1?Q?v/sWoxvUaIQKg/TxkBaFrxnFe5vI2etLUp6qTlBZzKQhoRvh7OX3Ob3ieD?=
 =?iso-8859-1?Q?L/rX8ImTsNLKGa36DCCyd+XvcdfgBepdji1WadDVlvL+JhY2ntfh4QrEm/?=
 =?iso-8859-1?Q?jm8wOz/COfKqtKTTqP65HPUhG6hmx6pxB4cHDyuzjnJymnfhQ12sSi2U+/?=
 =?iso-8859-1?Q?kB9oEt4Kz5egFDpij2qUnaWswYQ1wf0MnkWe81oKE2OP0biSlBpuYZdu6C?=
 =?iso-8859-1?Q?XpQ5KZk2vzIoESsGRbN8f6CCqtaNYBJho7XJq6Zd1NrVpTAs3ijeAQ6f6A?=
 =?iso-8859-1?Q?Icy/J0Yf7T9l2e+kMrqZOnqe6SZo3TQtFy2bCopM2nXqLr4dMJtyPCLeqr?=
 =?iso-8859-1?Q?mkuhQDLybIqvR2l9cSNq/pNaNdoVkJXk6vRn7DOKO+oc8PSEei0sUEu4+z?=
 =?iso-8859-1?Q?39DXBEFZs86/FMZfPLJJG8Y22SVKhAhPN+VuSEWkJHrlGsc3CE6yeZNEzt?=
 =?iso-8859-1?Q?FObBZ0BARdVBY6CAuHUaWix6ZIqU6SxCMuG3xbYl/0JV/Wt2MZGWlwkCjp?=
 =?iso-8859-1?Q?1n288GSEvXS3L3t6Akmib7YHWZWQPgdhpCkh/kIzRRw4YaXvOpXiqamO7R?=
 =?iso-8859-1?Q?iHysP1IpxBfe8GitokyAPG/YaAwxrNP/NbSbIv+PDwO1Il2LYJ+a4DMG1U?=
 =?iso-8859-1?Q?lf6w28MA9XOOemvpYnspiRDM37GClBeI/tT9ydexdDH7t2iVFmJdFAN0Oo?=
 =?iso-8859-1?Q?Tu/wtpygL+CD7QWI95hYFC2H2SF/BSVImkZDsH7yqqXTp7F3WkHjJqxoXe?=
 =?iso-8859-1?Q?hZZui5BnBK8H3vDJtkycSha+RVZpX+xnWqTvsbzrMYumWBS8M1XPvAQaZF?=
 =?iso-8859-1?Q?rBGH2YTremQXQhwHonMwZdjY27dQrDqHWJbYvLKL/CR1AM0LBhJvSULv3O?=
 =?iso-8859-1?Q?X3UVrgxWg7DukwFMfDBHhRHjITyjx/1wXN1Lfqg43LgAcUXOl0rx5NnID4?=
 =?iso-8859-1?Q?GwtGPdWaJNQIqvfpG6VGiyYxzm8seArFlM9m/3q4d/iMxUbdWfAm7Gm6JA?=
 =?iso-8859-1?Q?RzvzMemWjEZ3dySOYTW/xDdBEmCtVbXzj2PaZExZetr29L8amnIgpNUBfa?=
 =?iso-8859-1?Q?AooVb6x1ZXG5OjPGO2kt0TWKVnb939JDANhQnr8G1EAtySC+hPk0dWtDyG?=
 =?iso-8859-1?Q?PKvM1TXzQ7ecN0g29mqZq6fpPqfPyp+FvU9+lMO5vxKJ6LcEZsXPmmCeoC?=
 =?iso-8859-1?Q?m8Vck++pZ14+VVZIpbcJsP+FjFfZGpqo3bxCUcyyD3p0qCVaNmhImn8KUk?=
 =?iso-8859-1?Q?v/2SwkzK+E8RZYkX5omuAZ8lpGqZFeJKSLMwpfYfqcKNivG7GnYzwocdJ8?=
 =?iso-8859-1?Q?H3EPEEP2FIZ5J/wYt6hzqkOx883XmyJ5BZflRzpBcNWx1r7Yh0RemoXe3A?=
 =?iso-8859-1?Q?kB4iGw13cqvGBdehyeXJ3xGvObDDIsEsPSgPFXHcCjfpEhD6219Glw/BS/?=
 =?iso-8859-1?Q?EHoJyowAZ51epIbLxZWSfKR4lEgmRKXAi0VKixgvbJBk8b8kQ5xiuxTu3+?=
 =?iso-8859-1?Q?NZPpijTL+64hfkcuTduyfuxZpAYonx/dPKA98nKS+eG2qaKFK3yGECpAuF?=
 =?iso-8859-1?Q?gySi+nzXj4y65GEOiwc/Qs9cWq7NGnA2hQhcKsrS/ikvfosJqfSGh+ienr?=
 =?iso-8859-1?Q?MaOR2KuRLw=3D=3D?=
X-Exchange-RoutingPolicyChecked: kABQiGqfQef5vWFERYO1bOi0RL/zBPasPvp0qdJNrZO7q+SR+6ZjWlsSiZ23aBkX+5sMXWgJxNMmPEj+I57JejXVbEHjYxvfDpy5L1jLv0kWJdt24+PiZrEL5WNVylPFtdit6k747fCj+Wc9RajoVLhfxL3Z7O1jqyieegbEEAern9jrnRXZpzalv8UwyA8ZaTpOl6v0sQUD13Lx8giJloEAOWiCUEdlYfg+SJ/6qRsI6MfIBVlMq+Z0QB4ivBpGxB34VAfnX3d1WSkTQwnAI7JiTihBbVQ1H4HZKoS2Am5CavnxxqJfHTHO/SXJWfm+lSjNFeSBFIfhXxaGw0mQKg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c60fb968-8ffe-41e2-bcb7-08de7e873b5e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 09:27:22.0140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Eku7MKiLhVb6Nt6UqgjiDaFNKnPfcm5D2IzjzAqjJZAYT33dt6O2LEGs9pXcPb0KqXOXX+nr5a6A7JAEoqwGbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9560
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
X-Rspamd-Queue-Id: 90C4B2485FA
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
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.953];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 10:40:14AM +0200, Ville Syrjälä wrote:
> On Mon, Mar 09, 2026 at 06:48:03PM +0200, Imre Deak wrote:
> > intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
> > initialized, and dmc is thus NULL.
> > 
> > That would be the case when the call path is
> > intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
> > gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
> > intel_power_domains_init_hw() is called *before* intel_dmc_init().
> > 
> > However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
> > conditionally, depending on the current and target DC states. At probe,
> > the target is disabled, but if DC6 is enabled, the function is called,
> > and an oops follows. Apparently it's quite unlikely that DC6 is enabled
> > at probe, as we haven't seen this failure mode before.
> > 
> > It is also strange to have DC6 enabled at boot, since that would require
> > the DMC firmware (loaded by BIOS); the BIOS loading the DMC firmware and
> > the driver stopping / reprogramming the firmware is a poorly specified
> > sequence and as such unlikely an intentional BIOS behaviour. It's more
> > likely that BIOS is leaving an unintentionally enabled DC6 HW state
> > behind (without actually loading the required DMC firmware for this).
> 
> Wasn't the original case some kdump kernel thing?

According to Jani the original issue was a KASAN run in QEMU, see [1].
Not sure if that also resulted in kexec/kdump.

However the case reported by Tao later is related to kexec/kdump indeed.

> I think that has a few issues:
> - loading full GPU drivers for a kdump kernel after the real kernel
>   has crashed seems a bit risky. Who knows what state the hardware
>   is in after the crash...
> - we should probably try to unload DMC at kexec time (to the extent
>   that DMC can actually be unloaded)

AFAICS that involves calling the pci_driver::shutdown which (for both xe
and i915) ends up calling intel_power_domains_disable(), which disables
DC states at least (hence the kexec'ed kernel should still not see DC6
being enabled). The DMC FW event handlers are not disabled though in
this case (which would be what you refer to unloading DMC I presume) as
opposed to system/runtime suspend, where all the DMC events are also
disabled.

I agree that the kexec->shutdown, driver remove etc. handlers should be
synced at least wrt. the above DMC unloading with the suspend handlers.
However, I consider that as a separate issue to the one fixed in this
patch, which is using the HW DC state (which is unreliable) incorrectly
to track the DC6 allowed counter (the correct way being using the SW DC
state instead). So are you okay to go ahead with this patch still for
now and follow up with syncing the above shutdown/driver remove handlers
with the suspend ones?

[1] https://lore.kernel.org/all/43c4d7f0d9fe4ba6acac828306b41d612dd4f085@intel.com

> > The tracking of the DC6 allowed counter only works if starting /
> > stopping the counter depends on the _SW_ DC6 state vs. the current _HW_
> > DC6 state (since stopping the counter requires the DC5 counter captured
> > when the counter was started). Thus, using the HW DC6 state is incorrect
> > and it also leads to the above oops. Fix both issues by using the SW DC6
> > state for the tracking.
> > 
> > This is v2 of the fix originally sent by Jani, updated based on the
> > first Link: discussion below.
> > 
> > Link: https://lore.kernel.org/all/3626411dc9e556452c432d0919821b76d9991217@intel.com
> > Link: https://lore.kernel.org/all/20260228130946.50919-2-ltao@redhat.com
> > Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
> > Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Tao Liu <ltao@redhat.com>
> > Cc: <stable@vger.kernel.org> # v6.16+
> > Tested-by: Tao Liu <ltao@redhat.com>
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_dmc.c                | 3 +--
> >  2 files changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 1e03187dbd38a..f855f0f886946 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -852,7 +852,7 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
> >  			power_domains->dc_state, val & mask);
> >  
> >  	enable_dc6 = state & DC_STATE_EN_UPTO_DC6;
> > -	dc6_was_enabled = val & DC_STATE_EN_UPTO_DC6;
> > +	dc6_was_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
> >  	if (!dc6_was_enabled && enable_dc6)
> >  		intel_dmc_update_dc6_allowed_count(display, true);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index c3b411259a0c5..90ba932d940ac 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1598,8 +1598,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
> >  		return false;
> >  
> >  	mutex_lock(&power_domains->lock);
> > -	dc6_enabled = intel_de_read(display, DC_STATE_EN) &
> > -		      DC_STATE_EN_UPTO_DC6;
> > +	dc6_enabled = power_domains->dc_state & DC_STATE_EN_UPTO_DC6;
> >  	if (dc6_enabled)
> >  		intel_dmc_update_dc6_allowed_count(display, false);
> >  
> > -- 
> > 2.49.1
> 
> -- 
> Ville Syrjälä
> Intel
