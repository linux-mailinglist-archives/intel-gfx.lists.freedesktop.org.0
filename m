Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0IHTEXsGgWkCDwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 21:18:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADAAD1002
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 21:18:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9A310E2A7;
	Mon,  2 Feb 2026 20:18:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g5dTy4QQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9490310E2A7;
 Mon,  2 Feb 2026 20:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770063480; x=1801599480;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4+cn4VjearrNBZsILr0OtXOPM2PXrLq4hmB4MfNmnqA=;
 b=g5dTy4QQJ80CfcDMH1guRKKGGEH7gsO+00QNW+W+wKKsGDojX/rBkKAu
 YqHFQXt+XyqmdtDXsVaSos1nDDkCH3aV1dvkBfjHgQAaiZsHGOQeB/+3d
 1dIacueEypTjqA2bcXi09YJT3mGJygNB7YEJAQxzYBjs06IMrMiRUG6KU
 EO4RxcQYI4AJ2fVYIGNA09/IRQ5PLgbglt+W/AkMkjVjyQYnBDzL+7YDD
 VoINbGr9OO54G4A7tzY5ZTOJ4ApX1NapG8TYySWSX6Y8pm5RRc9TYwv2L
 vx354CwPp1AZ9e6Cj6aYzFUtsrLiPolVuW4bU6EPoH9cz4d+AV7BKXOu5 g==;
