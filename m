Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAOBJcmLr2nJaQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 04:11:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 056402449F6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 04:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B2C10E62C;
	Tue, 10 Mar 2026 03:11:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKNwjKfO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF8510E62B;
 Tue, 10 Mar 2026 03:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773112262; x=1804648262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=98ZKQeybPSPpeVSfGgCjhR9zLDxUeL7GLI8CMUj24qY=;
 b=CKNwjKfOy94o6ntdRN5zakUJ4nAR5Xq0PAuVJnuGOeFOrc3eun1MVpJi
 00RgXBnFPHJW6BBtaVCpczRZ5dayA2G4fWCz43Z89Vb7aELdXBuhaN+6B
 FUYw1xeCY8QnAccEaalwff+wBb2j7yVAieG+lAZ/6UTyUL/4s+6iXI/3g
 Y7FDkWUiwQMT0ylm68tI9RfYM+YQT499dy81D42c0quimpGD/GQRD4lsj
 Km2/HX5Dt271x9N036LFuMVBu/Fvw2DkptCWXGrskP+vKx4HM6m+A/AIV
 lXnEJiZOtLSYW+FzbYyAj9jgWELtcdXz5NnjrYNqRGnAQY6qK92J72p5C Q==;
X-CSE-ConnectionGUID: rGFXRNmWQpyDudsqSI3hgA==
X-CSE-MsgGUID: DoCwIcFATwKUVnVReRzuTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="74227844"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="74227844"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 20:11:01 -0700
X-CSE-ConnectionGUID: 866q4yTgQh2wMsUD2aDLWQ==
X-CSE-MsgGUID: 0scHCnzOQ9G8gt8P6sUAcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="219095962"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 20:11:00 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 20:10:59 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 20:10:59 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.23) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 20:10:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tLXZsMFPE+fJhskxTBK/Y3/iVyewXyvsl4cPpOdtSsk1CqXdEHqcBxGkszZYi2tSNtJEnY+X2Ba/DX87TL7PC3bPSu0VkckImA+tQJi7Hn8EA7aXCbs7cDevkfpiPfDct2RWJL52b9REXKMYV1kItCQNWCd4ed9o6phIv1dykqJmT/b56YVgXgBridhesgSxlZepIpI6r2GywW0TSIlEOJY7WKAbX4QBqao7hHrrVDBlk3n/5f5V0kjZQeJAsXoLtKwH9BYO1beZjIhne0tzSImdm1AelIU7bKibogd5o47rQPj8Icys9+kJD0KvO2UpmumNQKKY2p1oiU3BS/d5Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zXUUFa7LYCKx3nexvPbZ63TZppu9gyPcN7XvK0lZXiE=;
 b=vtlkbhlo1yQJAP2Z1bTFQQik0Ne64YMtu+b3+q0J8dTwHYtuQxNx9Ca1r4Shhe45COkIYNVLouO1zswlS/8j29kAKy7sHlH/sTlgCZ1jSMYU+Ch7+8PiHgaLkUM0htog+zQPlh6M3K0wdWN7e3jSz0LBxnkBtSjbEYjlg473sYZtHTD5o5JClH40EjvQZj58Z+Z8CX3t7Ig3PvSjckZtGv/+MR4+UpVOofPvGh+2EvMxHpYBCan7GWUjn/TTmTGyk1GymwkWgaiKLOVE3Wf8fPEPCXfGLkjzGEsZTR7vkBOlWJWa4FKe9iD3Bna7ax/1CKQFsq/7oRoKDeyfdJNdUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS4PPF409BB8CE8.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.10; Tue, 10 Mar
 2026 03:10:57 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 03:10:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 01/24] drm/i915/lt_phy: Dump missing PLL state
 parameters
Thread-Topic: [PATCH v2 01/24] drm/i915/lt_phy: Dump missing PLL state
 parameters
Thread-Index: AQHcq9jia6Cftk8qsEKImB5QN+eP/LWnG2swgAADyKA=
Date: Tue, 10 Mar 2026 03:10:57 +0000
Message-ID: <DM3PPF208195D8DB3E3025DC6D088EA5177E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-2-mika.kahola@intel.com>
 <DM3PPF208195D8DA6BCC16F8C42ABCAE60FE346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DA6BCC16F8C42ABCAE60FE346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS4PPF409BB8CE8:EE_
