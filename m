Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOFjFHhs3WlNeAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:21:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BD43F3C65
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 00:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4328810E53D;
	Mon, 13 Apr 2026 22:21:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d0mNpMig";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8624810E124;
 Mon, 13 Apr 2026 22:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776118899; x=1807654899;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g3i7Y6ju5fjAlmEHxppeoO6GDFPY6GlG15eM+HtMmNw=;
 b=d0mNpMig3ldiTvgm1Tl6HTl/e8ScDya6UDRRa4NHJKXpTYZbmq5P5+FH
 4vGiJ0YRXWjVpdUBNkRZdDMRb3da97uPVCBYiJ5w9IKPOPlmtzyIGNJQC
 RFWsym1nxEphZpuHjFCBxD4MnjUoHbk240R13UHoUpONtc3RgRjpnTMV9
 QtikzU8OB6vZ+yCsV5tgtx/H1Uu385NHqo6AfCpKH5QLEjV/IjUCW3dT9
 pE5YbwmylXVuy5rz12V1wiLnWQb+loyOIpdYyghbJni6PuHdvMxgOMk/3
 lG4aFim+j42pm6SfVd2NDT5RwKYKGWKb0DcyIYwDHr5XfeDwSnFt9QWKb g==;
X-CSE-ConnectionGUID: kCdnxb3rS3Ky6rJt8Vkqbg==
X-CSE-MsgGUID: haMS7PDHQGKN6+aQPsp1gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="77134253"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="77134253"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:21:39 -0700
X-CSE-ConnectionGUID: nDzYKSLKSH27Le9lHUfzuQ==
X-CSE-MsgGUID: bd+EMp0/RPG2eZTZRLurRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="233940387"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 15:21:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:21:38 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 15:21:38 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 15:21:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N3/EEiIzmtob+fAUe1EDA4LBeIOB7XRzFecgLwGIZqDFDvY8sWywBXOz0kQX32QMZKXx3rL4iGsOqCELBGd9cDugwKwbYZfqhY7o2ueyU/kTYtLkq9HKxBA+iZ2jC/O192y1Z4YAEjMV5oi43gJ8xTog4XJpenYbt/WSSHOPJibPPJOmyIxmMDNoIhJaVTn7MNlUyCufnfLxBaDLrCkZc0M3mnmTs0FvfwIYlZ9q7GsL0acVCVsa3PeKHuZ1tYPwwbijXNL0NsEOuCokbeb/61eRf2ibxBnmEkuUADEQQOEU3veEQJ8rRT79u0NQPY2Yd9JYJQ8U8pJsCld+7ghQjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PEpod7vEO16Obtjo5XCpPAwIQpdPjyUpxAq2/g1Mo9o=;
 b=B2j93A3egR/FyTnRBfE4jYRPltES6HdrQ1G9qepXqiaAP6cma+8n+tjcoWGJNlchiyjYKFFiWBVz7sjnTS5ywZe4zRCNT+TxIMgMgBsORyga6xJgBsVTgaRfvSPpSeMDxFA94oYZaHtmBq72Cmm9ss3PVAeug1f7A2oI8EN9BEdeEp+FcWgX5TqnhaVM4JMfeNZUfsrvwPsCPESIp+tNVBCIwrrmsxA/6oMXjI+GPLjhKOhSfq1fdLC/K4IFYbem3mOajvFc44wDeRfzXSNpJHmxrJDXUZuMkTiiixHDYxbwJcJjHhzSaffHh8foS8wyrnz5cgYTfURtZsy8fxGFpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA3PR11MB9062.namprd11.prod.outlook.com (2603:10b6:208:577::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Mon, 13 Apr
 2026 22:21:35 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 22:21:35 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 19/19] drm/i915/display: PSR set idle frames while exit
 from DC3CO
Thread-Topic: [PATCH 19/19] drm/i915/display: PSR set idle frames while exit
 from DC3CO