X-CSE-ConnectionGUID: zBosZiZdT1azA4LElsXO5g==
X-CSE-MsgGUID: Sc0e8FObTeWFbJbrUBTnZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="70434492"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="70434492"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 12:17:59 -0800
X-CSE-ConnectionGUID: faG1ONARSbq3N29C6HF5pw==
X-CSE-MsgGUID: Xa4i62IuSJSmbaSiXiGVXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="214583556"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 12:17:58 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 12:17:58 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 12:17:58 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 12:17:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XY0McqMMKXzcKS2SG7Uf2IMuEry2Hobz2bySItCBoJiII/TUEen8F4i2FkWre3OV1AZeA/LjeaxjBRZGpbaHAUyPyEgcXh9SGNHQmkSX0TRyqbUW3G1JE8ZvIoxbip6axpPXl+zramgZKPdvb0XkgeHZkYA9tOJFgBlkOcu7W4KVCGpRackw8ojMIEoXUfInPEd90HVjCf31HS5AeRiTQMOUtYB6FZM7/G14aWN6vqslrGOuafHvhAK2fnGWexfqozZHD6unMUwCt1cluZoBcOVIrvh/+HVaLVhbCmog5xIJocX76ze774zdCaFvIOmxyENQusIkF/kxfVzJ3HkT3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fnDVNOG+HctrfsresnHAVQPEnf8CSw8dYOWMd/Oj61c=;
 b=Ixj/OPrLDHJ56mgPbTmeS+7sPNaFOdC/DEGsFuRi2FNvwcPoT0eRDvpxv5nlcaXbHyV40XbxMiwplFQpsJEEVBnqHsqepVY63IGqN2LSCwFXIzO1U2ugJ/X6UM2GOxu07aNYr3PbYzwNRoBasuQhOfwP1loggcFDyyfXBTkqffLkTCJhRuIOrQTxY0rsQfpmrUTCvOWxai+89hkn92TSjbexsUt0y/EEuJHIoijUjYd+TATvyFt6mo62sLJGlWT6ijZAdfotgMUacLIUoia0KovWk49xOIjMitkZDG+qR0Sr2qi5/oZD/HmyDy2Ci/qGQTV1+hgb8akqW7Ftr+Uhvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7837.namprd11.prod.outlook.com (2603:10b6:208:406::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Mon, 2 Feb 2026 20:17:55 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 20:17:55 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [i915-rt v5 06/21] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
Thread-Topic: [i915-rt v5 06/21] drm/i915/display: Remove locking from
 intel_vblank_evade critical section
Thread-Index: AQHcit1jili6DX3Dhk+jLzxVBuwWE7Vv67Ew
Date: Mon, 2 Feb 2026 20:17:55 +0000
Message-ID: <DM4PR11MB6360F4DF8DAB0D3EAE46D6E3F49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-7-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-7-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7837:EE_
x-ms-office365-filtering-correlation-id: 159553d0-600d-48d2-de34-08de6298269d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?QniWqmqAxQ/w1G6ilS/OvDmOcghqf1MMUzhEzN+O0GxhUHusCwBf7PJZNWPg?=
 =?us-ascii?Q?uWGpOd1bBj6bOK8c6AGaiB7EMIlEeOHAvwMNbhKhXv45GN3zrdNz47bCG+Rf?=
 =?us-ascii?Q?tBidCT6rR8/wiIDsL1zaMNazxcOZG2XXoRtI5NheusIc+EuzcJAe/TMNw4dc?=
 =?us-ascii?Q?6Czz7yh+tzUMx/i+8fWmzqUdtkt4hhvZG34Fh/zIXN8uS8W9FHzfpx+fSb8L?=
 =?us-ascii?Q?MhX1pl8DtCxvA3+3tEt/6G4bVguHjXO2Pt8c3EcC8tC9/jIjlx3h4yamvtm7?=
 =?us-ascii?Q?605o8QkWcSD+mmi4OmebiNFx1nGnStBhofBJUJQKUlZdUTI+k8durhDpxHCI?=
 =?us-ascii?Q?ZWflVmU8QOlzEUQGj5PGu283/mxsZjjFwsy4bmyarwGFfeEPzfnXRkotr8Ir?=
 =?us-ascii?Q?fxDg+C+y5GrcyuWdBSkM/qeAhn7iHrKhRI+wtteuh9Hn8I3w+7c1gRJhvahP?=
 =?us-ascii?Q?sXdKL53m1v46DVstcQRrYCSNkXRojhSISS/KZLXOwDSNRoFAl8Wa/BB2EmSX?=
 =?us-ascii?Q?Ah5sgvVdbQWuVUFZ5e32bVcrt9fHFQQTQZAFavfEZx47fQxI/bK4hc3sXXYp?=
 =?us-ascii?Q?sxoHgb/NHrBG4kA13Lta2XqUZrx1rHLBuXhfkfpjDdCPFNTl1TztfKRJ/IIP?=
 =?us-ascii?Q?AhTcSp9dQhQomcbfBl3uECF7U4pn/py/5GSYPGQ04m5UfY+dovxq/Il0X1lJ?=
 =?us-ascii?Q?mVphI6ru5cpiJumq02QhdWD0PdKQar5bZwm0U7lOKhKnSdhpKyvkolmHXwS2?=
 =?us-ascii?Q?QZkyl0TQ7J2okFvSgTgZEKk37TWJ9XKvdg7Xe31xDb4iORxex8neDnXx8UPu?=
 =?us-ascii?Q?rRSje8shnTFb4m3OrP6xOCdWCRbuEcjed2qLSGze/FCZmvZ0y67n9H+L8Aum?=
 =?us-ascii?Q?aLLxgH0C9gZQdvrZ7788xX2rzEyIveG/PVeyf5qoohzXVy6fB4d+YhxO0xZ8?=
 =?us-ascii?Q?ep32sOMrTabFl41t9M5F+dIvwrmS7OX3cJrgL8r/5Ag7hXng5vD3wv+nG2ug?=
 =?us-ascii?Q?9nIB2Up5Hw0KjJHoy0apOoPQHqvG92KhO1cUiLdksWbD/4CKPlm2uER6arJx?=
 =?us-ascii?Q?2Wze2tW90fPYBhsG+8agr6hij234aHX6/HasD2AJtr8ZfswBFWlqJPrQyMlf?=
 =?us-ascii?Q?RQD+Xow5QovSxCCRdyYV5bALH63mA27C/+SjMID/rh0zhBW5OA008tCGOh63?=
 =?us-ascii?Q?xoO4wkknGDDzAdApiyNY7Tefl30gPt8pNo5LyHPoPqBx2NVUMge3g6fzPQ9D?=
 =?us-ascii?Q?q8S9+u3+PHcnSzgHU/3be4KMlQAlElRMxszPefPZeXlamS4KNVb7uQNjtBjf?=
 =?us-ascii?Q?jGnIVzcpNd7Q1JjjW1whIX+/aU6XZ/xLCNknSlQeWDErJVCLrU3WBUcoHSSW?=
 =?us-ascii?Q?rGtct+7XjpanJORrs3c9uT6FFSGA/4zZyEdkS19msJdzP3722oLu11hl7jSm?=
 =?us-ascii?Q?ZKXEg2mE12tY2W5FxrFxEfCM51A50N+OkwtYJqIaOnuD5cuYh8tze5qrnEgc?=
 =?us-ascii?Q?gTQU0ChsfEiKpnE0EAZwFqBUfOBI3nAzf5gogXaF/9LbJ1nCcOrILJ9RsO+g?=
 =?us-ascii?Q?QEqZzUHgHGsQ/HapJarBNRkH0aRb+bs9V2n+1uDyxZCVGPkdU58fpynkSATW?=
 =?us-ascii?Q?pyVCr1qZEtiCXA1RmxuURHc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XLqQWF6E7p2xocBtAQ0ZH4vZVE71ZAMI5oQjNsKDndTjbnyDRhJfKUt3C3eO?=
 =?us-ascii?Q?+r5vkpalcBZVsT85EeJNF6qES7qtfD+79IF1pYi2jO3XTtzhTy//Q5Vg+j5p?=
 =?us-ascii?Q?ZWE0u0BCKrDRg3qxtl5q2js9dRKVSGlc2gX9yHjUF7+SXXRFtoDSm32YRDQQ?=
 =?us-ascii?Q?TwVZYLe0Ousi+F/Pq/C/1I0WUEfd6gLqXS6gKUVj6UnM/CilNqqLZed2573A?=
 =?us-ascii?Q?DmKnNJTuehIa3lipBjDFg/auD4SChf9dX5wTn0f1eTZoAZ9shTkLp3dfidbN?=
 =?us-ascii?Q?hTn+yY0rjvpTmOGdUdTIxCVb1KGwpFTHCKuhEMHbLYyJm4dJ3o6aJ6vMola6?=
 =?us-ascii?Q?iGHda2vyQUXGzNnube+w4H5+xtGVVStoVIHRDEdgZeGMoOaICnJllzA6IMFY?=
 =?us-ascii?Q?+rMIdI3bs18sLR7ZM7frDeWScCbiXRn4BnwreT9UjAlnQzM2FCo0WkkrX3cU?=
 =?us-ascii?Q?7AglUZ/jGvkchMwD9l309+U+XAehDouwFSPZgUe27l2mp9sdKmhKneVJTIdd?=
 =?us-ascii?Q?xpOPzkpt0D1cLOHdqqpwf1h/wD7p2NKNzKB7PjgkrDbaUVzNKKockP/e6unD?=
 =?us-ascii?Q?S7+MzpzFyAMY94CEv+yt8lGrU4kH7po7WLNKxo18aGJpEK4/SxM5MGNzRc20?=
 =?us-ascii?Q?TL+Hh7IWUPGUZI/REcUdmlMvvNJlfp2ad7RIFU/vQpa0fw+z+mu60F9/GN+R?=
 =?us-ascii?Q?a+UJDtZ6kCdbaoWCh2X9vv92I4jUfgDmGBMrXW2kaOo1KRupaQ1PdSI/7uhH?=
 =?us-ascii?Q?20Dft8sd1jpVpmU/al+7O17ihQM5q396LFtERFTOG7vhFjb0LxIejR5ujI77?=
 =?us-ascii?Q?lnhby1nM9M1OR6DbaRpWswnaR0QPyqto4Y/QYG/MxlpDZKEK7fLYGzrML++y?=
 =?us-ascii?Q?Hmz8+Ckplz8UahomocvfdPh93UzGTfR0kzIFQLCPRP28AbEDzZGfId99XpTV?=
 =?us-ascii?Q?xgbHIn4rhOrygljy9gzdyGmc1tnUhv/7nWPsU8YWTFFtOIVmwfwPW2Ck3BSm?=
 =?us-ascii?Q?QpeuFSvgI+tmU87eldruZhmG0Msn81FujxLrTkR/8wwcwGrIzo5FtgqVqq7K?=
 =?us-ascii?Q?6cSKI5AoClVClqmhOUDLNufVHBuT2mr2v+uq3F62LekaGmJQWu3KBv9DdD23?=
 =?us-ascii?Q?ok8GZABUTvCga3Rlkiq8h9bkgypOB6jL8MTwOcZpk0De2fMJ9ZAS4KjmIGEH?=
 =?us-ascii?Q?rCuw19zcX/EcVRl4kMAixsSnsaB7IW3yWpE5Fs6WjgP8Rp056SUVSBnbrmYe?=
 =?us-ascii?Q?3UooqN0j1NLE17cDo7jIcFic/NHbsif8AegzOnC9xYdMA/FKOS7zinPsHTU/?=
 =?us-ascii?Q?P+yim9xi1xwKZHfUSGKNF5M6ql/PzKM/7fDbCKfgsHoIm2BtI81dwT58uETu?=
 =?us-ascii?Q?6pKhkhbv3EnV/p0TEgl5tqlv47bnMS/gsv8GgyKpPzrgDB5CRXcE/4PvxgHN?=
 =?us-ascii?Q?vTt2n+BJ49m2YH6eApw2Htz6dqfAsenCImKyXtPdrN65t24yb3tc6GT7Cx/n?=
 =?us-ascii?Q?Yb7s8J72fS5TKXajdrLpnS8tIhKuoHBRsHnxye9FyxtDfOIOYRu+BTFXm0yC?=
 =?us-ascii?Q?nh/4iVLPjjegSi1157w4HjhfXAHg6SFfSSrErWTnlDC/4FpmThwIOWt4x6UU?=
 =?us-ascii?Q?TJIn56X0cRY8T2KgeovzoFY5LRM/5LVR3hc5Nnp4MGkwVzoGjpTNzLBUc4xy?=
 =?us-ascii?Q?rgzka3iIl6DPzmn3oJ5hVMtK+ssRFqz3AKbCMOkLXMw5xdNAVvja/FAc4EfR?=
 =?us-ascii?Q?URqUIC2gZg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 159553d0-600d-48d2-de34-08de6298269d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 20:17:55.5186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RFxz7FbX+pGuI+P8dx6SQOvT5r7YvHiR7eYAWeSKNNcmcnIU8xiLhUF0foXVk9l0iI7zr15QdskcU1VHoUYfxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7837
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7ADAAD1002
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
arten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Subject: [i915-rt v5 06/21] drm/i915/display: Remove locking from
> intel_vblank_evade critical section
>=20
> finish_wait() may take a lock, which means that it can take any amount of=
 time.
> On PREEMPT-RT we should not be taking any lock after disabling preemption=
, so
> ensure that the completion is done before disabling interrupts.
>=20
> This also has the benefit of making vblank evasion more deterministic, by
> performing the final vblank check after all locking is done.
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_vblank.c | 30 +++++++++------------
> drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
>  3 files changed, 15 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 778ebc5095c38..cb31c9c1c2525 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -684,7 +684,7 @@ void intel_pipe_update_end(struct intel_atomic_state
> *state,
>  	struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe =3D crtc->pipe;
> -	int scanline_end =3D intel_get_crtc_scanline(crtc);
> +	int scanline_end =3D __intel_get_crtc_scanline(crtc);
>  	u32 end_vbl_count =3D intel_crtc_get_vblank_counter(crtc);
>  	ktime_t end_vbl_time =3D ktime_get();
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> b/drivers/gpu/drm/i915/display/intel_vblank.c
> index a85796f9d29ba..58c374a7530fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -241,7 +241,7 @@ int intel_crtc_scanline_offset(const struct intel_crt=
c_state
> *crtc_state)
>   * intel_de_read_fw(), only for fast reads of display block, no need for
>   * forcewake etc.
>   */
> -static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
> +int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	struct drm_vblank_crtc *vblank =3D drm_crtc_vblank_crtc(&crtc->base);
> @@ -732,6 +732,16 @@ void intel_vblank_evade_init(const struct
> intel_crtc_state *old_crtc_state,
>  		evade->min -=3D vblank_delay;
>  }
>=20
> +static bool scanline_in_safe_range(struct intel_vblank_evade_ctx
> +*evade, int *scanline, bool unlocked) {
> +	if (unlocked)
> +		*scanline =3D intel_get_crtc_scanline(evade->crtc);
> +	else
> +		*scanline =3D __intel_get_crtc_scanline(evade->crtc);
> +
> +	return *scanline < evade->min || *scanline > evade->max; }
> +
>  /* must be called with vblank interrupt already enabled! */  int
> intel_vblank_evade(struct intel_vblank_evade_ctx *evade)  { @@ -739,24 +7=
49,12
> @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	long timeout =3D msecs_to_jiffies_timeout(1);
>  	wait_queue_head_t *wq =3D drm_crtc_vblank_waitqueue(&crtc->base);
> -	DEFINE_WAIT(wait);
>  	int scanline;
>=20
>  	if (evade->min <=3D 0 || evade->max <=3D 0)
>  		return 0;
>=20
> -	for (;;) {
> -		/*
> -		 * prepare_to_wait() has a memory barrier, which guarantees
> -		 * other CPUs can see the task state update by the time we
> -		 * read the scanline.
> -		 */
> -		prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);
> -
> -		scanline =3D intel_get_crtc_scanline(crtc);
> -		if (scanline < evade->min || scanline > evade->max)
> -			break;
> -
> +	while (!scanline_in_safe_range(evade, &scanline, false)) {
>  		if (!timeout) {
>  			drm_dbg_kms(display->drm,
>  				    "Potential atomic update failure on pipe %c\n",
> @@ -766,13 +764,11 @@ int intel_vblank_evade(struct intel_vblank_evade_ct=
x
> *evade)
>=20
>  		local_irq_enable();
>=20
> -		timeout =3D schedule_timeout(timeout);
> +		timeout =3D wait_event_timeout(*wq, scanline_in_safe_range(evade,
> +&scanline, true), timeout);
>=20
>  		local_irq_disable();
>  	}
>=20
> -	finish_wait(wq, &wait);

Changes look good to me, but I would still suggest to have a RT variant for=
 evade handling.
Once we resolve all corner cases, the relevant pieces of code can be made g=
eneric to apply for both.

Regards,
Uma Shankar

> -
>  	/*
>  	 * On VLV/CHV DSI the scanline counter would appear to
>  	 * increment approx. 1/3 of a scanline before start of vblank.
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h
> b/drivers/gpu/drm/i915/display/intel_vblank.h
> index 98d04cacd65f8..aa1974400e9fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -38,6 +38,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc);  boo=
l
> intel_crtc_get_vblank_timestamp(struct drm_crtc *crtc, int *max_error,
>  				     ktime_t *vblank_time, bool in_vblank_irq);  int
> intel_get_crtc_scanline(struct intel_crtc *crtc);
> +int __intel_get_crtc_scanline(struct intel_crtc *crtc);
>  void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);  voi=
d
> intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);  void
> intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_stat=
e,
> --
> 2.51.0

