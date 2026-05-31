Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /vMlA3eAHGr0OgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:39:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EABC4617833
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C439E10E1DA;
	Sun, 31 May 2026 18:39:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y8Y0FKDN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0904B10E1D8;
 Sun, 31 May 2026 18:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780252786; x=1811788786;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9RGLUvL4M62V8y1XR6L2jx1YnPaB3iQlkDTimAwzp0A=;
 b=Y8Y0FKDNp/K3W+l0/7Nlh/qjUnJDxzV5F+EY3pP62D+a9pz6WWRVRlPb
 /dBUu77VkGKpisAuvaB58zexzO/x59gs2LXtLmLm2pUso5akwiZLwNpGT
 Z5Q20UEPNFsQ8HSBc0cCgGfb8BneFE0xSNZTajcw58evTWkC8qBxdqfR2
 Iu0ijuty8Vp4DeJCRdou6YzDvK2AVZ5kYaWZvs1/TLPMK3Rm0Olnlz3fg
 LMeHw5nD18YG+4CGKrfMVkge/oq5vgOko7oL3bsQ3a+oz5xrNbh0usxp8
 3DvYWtm1nmhQbCWJTyE4jZv6sUHKHV8IvoxDjaTth/DhXiSXgcklJeQqo A==;
X-CSE-ConnectionGUID: +PBKLpEFQeO8d6/eQO7XQA==
X-CSE-MsgGUID: gZJodegjSauvdOlp1AFnFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="81014770"
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="81014770"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:39:46 -0700
X-CSE-ConnectionGUID: kon37pzYSY2Z35f9uzo/Dg==
X-CSE-MsgGUID: An9S/diaRLKOqBu8+ktJQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="247634643"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:39:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:39:44 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 11:39:44 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:39:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d4hI9SfGU74KFw5jfODugXFNzx/cv7zAfSrrR1xeZhkqrWp1SEINBIBZnesb/i5CUQmJ69ZzDGZUj7Dbbt+Y6yqpEZJurrzL3g58pvRIei81vVj6jIZUsVTiEkeUf6FltYZfWH5wAx/+hhxTyRAQk3ifwSg4k5f44w0zu4G1/cSmaFa3XTckNCLJPcGP+uHspiw/mkGG3u8uiPqHTrjm2jxpsVCHYE10VwZ3b7IQqB1B9XfVMUU/EWPRCima7LhMddK5jD24lfW131p1grNCV8KWvV4vc+tLPYTWZ+20y2I7HSuvTIs2xF8Uuab4+tR+VCedoGDwM9V92bpAD28phA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XlAZPtrpNPxaMNw6FPD8Y7niA3f0sUDL9QNUhSZJCKw=;
 b=qI/2s88SmYmKRntgykTCG6Nc5qqIju+oFv9bPHY+rO5xKfLvgj9tlGXoaL94KEeF5gYAiBpUJzTG0iHWVa1Wrnp7RnXfpTA4x0seJ3KUd8N2QgBq4V0iUb8a/tu6lPlkcK4MMnkWUHduyGL/89wYMthqLo94f52bruJu1q62epAUxKhC+2BoPWUJ4RL+rFL+mrSgiXc0qU6I8JmMkepxqarE9Muh5aexiYTbNgkeSC3OiGi6QIOZBtFTFq1jXn3+i2FaK78f1ktrUWbkpHf7m8LhBZuIR37691rBveaR2I5QLCdbGdAIo/KxOpShyvGbgoqGyJ9A/t7IXjLuGCCLgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB8499.namprd11.prod.outlook.com (2603:10b6:a03:578::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Sun, 31 May
 2026 18:39:41 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0071.015; Sun, 31 May 2026
 18:39:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Sean Paul <sean@poorly.run>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
CC: Sean Paul <seanpaul@google.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Subject: RE: [PATCH v3 1/2] drm/i915/color: Fix step discontinuity in Post-CSC
 Gamma LUT
Thread-Topic: [PATCH v3 1/2] drm/i915/color: Fix step discontinuity in
 Post-CSC Gamma LUT
Thread-Index: AQHc7vbrleqgSncwpUWoo9Fznu/EBbYoekuw
Date: Sun, 31 May 2026 18:39:41 +0000
Message-ID: <DM4PR11MB636049BA2E517A22FB43A404F4142@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260528230817.2455072-1-sean@poorly.run>
In-Reply-To: <20260528230817.2455072-1-sean@poorly.run>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB8499:EE_
x-ms-office365-filtering-correlation-id: a88ac988-4ca1-4e52-4806-08debf43f9f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021|22082099003|11063799006|56012099006|18002099003;
x-microsoft-antispam-message-info: 1VPKnYKcosFVwsj7iBoh1U7WgQh160lSDor+mlfmZ+gG2pdC0AGIXaZlIzWQuTaL6ZTgFQAdYMScMsRGNB4+HlvIQpKb2junYjnIXYIga98DPs0ygfg7yKY9DosHLzYNQ+tZ+VPfY0bniNLYgLhVwjZ5d9Lbjmqa8KU86nzdJC8LT9GOm0dmK3E95zYoOz5VI2UGPnAm0u5kesNp7TFmDv7GiFXP+sJ9yOvoVbAapYS3PAxnwN7uXOPDfpbkPjyDLZG1NZYz8d0G5ToZnnN8auvPaXuC7qWE0zlisU1KEdcuAbT9iP/UseBEfEOW/MAavKKairC0glh9r9ZYSOygaF7VOCvjQsgeVyqLGDZT3lWeFOv98czINmmX9Krc+B7dp89nYwXyO/Snwn3XE/p2JC3mzmxCeyJKQT2Y8L+adP4eHujzwEdwXSUQC9lbqu9wQtjmmRQRMfZ82XgXy/nSUtRNJGurVy1rxQQWI0X/qFRkqoNzYKrVb53TMEZvy1VDstvQTi+kcdAGl/B1ktO+1SwTfQ23F+nYdgoLHWoobPuDUlZvBCM1FrEv1zK/d6abvdg6RNlwXRTKq4lp7azz93r3wMLMQVN5BcWrl19RhcuU5UO2hduhGMxUKoXdDqSJL1ULpz+N7nyzzvmLETihwdPPFtP/z5dakjed4cSpAiA/rpqX1De8gQ1Iz5cr3Nm+e7XHtEnkfkD9YTPb9ooDnNTQY1F2WKNhMdZctCl/wtbseVNQ21cDzbChG4cC4j6f
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021)(22082099003)(11063799006)(56012099006)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?n2j9YSxJKVXDZZK7gSXOiSP9QnSCmiAVexUZnXOnt7zGPC4M658QT7nsnNxB?=
 =?us-ascii?Q?2vLK7qgdLla7ZDp0PTB5oH5/I+qd4pm9ev4QVJ61goHHKZ/3tJ9Bdqg5UA9C?=
 =?us-ascii?Q?tg1o9mJ3ZOUiaFEZ12oErK8MdIlrO/fSbToKA4MEnqQzY7GAn4TOOvJsjuf7?=
 =?us-ascii?Q?JmfmlxNUr/Wg0LLkLpCqVRP3FmKew/KVycMqpWlYEKszfbClXcd86iLzDQFr?=
 =?us-ascii?Q?MLlbwB4ImLZjFkT+ngbto+zeSnZ/UQ8s76UwDoopPMcgZjDXVwk7w0mEwUB6?=
 =?us-ascii?Q?Ejp1D5Ygv/e8SUE4m9CiAYZtBj/ubW5z+ESuHPICFBg0lXIAwt90pVWnEWZm?=
 =?us-ascii?Q?eCZEZXLalurg2MQGoXMVdDljQ5GiTio4yYp14Y3oZ5V6MoCXbPb7NuNzMbF8?=
 =?us-ascii?Q?/EAYrIX/862edKS7S+9nVpW+0EqzY/yqniH/VClULvYZ1v/zhyiePzppaQI9?=
 =?us-ascii?Q?URqMGkubhXIrPjyUG31EfkWjig6KkcP7InonRubD9LlTcLv4K+dVH8CMP48r?=
 =?us-ascii?Q?kcD094ke3oOC+E7TWkX4US2VxKUPc2SyiOk97XFItL38pUufhhAfTY+99Jgr?=
 =?us-ascii?Q?ZqdR8PIv/RXHS7Ak/chvukNraAWQdfiskBBG6enCVWfXVmx31ps5wuEF6cvi?=
 =?us-ascii?Q?F+i222rqJoaxT0p9DadnaSzuE08insVwqLafPhklECX+M5k4pwn5CWBlZnfp?=
 =?us-ascii?Q?xSdvyOif0Yj+1FEW2fyjRY/wHXJWg5GhG9+ebe7XF5RGZfM+sFc6vDH4f2OL?=
 =?us-ascii?Q?ZAkVca8RaJ0DGN60pid5M5ZKRyX3h3yeeLviFEWBgUOOF58WXk82gbcG33Ty?=
 =?us-ascii?Q?UyszCG4iKnToBGPFg0WfVcjDUlWP7649xtOIguQmnhTnPnotu8eXXU0H+ndS?=
 =?us-ascii?Q?ep3pf5WqcZ8Bg/VSSdFFHZxNlHDiMJzWhqFHAlT67k/ICEBOJ43gKEV66Zb1?=
 =?us-ascii?Q?fkqXSEnmU8vj0JzslfVynQ3E0m9lPrcEHGpEaKflK4JRJGMqfI0DJB3IWiPs?=
 =?us-ascii?Q?xuVS6bfgXM+aEaZg7AuHCeLDldeJ781cg829FWtDaYvtIka7OxiSIKBmdOdf?=
 =?us-ascii?Q?v37714AT+oO9jr9LKn/f/2eEr4QJ4DYZbZJGyUOvvxoucpRbly3s2dTd9EUr?=
 =?us-ascii?Q?f4BgYd5EvBY0F80xc3tjhY3J0yypBUtAclSG+YPSMDi2qHuWEvjaBTPPbote?=
 =?us-ascii?Q?OaJTcLn1edOoBmaR3Pg6/uzOj3IwANh0oSB3jOVHz17uYg6M+qRFVDdhmSAC?=
 =?us-ascii?Q?fp7l4f8C/COOCAgELpIHxdZAxCCpKJY910oWb1dH6WnMKJw2IwlfMjUB7bxu?=
 =?us-ascii?Q?PUdUaPlTzqIWMhy4fCEtni9U8sIJAlPD/N4eOfmRiMULimtSvwTxAjmAFCXG?=
 =?us-ascii?Q?jwM1AstQsJdMFP0rmCNcl4k7gLh2LIkIO2dstBpo1H7fQbTExGUOpTfmxPr1?=
 =?us-ascii?Q?WCEaYmtVmOLbKFeqg3QrPv7kRQbuWv1X732tpL4P55AE+QN7zSterx4Ov9Xr?=
 =?us-ascii?Q?J8Bn33gDxn9EICJSHF9neOuyq4CHvJQyPpPyM2kTCLIFjn8wvMUwU4n2xfPj?=
 =?us-ascii?Q?Vepb9bWxJJWfhSFpOfscNXWD3Cdu0hQqnZqBkeRbh/d48ciDfrf1DgOdTK7M?=
 =?us-ascii?Q?8572CyhD7EIp4llvIcghL4J5mZR8BFsodr+KW6E1kqvvQT2XI/VMjGEk+JqA?=
 =?us-ascii?Q?2Jrnr0RKVyBiZ0cmscauSpmwQXWskIP7FVNzSVnb4aYgU68ggq/QyCOKWKMN?=
 =?us-ascii?Q?lu3Obacfyw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rJj51WHT+h/IzVwHodAjuOD9uuyCnS8T1/boIpkdg+JD3VjGJvpNtG0Wc9Bx6kthYOE9hIdfZpS57lC8d/MdDQPUNC5TW3llAWhYi1WW1iJZ5+bth/NNUAo/nNH4KmCa4fGS2QpZvW2M31D1W9vPkV3/QmwC3UoNoWndP732IgdLtHWwfDjy/26Bilxind9HuGDtJ3YkPTa+vR4dbcfqKqNJV0KMl9HYXxyCKyGK5lk5/ZrLo8UGTwlEWI8RisHfkjW7YS+Cm+0imPMh/qD+ICqI44tkDH4VDKSZPkBoYUs+/craBojfyHqeWwPQWmUmhk3uDd+DP7SeWIM5aUajzg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a88ac988-4ca1-4e52-4806-08debf43f9f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2026 18:39:41.0377 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HHIWpJGRh+mqNGmwG9fQuSOaO2FFHny7W2+EqyoRr8sRYvx1tgajvyPn0TjpgetpTDNV3M0VulIfJGY7+jcD2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8499
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EABC4617833
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Se=
an Paul
> Sent: Friday, May 29, 2026 4:38 AM
> To: intel-gfx@lists.freedesktop.org; jani.nikula@linux.intel.com; Borah, =
Chaitanya
> Kumar <chaitanya.kumar.borah@intel.com>
> Cc: Sean Paul <seanpaul@google.com>; Vivi, Rodrigo <rodrigo.vivi@intel.co=
m>;
> Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Tvrtko Ursulin
> <tursulin@ursulin.net>; David Airlie <airlied@gmail.com>; Simona Vetter
> <simona@ffwll.ch>; intel-xe@lists.freedesktop.org; dri-
> devel@lists.freedesktop.org
> Subject: [PATCH v3 1/2] drm/i915/color: Fix step discontinuity in Post-CS=
C
> Gamma LUT
>=20
> From: Sean Paul <seanpaul@google.com>
>=20
> Fix a step discontinuity in the Post-CSC Gamma LUT when SDR dimming is
> active by clamping Segment 2 to the last user-provided LUT entry value in=
stead of
> hardcoding it to 1.0 (1 << 24).
>=20

