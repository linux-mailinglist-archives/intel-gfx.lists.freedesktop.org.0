Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBmdAklj3WnmdQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:42:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD1B3F39A8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 23:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F3410E51E;
	Mon, 13 Apr 2026 21:42:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iPWSX14Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28EF610E0B1;
 Mon, 13 Apr 2026 21:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776116548; x=1807652548;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FYLXkyK3ikTDNqtGw/skg48lce0m+8xIW9bUBJlFwl8=;
 b=iPWSX14ZtgPXMJB+8WeSC45uzfYUhPyos+MZqvR5exS+GGHRbbw3dtSP
 n4I9we1H5qyOmzLkR2CGPlVSsj9NKJaiUO6C7T2Xz7soCesaQ4cXBPVdn
 HcrDWhMi/7BaIFk9AedPOlZcRsIOcCe7Vk33JDdYDZv4s0UtVwsaNGcwD
 iJMtXjuNtio/2uBRtZC+wupIEN/7isuSDx8HhVijaDD3sKNH/QHtUAxvx
 dpIKk2qUNjYu820VHW1ZH4bz1RXB80ntxYinHhwfRVSWHckDZZQx5NNNx
 9DMRhYIy/2kW74XHxtXzrtOklNLUboYxhd3e2saY+2aEMrNSsgvP2aIdd Q==;
X-CSE-ConnectionGUID: coXDd8bvTM+sEiK9O2/MuQ==
X-CSE-MsgGUID: vCWySJfhQA2t/GklhL/Z9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="80652441"
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="80652441"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:42:28 -0700
X-CSE-ConnectionGUID: F48ClVIDTEiuAXFWY91jwA==
X-CSE-MsgGUID: EhwwIQ2FQ3u5tZfDR65QFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,178,1770624000"; d="scan'208";a="227228043"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 14:42:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:42:26 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 14:42:26 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 14:42:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NghdrY6Eqs7q2qp9c6OCZxkqXbLlcR7aR5BmAZtEdVZ6yewiS1oFY5zmHclng5b8O9xzRQKTHxUrhRwRH5Rpoo8GLH4heHe9OxFoYCWEiMVwodRyVzaXXdoTv/8rUqIVAvAZik7dCalPVI3DGZkE9325pHd11Xo9uPAlq5RnZ8Y4JOVbH249rpddOFnUVimI3QMouSdsKj9GVHtlH2a8h2FMuIajDU3VxeHWbFn82/4dB4f+AYispzLCNoZ32FtEuM3Um77LKQqcabG3PpjeTJyYeZR73RLhygalW4mqjtZxAUKaAvHDJeGvoSKgN4CXn7Gkzb69RLGvC+1EGDyw9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aWgiNvFS/rDx+siVXIs8xERc8AhO5wP6EcFclXcOeWs=;
 b=b9xPgVM3WT9PVNgX6h0fXSrx/vlvUXFZemGa3l6HmEmFciVhwx0KGB/B0kNPU1ZTThxzGwF8s6aSybcXVpxL2D6nwqZvbf6/nF1azcwxGrm/XsxeCXL+DTJPzQG1wC9PwNCEU29AAg+OUnNqAWqnIYDmsxJpxj7TQPfQvmEnukE4i+ShFCW+gs8odzo5c1yDXRGhNjtSd7PF2+TCow4lSnnz8BT2EWEzZnABvCj01P/B9ODTA7zYWMjs3vkWBOe4HlJHH6WAaX2mTv9xQgzdHa/xY3IUfNJdVANzFkHaZQgffmJ1IfHM2XgwvsFOjrn33kbenc7AVyKffIDPimJKoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA3PR11MB9397.namprd11.prod.outlook.com (2603:10b6:208:573::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Mon, 13 Apr 2026 21:42:22 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9818.017; Mon, 13 Apr 2026
 21:42:22 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH 08/19] drm/i915/display: Add DC3CO eligibility computation