x-ms-office365-filtering-correlation-id: 6af51b8f-e03d-4ff5-8f86-08de7e52a64e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: uAIfB2wlPw1vQVXD1avepyNF+5RDTiYSi2VHf9XQXaVrPccS0/V440qgyjmaE4s0APq8kQ9t/6fKBLLw0fP5lvrhClpYhfCDloAJ1gNG46giF8vg5MSff6sAL+TCT6kP/j6hZnljjmarvexapODulwXP+3D3gNt17uXGVq8Xp8ZdT3CSlTl2CyAbLfR6wgnOv4+R1A0OXAyW/BA8SM/15YI/9ms/6td2bQn6A2uR9FxdaiM3VxeLkuJ8izMUg51YqnrZ0y8BGR+Up9TrQJI9R+att/6sY70/73AwTHORNvybOi47kXNL2IbvvrnOvH8PSUjT2X94hNxlcpT0fbE36bZ0hTBhCJ24j34A2YZLgqd28ySEZ8Vc0Y3envoTmpZFzGN58tmwyQRQTV4/m9YKjXSc3CmTh1awcAV5oQOd7gQFDw3G6J0fCX6SsflRaL9lJXTHpPssxux1+INXoygGT7mvMG6NzeSRdD+fAqDGB2bDQsYc+9l4XI/DM37ROvCidxEYLdC1kFn2uLWtR6dOUjzsUEm4+cQDZvXjNJPLHN1tG8tR+nQOzSKByeg50Jmrsglk85TZ1fYSqojmE8kuAs1n9G4TTrFOmXNElDGx6hffsNmV/EDsqFMwmzaE+uvhmqia5qdTx2K8elHATll2ntHPF9Iaq/79BvvEa1w+sAQV2jxwBNEu4LrbASvMGtzn1gsYiHGeCiy0xX15g+RBbwYyY4koDFHBxI2kjgnPezZA/GHGNZjHlwYhYjyXUKHWdjnUxCC91SEv4ngkP565cxWstPyaDxWYtj00TJUT38A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/EOLKvktERToqe89eVPrBQh0XG9OjbGW/0V7plwBzA+FBh6p54qRMYn0Lltz?=
 =?us-ascii?Q?5gORUF9xB+NMY1Z+/8pO6rvJiIWX7y7gZY2gOWV5fkYVPrRxu+wkRHgsPL2R?=
 =?us-ascii?Q?Ku6uCFVa4a+WhktTj5fSvmzxW18Vc+RI2RxJbntCEZI0V7smSXR+OfUn7o7g?=
 =?us-ascii?Q?o0slBrAYsCrI6iVImMfv5vChfyt4Lb/nW1oHiMsnI0zi6r9xbHYUpv6sX3cB?=
 =?us-ascii?Q?PrLrhcvoXeEV+j9jZPJmM2d5lMpaB4BkJvrZMrwXoIVlVYIcaL8G/ilNzSjL?=
 =?us-ascii?Q?3231aIq3aHgBs4mg82LkoKkkfOaLjmc376QH6T0eSNaGcFEcMq/Zl/GQxEkc?=
 =?us-ascii?Q?E2SGQGTobiruJc1cmsoSF7Nc2sR96akrEEzYRmXW8ouXyfs2WDOK1O96GRpU?=
 =?us-ascii?Q?dgPvAg28kaOUMDnIfuLTsPNeM1l+VWojbcAQ8qLfPhMFU+UKEnQKLuYefv7O?=
 =?us-ascii?Q?frmBwHzkRFtwVaXC/lTe3bqXl9zNkatixV33Rmuz5R5gYbWFKc1vnOtTTmvA?=
 =?us-ascii?Q?h4XtJDxw9zLPp8p+ujIQKqaLJHqIhsS6VjXjJJU14/aArvaak9uSXf0G20ZA?=
 =?us-ascii?Q?eMXnZxtN9P9WaZeZQ3LER8J2DwANqCMYdn48FTHelBxrrTrOA3/BOvd7XLBu?=
 =?us-ascii?Q?JpVWKmLXoDVNAjU83XcUQGUcoZj/T0PykJnpsHRTMeWLyhOkWIBnUTQuwLh4?=
 =?us-ascii?Q?lmarLmcFQ/HckbqGc5aLtKAaH6yTQNQY/8urvk4uXdoe1/qCYV2Bh8Yh5tku?=
 =?us-ascii?Q?/8wpWZA02Me6Md5iVe77lBWJiTWAt/iyHrFTzAAIbj0ZDTwVgMsrZKEOpuuX?=
 =?us-ascii?Q?lVuKMCS32S8z8gSHfW/A6SsVniwJcmMQMHzXdWSjDEL/iyKcWxb4B9TZ3Mf1?=
 =?us-ascii?Q?iIaIkhhnUVyVDLuDFVczdkU4tIJazaYnJuAk0FdS6ax1Wd6ZamVIhVdz+rcm?=
 =?us-ascii?Q?6WIciRVMcUFpB8HD6o+d8dgNX+cFExsQ7Wv64tSuGlnUCzT+VAB8PDHtQYfp?=
 =?us-ascii?Q?kpY/+cyeOWHyacmyMIR/tkzzQAEtYsLOE7QnjifrDgelarNufmujGfWNTT+J?=
 =?us-ascii?Q?NmIm0Fs2SWsi/UwiNq0FdCSqPgFW7T6mLEh/YVh5rAPefFofo4eneIsCAaUE?=
 =?us-ascii?Q?T2EDheKXxuLpxdloFUFZG6n1p+DEtywBhLtGgqngdUOzcgTjMPPpkhQz66F4?=
 =?us-ascii?Q?kFYnV5RkurIA/AOY57D9dNYWPNve4FqD3dNrNZrs+KsWheFwhVz63lN60Dq4?=
 =?us-ascii?Q?xyfhknVJrj2HsGSpl9pFUICCNk5ycnlGIF1ydhuIgoJ8cdzQvZdRq7FwHzki?=
 =?us-ascii?Q?y+Gtwu8eYvWvjybC6u0QPdwCPS8bXRzSJLX4QZC3tlq+NxZp45ujKtdvKCFh?=
 =?us-ascii?Q?XTNcIv23YGam2WvGWw+f0PcTK8YUQY+ZvgBt9p8KIEaXAMcJtAPhq94PBG7T?=
 =?us-ascii?Q?NFqDPP1XZLMHCIz4D5Bcj9juS727AoZG9FKW78ipM79KB/0MASLv0W8FIR3T?=
 =?us-ascii?Q?G5QdvG5s18cfwPpYQOhRNbROASw1Zh9Xw/EhXb5dBf3hqXZ+fJ67gbwueRlw?=
 =?us-ascii?Q?j+vgD7AmRCsW0aOWsQUct11fohzC87uUnDbJT6g2Rju6BskIQM/otumrp8ek?=
 =?us-ascii?Q?Pz5vnmxFeCUELcFMK+TkL+ByINqNGHRlYUZup/VjSBQKVqquOM2lBw/fb9xc?=
 =?us-ascii?Q?zT+UiVUaUNmfTxblJP6xARuI2EZCKz3S0OEMm6uu6/mqO/TmaLO7y2q7zzsD?=
 =?us-ascii?Q?XgDm9nCN4Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YTMZC7/KGU8RWsvT6apkzVM5Nn12e1GpvwJd1AjAFfx52iU0Q4R4sU2+eeBVmpolH2erPiXbTIGk90EfHkFZXnOxBJolbqoOPuCaVgcE34C7km161SBrdyo0zPVYChedxPkUDbSrzIxxSRzB/qGgOx339kgqd+9Qr8rbX/sWGHIO0tDyYbzkW23xB/zLwMZTZ9/GWQhUQuUj0Q4XwZYkgUqZRP5ylJuglACoIMEYyC9YApGdNNt6e3/APhT71Uc4Yp96a39/ZbcygpgHV6mlNId6UwNq0cxPzH6qlrv4D8QtwfemblPu8A0ttugMxBsaWceneArSFqsqbXnJPsL0oQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6af51b8f-e03d-4ff5-8f86-08de7e52a64e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 03:10:57.5680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gsdTDzmLJ9fV+SHdIXs6PPm67kVoWxTHIl8iomx8bpF2EglWaFodwlcGzRe8z6VLu7p05/z8EEfCWdCUO76e9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF409BB8CE8
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
X-Rspamd-Queue-Id: 056402449F6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

>=20
> > Subject: [PATCH v2 01/24] drm/i915/lt_phy: Dump missing PLL state
> > parameters
> >
> > Dump missing PLL structure members ssc_enabled and tbt_mode in order
> > to enhance debugging.
> >
> > v2: Drop addr_lsb and addr_msb printouts
> >
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>=20
> LGTM,
> Reviewed-by : Suraj Kandpal <suraj.kandpal@intel.com>
>=20

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > ---
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index eced8493e566..f768804122c1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -2141,7 +2141,9 @@ void intel_lt_phy_dump_hw_state(struct
> > intel_display *display,  {
> >  	int i, j;
> >
> > -	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state:\n");
> > +	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state: ssc enabled: %d,
> > tbt mode: %d\n",
> > +		    hw_state->ssc_enabled, hw_state->tbt_mode);
> > +
> >  	for (i =3D 0; i < 3; i++) {
> >  		drm_dbg_kms(display->drm, "config[%d] =3D 0x%.4x,\n",
> >  			    i, hw_state->config[i]);
> > --
> > 2.43.0