Thread-Index: AQHcvUQ6xJsVGZ0DFEWu2no6/bSuz7XdrQAQ
Date: Mon, 13 Apr 2026 22:21:34 +0000
Message-ID: <DM4PR11MB63603DF8B4990EF4ACE14333F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-20-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-20-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA3PR11MB9062:EE_
x-ms-office365-filtering-correlation-id: eff0bd98-5f90-42cd-8c22-08de99ab05d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: saKu7yPcN3XQvaclAu3tfG4iodHv9JpnDkxL1JJvWRiL09tYx/U2gYTh83lP7EcKC3lSKV76v9do3d+RaOGWYobaxz112wB2z4TTbgv9GexEzUked5IAG+cMY8CiqdgFbqrQTToweH3spJuMC/wRVh4eFmVn8+nnqZof7+Ldp81MAMUjA0OVLwakcZRxDfwYlzx+92py2oqh24T8rM7iQ6/Ec95F9Zfr67U6FeDWULF1qOZOdyvmSNwdIGkqfHQC/BjhmMHeuzYrPXq+ia3buEGwD58AnSKLsthK2uK652iMcaL2KF7IacVczMWwi3GfdWhnX5KhBWefO8G4CCNOC/tdS/m3JBh1f9PLnPwGrxWFAeBKAzx9BD/j0dNdnGJk6Hh4zHYcC3NTWPWCUt7OLncOJNU7lvlWAScjmd4VT8PwZbKBLeoI7Ay78CoYVOCz/69Mow6v+P4OCRFzocTqtny5GRP3N5J1z4RRva6C+G26ZICEI36qOTpsznGbaXfd5vtG07PukH+OLvsPeI4Ld0tT6NIJPjAKB376S30adbyeBdx2bhML4sRfleFl1bHsupN+AlNUYaHxYu0Vivc7sFLRSx/Uk5iwc3h3RgVyTu3mqwAJtnV1ddhCFVNhIkCEtZk3Rv0OOzGeuJNwgMO4LmAGGRINiyHCNwBEh+SYn7jb/SRbZsta5PCySUw+k5mZOhZHzjNep7dgpfnYAo1WVg365zrtnMJ1/icNJZm3lIVN2LT/bGKMCK6h2dkxUBhHCR2MiwBxsqcwQOc/+OSYCbMp41nnkS90ZBTgvz/it3M=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2MGmSR5aG7pga1NFlNNNG9LCa7m5tE/Pt/vV/SCYYS99kGMo1rb9Rdgq1d17?=
 =?us-ascii?Q?tCT53rPHSenzVDu/+fipzh4srwJ5DCrWQbuORLF9Y10P9zI//1AwrHtAbSuM?=
 =?us-ascii?Q?FLmwBeV/WtMkGUzXFJtkJIZd3E50+sq7qaCB0oRuWPdEmwUe5EWusYqrcLbq?=
 =?us-ascii?Q?C2rv0PJUrXVoVN/sfmZgiPVcLkDClEGFyGuznM98HL3jDwgJmokFuP5mLvtu?=
 =?us-ascii?Q?5zbXfzItkEbyVf5qdoHfDuU6IXNvhVTOZLxfVbw4h73pnlsrgBg8DPWrbqk5?=
 =?us-ascii?Q?l5TvoDP57MWopO+ZHXPDbrXrRGKK1cjSUi4xYBlWXKsW8cjz55XEB6nNiVrQ?=
 =?us-ascii?Q?AAaQp2+4Aid4n6uqY+xDqiyKvbZD0tqF8K40KVXXflsOkhP2oRnX9bn63ArG?=
 =?us-ascii?Q?K2c6a0ApLiFj5SvQuoRAik8CVHI2ttSDtRqKWWAKrDu6pB1sv+KX1n1tgs2C?=
 =?us-ascii?Q?7QV2lz+W6RS+57ZVc4UkSUOvbpek1lwE0H0c+qC6uUwqSPZ3+dcUEzYnAzKe?=
 =?us-ascii?Q?7ES6QEVVcjwluiAZs2HzOgyPLGx/3NX14IDeqXPPzDafgDIR5ZyGDkJOcRpg?=
 =?us-ascii?Q?VAo6w31suDbTw4bvELXdbBBBuN9D9LYtxgPaB0ycLMRfoaKcEcOiWymgEms3?=
 =?us-ascii?Q?oSFUj65Cnah6ll6ArpeIM3tzW1vhLgEi9Q5pymtx3C7gwCpdv6KAB1/trs68?=
 =?us-ascii?Q?1Zc061BFy5FFWBItvbHDGT7JlwGkg6pVzPEJj3WI2XB+1KMYCMwLTYa2rvqF?=
 =?us-ascii?Q?4CNRQyDeNEWR+zuXcRAnnJKiF1nj/LvAnYbGLJBrehlHl/V0aD1sdQpofRpx?=
 =?us-ascii?Q?9/gmA/qthFb0LzzvA5+ug4f8OqHHPv8sKLyJuAoiHDUfvhSLV3hsa4ki8imy?=
 =?us-ascii?Q?I8xSYoO/bv9NRRs9Rg1JEXWEd+1ccHZ4NgPNKyMmCmTcamf60i20G0t3XAaM?=
 =?us-ascii?Q?3ukmz4c4ICsCxNyHtQcI89xWvQUH4fDNhSsUvUgKwasS5mVwj7XIvrwnb96L?=
 =?us-ascii?Q?NMFjSUAwK7jGrOTu0bqJYWWYRLuy5NaxPvHvF2VqOCGydSN7GFk5MYt8Jvlh?=
 =?us-ascii?Q?kw4aoXn+sx0Khomz4lmEzi+eg03GKgcIkTiU9HEYAlOk7UlLYuenmH3XQWrV?=
 =?us-ascii?Q?bn+Sdorg4wDVgKy+DmtkPRmAKsG+Sx4YBKo3/eiY3/EmrTZdvMueM1Zq7KzK?=
 =?us-ascii?Q?StVqrCr84Zpyp/C3odyyiZMNS7dluVFLIv9tVcqLUiqgE3qgemD7N1XMDSCS?=
 =?us-ascii?Q?yRYLFUR3nGag8Cv6EBkJihBAyDm/y5mPydjtLcUphBXhq2NB6ua9sP1T9r5S?=
 =?us-ascii?Q?8l3DuNfACl3JPkSN4g50sO2VBUtdGOjNxjk9umzwhuIyrlwvfIv7ITtL/gya?=
 =?us-ascii?Q?QL+cLknTzvl9UcwxLd8mabCRhg4F5k5ZSMcL1KKkn36c0HbfGvHh0UvsNTm5?=
 =?us-ascii?Q?2tvoIOzk0ICIo5lv4nic/GKdbPbVYftX4J0qlTqy2ha2M919iC5hdNLtPL9U?=
 =?us-ascii?Q?2qLeGzzSChn21sfTufH9vkC6f56kr7u+oz9MKg3jkhi4ARbp5hKVo5YAMz8C?=
 =?us-ascii?Q?L4x0uCivK3BMqXyQW3IMzB/eTMTg5d9CZTQWJy5LFLn0n8iZB/x9sXykFybZ?=
 =?us-ascii?Q?PuEXg1HCjQm7zPS7+1WU7OZ8NNBKbp6VoV71X2BIWO/L2S2XCRqfA2D0tGN0?=
 =?us-ascii?Q?KRtkyEYkqPpf/KZTi2Na1+xmxgEzvsxTwK0fLy1ynAGwSImZzW+fobJU675L?=
 =?us-ascii?Q?VCRG7cECgw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: j1S8xIjl5Buka7d/Fcw0AsYQk3NaFWdCN5RgdFjGwqi+j2WtYFYPc6Rlk0jcyGBUUkhM6yvUIIbOezlg9e2uoKsDHFqsDEJTX7kOpUq/ftPCwS9hy7YobjNfMsW2XAl2I813cUBGY5ymqolNv7gYICxusYQzKNKA5wyXxX46aXN+YH6ITxlnRT9lyHv0bJe/X2vWPEjXyDgabn3/2x37TusTTbjhgTEqNBAKG7L9cuwLGXHHujYSCIZzowarxgKza/3W3DePwb2BpqnIpUhTUjl5b4qVv+KaHozkx7yHPnZ/2omkTZk0gXiaXcwhoMc6eYnWtwKnWWjkPv67L5/LaQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eff0bd98-5f90-42cd-8c22-08de99ab05d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 22:21:34.8944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o3mFIOE5R6CQY8i5/2/yeOJYAeXO3zqI7+tUb+OZx7xHHGDOLE2npiExDm4249uc0TW81CL5UhyuOwkWYm4IPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9062
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B1BD43F3C65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Thursday, March 26, 2026 10:46 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH 19/19] drm/i915/display: PSR set idle frames while exit f=
rom
> DC3CO
>=20
> After 6 idle frames, DC3CO is exited and DC6 is enabled.
> Reprogram idle frames so that the deeper states can be entered.

Change Looks good but should be squashed with earlier patches adding PSR2 i=
dle frames.

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index f3476118b8d0..dcf33359dc9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1708,6 +1708,7 @@ static void psr2_dc3co_disable_locked(struct intel_=
dp
> *intel_dp)
>  	if (intel_dp->psr.dc3co_eligible) {
>  		intel_dp->psr.dc3co_eligible =3D false;
>  		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> +		psr2_program_idle_frames(intel_dp,
> psr_compute_idle_frames(intel_dp));
>  	}
>  }
>=20
> --
> 2.43.0