Thread-Topic: [PATCH 08/19] drm/i915/display: Add DC3CO eligibility computation
Thread-Index: AQHcvUQuj4tqs04PfkCeEOu4LA279rXdnr/g
Date: Mon, 13 Apr 2026 21:42:22 +0000
Message-ID: <DM4PR11MB6360CCD357456767CF73DD91F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-9-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260326171557.2065632-9-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA3PR11MB9397:EE_
x-ms-office365-filtering-correlation-id: 664401a6-d7e9-42fc-331d-08de99a58bb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: ixNVqEEujKIvh2Cq4V0X1kcAiVZH9O4uZnBzaMwoaEGlugwbhfppLUfBSmcYF6/kmIZmsIzd8E258AVN17L6P7Cy98miY6RBbLAIu6cClNDB7ZXB308WngVypV2Zqs5/VpEk7hsq/47eg+DEnjZqUqYAKxHqRgU4WwoYbL+yiLCNDv4yAnJU0/pdjFvOY2D2r8gKqZKRWIUyTDLeDmurtlpM5WhUdIDz19uGHY0RcC6ykzECqFqsR496j3l/IozCY3UA5dRu6PJZxiY8TL4HTfNFcA2wH9Sk14iiqN14DJZL4AoV7O9cc8yMtlrlnkPDH6uyBG8O6eNNi+WQJey8S4GFxt6S3gM8iPEdVv5ErEBTChSCWyOBhMq7fWJeSE0AF3Tao3XQ34VUec8preCZc3eP3noM43PIDUciKqC+aIeWCfkiUyxAoH1qPgHrL2bkLKsD8M+9z82ba4kedHddA0C58C/B16OkEK0DztvnT1lqyv51bMre8tC0YGGNNrTjA6CgBrSJClejY5D8E/JocRKGrZe8OKwzElQGGST+dUMkY9coD3rtLhzkQlcJ0U9td5I+UGaAdJ4F/35wxxDn2ZO2xUg0D2CUd+/rslk1ZVyGCr5qgdiSGX5vNqaqegINl6Iwk+oQdtkUDytzBC9+btfJwkKBMI/d+DJgA+M7qqpD8JsFZigOJC70uo5GPsQxrz5g6LvANgmOAkk0iJRAiBTSyAU04Sq8Om5ku8qvex4lFjhzLgjSedP1aOzj+y1VORLBB6kXMzc+jG8a99kbTp5mvFlYG2FSnWvQ36jYtxc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8086veVsJebgjdpgdzCjh6+AwSF1cXVCY45i2QT9BZ6SjyoYbfduZQ8yxJcY?=
 =?us-ascii?Q?urCHMJKbSaIZVxVmKs2TEZgpjNDHA9ZSIUYCjq9JSjTAvJ7neDsQdUR6J0Ng?=
 =?us-ascii?Q?Vzy/IbP6KcQkRsslk1SoZDZMz50tGzlKGXABverwlpbwZgcep6EPO+vJ1avf?=
 =?us-ascii?Q?sQbAiQxwEA8W0XCM8ShQOkEKY3YMRWXySdEaJglumFhAQGpYivzILMiKvvJD?=
 =?us-ascii?Q?lcU+NhdZHf1wKqdz6G4yhTz4t3LXH28Zd9+bz3U6TjA3JDOV2p2whv5BFhTU?=
 =?us-ascii?Q?vm4Dovf71Vbui9BqukRo9+x6vultpaN+xF/LzBHCGRJeYhS/CMv6RlzwF4XZ?=
 =?us-ascii?Q?9Yq86X2E6JvxfReLvcE2eZNjZC01KenS/Ayp/MrLUE1lHDXCD8hI0IqfBYH4?=
 =?us-ascii?Q?Sg6MNE+Df4VttMF1LxevdmjPMrRzMzK2UF2hipIecQCo1sj11f3xW3NCRFbK?=
 =?us-ascii?Q?kE3nmdfn/uvFptRwkPpF7PZi+5S/V2AuhfE1qvmYE7Afe3YGk1VNkt0zQITm?=
 =?us-ascii?Q?tb32EMKLqRwLFbFawpyYSGJyh3zwkY8H0lfF55btBGShtdO+M5Fgnm7NyInt?=
 =?us-ascii?Q?P2cnlwo5cYHV0YylqOMOt0MeVIHA3fm4XTmt6ZpYHx7XB7qDeIr5/WQoptSU?=
 =?us-ascii?Q?7Be7vV+uzIELEOHgMxQuFFN2e31L7N97aOL+x3Ykz6sweSrrmTaKG2apJ11W?=
 =?us-ascii?Q?mp8ZDXpUHW1xrxYz9olMFD5rJE6digq/FmNN1AIxXuMyGwjM6bvCcYEx6mOE?=
 =?us-ascii?Q?nEorB9k/+5kcnoA7MhtPXYaNNSNnZpuUevKPlzT2nSph1E3jJVbHF5IoDZMF?=
 =?us-ascii?Q?UNZ3sJzSDBizRZ0YQlo0dk2OqAZLzM1VFb0n0W5+u4MTxweU5WR9kglclBhW?=
 =?us-ascii?Q?E7rll0lbvPE6H2NG0mule8acGGhF5AeUJw66D7YLb7FrnYMLI3qPKMiGY+L+?=
 =?us-ascii?Q?m/0AU1bOuT5pkUyJKD3JNlVwkYs4LdzSN+JxF+oL4aw2LpeT51pv/RsPH62N?=
 =?us-ascii?Q?wseIPyZAIf9oBh/ZRvM8jdycoSQNgtX8NTnupvmsT4Fvavuc7IB5Uxe5sAcY?=
 =?us-ascii?Q?BY58/+zgxD3Q17llcYKfMVmG0WAdokhz5q3tYK18SA4Yz70qUvsDuSTYzX/Z?=
 =?us-ascii?Q?7q1jKgF99psPGrDAiVeEv2h3846ZSZeGV7h6q3+0XAQX3bdMzmVaM2QvhvYU?=
 =?us-ascii?Q?8YhcfsUdLmhy6iLCExpghLLj9QFv7W0OKP+8UzC53TRd3eN7tWlDMtHC7bXf?=
 =?us-ascii?Q?AY1LX+ZrO+k8eAZPEBEqJbPEzzytlsnloJWb/U60jsIdjMbzY40n30ZMb7kf?=
 =?us-ascii?Q?gpkTNAq0iJH4uVNbH0V0AiVsZbNUGCjQP5pCNIPcM6CMjjJCVTwZq5kVmUoG?=
 =?us-ascii?Q?+Y7E7EewXjRZ/0EHRJQ8geyIcmOTqWryglvpKHEn29uabfnOoggnf3gSmQ8f?=
 =?us-ascii?Q?ZeKpuO2BNqpVo7feCokbdLrAq33Fntwtj8Ptat68H7Jnx0QeL9JwKtHSdnso?=
 =?us-ascii?Q?QOPz/7VBrcugP6JeQ4EJ0OUKeDiq14Bru25phwfJbwpOB1VpFilbNkLg9e8z?=
 =?us-ascii?Q?uqDWA+sCep3N8x+QTTc4W/jxKvwKNtdXkmbPyW3cIuekcl/5GnXvl3tb4Bah?=
 =?us-ascii?Q?qGfNRWrD5z0h/f2BYmh8VT0Si+OJtfbgPM7zS2oc4sFBfDpZmZ+PgLhw2cNW?=
 =?us-ascii?Q?2TRufSyGMU2VYrqzxKPvCfi39uPlH2Y/iSxoZIc+l/9Yglznhb//thAg//tV?=
 =?us-ascii?Q?Py9FdyR3cA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BJKbcFfmBHtqWLyLMN+J5U9bQPZH0g7vAucK5mvVWBT0k5f/tVIaheJtJy87gOhEOoCLKzmvsen5iDnOmaCQaOPNxsb3ZJ4DdEXBRlveFFFOKr9hLPdwvI4qCXieVg2hJtwygasESoqgPvx9a8NIV4K54/hlATAMi+jAPbmfid7cvsunhYl7z9+zC7vSxcgGA9KLMtT6y3DCz+yS+YbRe0774kvNnUolxSDpu8UQRpQozk7/nnKO8FP65dV+MpunNaNWkbqZ9144JPx5gzkUlBc1P4OXqnZ23mvRhGgR2ALhaGtK16pfHZmdvyeerR1HuDWudMB+Xywpq61SY/LoaQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 664401a6-d7e9-42fc-331d-08de99a58bb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2026 21:42:22.5471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Dk8pYn5WrnzliXvvpIfdjLJ3hffxwTEvNHMt0wEOspB0VJThY4B35v07ZGajRtEyP8AaA4oBWtir6tUXnScBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9397
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 3FD1B3F39A8
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
> Subject: [PATCH 08/19] drm/i915/display: Add DC3CO eligibility computatio=
n
>=20
> Compute DC3CO eligibility during atomic_check based on pipe/port constrai=
nts
> and runtime triggers, and propagate the result via intel_atomic_state.
>=20
> When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and reduce the
> DC entry delay. Otherwise, retain the existing delay and set default
> DC_STATE_EN_UPTO_DC6 .