Hi Sean,
Yeah it was done as UAPI was limited to 0.16 format and hence 1.0 value was
Not possible through UAPI. Expectation was that userspace will send LUTs in=
 range
Of 0 to 1.0 but agree it can limit the end point, so we can go with the wha=
tever highest
value userspace provides. We are planning a new LUT type to represent segme=
nted LUTS,
We can make this better including precision reporting and LUT caps.=20
But till then, ok to go with your change.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Sean Paul <seanpaul@google.com>
> Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-
> sean@poorly.run/ #v1
> Link: https://lore.kernel.org/intel-gfx/20260525135730.1122696-1-
> sean@poorly.run/ #v2
>=20
> Changes in v2:
> - Split out into separate patches for pre/post csc fixes
> - Dropped loop bounds fix in favor of [1] Changes in v3:
> - None
>=20
> [1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@inte=
l.com
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index 7ef870cd9a16..7185f3628dcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -4038,11 +4038,11 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb
> *dsb,
>  						   lut_val);
>  			}
>=20
> -			/* Segment 2 */
> +			/* Segment 2 - clamp to the last LUT value to prevent step
> +discontinuity */
>  			do {
>  				intel_de_write_dsb(display, dsb,
>=20
> PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -						   (1 << 24));
> +						   lut_val);
>  			} while (i++ < 34);
>  		} else {
>  			/*TODO: Add for segment 0 */
> --
> Sean Paul, Software Engineer, Google / Chromium OS