Specify reasoning for reducing delay, would be good to add as comment.

>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 98 ++++++++++++++++++-
> drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
>  .../drm/i915/display/intel_display_types.h    |  7 ++
>  3 files changed, 101 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index f20d5ebe06ed..df0eaf6ae76b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5943,6 +5943,81 @@ static bool intel_pipes_need_modeset(struct
> intel_atomic_state *state,
>  	return false;
>  }
>=20
> +bool intel_dc3co_allowed(struct intel_atomic_state *state) {
> +	return state && state->dc3co.allowed;
> +}
> +
> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
> +					     const struct intel_crtc_state
> *crtc_state) {
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +	enum port port =3D dig_port->base.port;
> +	int num_pipes =3D intel_crtc_num_joined_pipes(crtc_state);
> +
> +	return num_pipes =3D=3D 1 && pipe <=3D PIPE_B && port <=3D PORT_B; }
> +
> +static void intel_dc3co_compute_state(struct intel_atomic_state *state)
> +{
> +	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +	int active_pipes =3D 0;
> +	u32 trigger =3D 0;
> +
> +	/* disable unless all conditions are met */
> +	state->dc3co.trigger =3D DC3CO_TRIGGER_NONE;
> +	state->dc3co.allowed =3D false;
> +
> +	if (!HAS_DC3CO(display))
> +		return;
> +
> +	if (state->modeset)
> +		return;
> +
> +	for_each_intel_crtc(display->drm, crtc) {
> +		crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> +		if (!crtc_state)
> +			crtc_state =3D intel_atomic_get_old_crtc_state(state, crtc);
> +
> +		if (!crtc_state || !crtc_state->hw.active)
> +			continue;
> +
> +		active_pipes++;
> +
> +		if (active_pipes > 1)
> +			return;
> +
> +		for_each_intel_encoder_mask(display->drm, encoder,
> +					    crtc_state->uapi.encoder_mask) {
> +			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> +				return;
> +
> +			intel_dp =3D enc_to_intel_dp(encoder);
> +
> +			if (!intel_dc3co_port_pipe_compatible(intel_dp,
> crtc_state))
> +				return;
> +		}
> +
> +		if (crtc_state->has_lobf)
> +			trigger |=3D DC3CO_TRIGGER_LOBF;
> +		if (crtc_state->has_panel_replay)
> +			trigger |=3D DC3CO_TRIGGER_PANEL_REPLAY;
> +		if (crtc_state->has_sel_update)
> +			trigger |=3D DC3CO_TRIGGER_PSR2;
> +	}

Leave a blank line

> +	if (trigger) {
> +		state->dc3co.trigger =3D trigger;

Here if we have 2 pipes, trigger will still get updated. Harmless but it do=
esn't look nice.
Would be good to fix it to reflect default value for trigger if more than 1=
 crtc's.

> +		state->dc3co.allowed =3D true;
> +	}

Here as well.

> +	drm_dbg_kms(display->drm, "DC3CO allowed=3D%d trigger=3D0x%x\n",
> +		    state->dc3co.allowed, state->dc3co.trigger); }
> +
>  static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>  				     struct intel_crtc *primary_crtc)  { @@ -6623,6
> +6698,7 @@ int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
>=20
> +	intel_dc3co_compute_state(state);
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		intel_color_assert_luts(new_crtc_state);
> @@ -7505,6 +7581,7 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =3D {};
>  	struct ref_tracker *wakeref =3D NULL;
>  	int i;
> +	int power_async_delay;
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>  		intel_atomic_dsb_prepare(state, crtc); @@ -7711,11 +7788,22
> @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		 */
>  		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>  	}
> -	/*
> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
> -	 * toggling overhead at and above 60 FPS.
> -	 */
> -	intel_display_power_put_async_delay(display,
> POWER_DOMAIN_DC_OFF, wakeref, 17);
> +
> +	if (intel_dc3co_allowed(state) &&
> +	    intel_display_power_dc3co_supported(display)) {
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC3CO);
> +		power_async_delay =3D 1;

Add comment explaining reason for 1ms delay.
What happens if DC3Co was already enabled. Do we need to enable again at ev=
ery commit ?

> +	} else {
> +		/*
> +		 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
> +		 * toggling overhead at and above 60 FPS.
> +		 */
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> +		power_async_delay =3D 17;
> +	}

Leave a blank line.

> +	intel_display_power_put_async_delay(display,
> +					    POWER_DOMAIN_DC_OFF, wakeref,
> power_async_delay);
> +
>  	intel_display_rpm_put(display, state->wakeref);
>=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 552a59d19e0f..6eb84f9d8791 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -535,5 +535,5 @@ bool assert_port_valid(struct intel_display *display,=
 enum
> port port);
>=20
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
> -
> +bool intel_dc3co_allowed(struct intel_atomic_state *state);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6830f911d94d..6c7f5bbbc821 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -632,6 +632,11 @@ struct dpll {
>  	int	p;
>  };
>=20
> +struct intel_dc3co_state {
> +	bool allowed; /* DC3CO eligibility result */
> +	u32 trigger; /* Bitmask of active DC3CO triggers */ };
> +
>  struct intel_atomic_state {
>  	struct drm_atomic_state base;
>=20
> @@ -658,6 +663,8 @@ struct intel_atomic_state {
>  	bool rps_interactive;
>=20
>  	struct work_struct cleanup_work;
> +
> +	struct intel_dc3co_state dc3co;

Atomic_state may not be the right place for this, check and place it at rig=
ht structure.

>  };
>=20
>  struct intel_plane_state {
> --
> 2.43.0

