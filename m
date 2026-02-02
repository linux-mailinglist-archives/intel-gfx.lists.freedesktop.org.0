Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CF8NysSgWnmDwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:07:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E578D1811
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 22:07:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCB310E2E2;
	Mon,  2 Feb 2026 21:07:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T5DyoFsp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FEE210E065;
 Mon,  2 Feb 2026 21:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770066471; x=1801602471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i9fiO44cAfNFOPpMxktUfe85oiom1RYRFYkphS1xW64=;
 b=T5DyoFspBpncgfiOu149WibHRLzIHadBhHLAZc9xTXwZqhE3hGulgvtc
 UyjaAOPVZJKoLYWX+TjqjT7Wg/mKbPpUzPeWOBIJ7YJpcVPUFQ0lePdfM
 QHfLR0bmSzDHrGgMwBO5FmO8YXI7GjfhKzDoQ1o7G3gywKPHn3mFiR1dM
 /HVoJmxcRiv2n1Y6yW99jCncLyMuJRbE+g97GI6lWl6kw6AWr6oOZPTPr
 8LQAOizWAU1n1RqNQl44abmKeW9yUMdTu1pU/saR4L3ZBDtXLnXHQo7JU
 P38dFNJbtG8np26W29j3Ujr59HgCUyuy7K3C7AJuGhKJeiUstCTyIMg2B g==;
X-CSE-ConnectionGUID: 5qXFwkIUQGeItj/hUZK8PA==
X-CSE-MsgGUID: 2lxybDuORbiNq892OVo7lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71133913"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71133913"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:07:49 -0800
X-CSE-ConnectionGUID: 8un3sAD/QHi/xsdYyjX90A==
X-CSE-MsgGUID: GO6QmcDPRXiFCNoZnq+0BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="213745462"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 13:07:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 13:07:48 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 13:07:48 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.18) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 13:07:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uyp5cOeOl/pbUlfiGgFgjg76gtQ70Bxhvu5Wg1lBtE1p4pmo8Tza2Cy4zAgE0XZD+zTNMwGWvDr4v6fca7X2KqIMB8zF2HSWgDeeo5vmaS8vNqvTxLyaybuhD5U/XN1hKY+lerQzySV0i8321Lyz+dTHuFBxGkcKQJBPxIZR0ISEBjTpRFTP3pfIZcpq6Sucdi6G9tDmXODroD0d0wBkTC5FimtvVOIeH+kydbgoVUh4VsFwX+qqFP4uaxBD8wNLtt7w1UdOwjjTqpjGgplaG1a1yfvyUjAZcyt0JMqyTmSnrYR55aNnqoA05OXkKFEZNkPOW9JV9X+1LNSUP/Jbew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rbs7FeSsqbaCWEWgpG4xWmHT6Z/TgsAFpnwscKwXIo4=;
 b=Qq8qf+RICWgG0I3crqL81j/PFUiQqXuhNPszt0hxFO7Uwb8ahJAEZSHgEqb5LiaL28yFq35p2+VWHX+O2ibxSCA7zHARWElTrRsDYbmS1GTqAo1mdqT0yjC1BxF4R2d2hOAQ/Eek2OVIcWD6YjiLGREottd/42gQ+xIFnP8t+zyi+L320ZqbQYHpN7UK9AinvZqRguZn1NAqy6M/sjHa/Uyb9AUQv1JzO/HarsejwukZe24bICKlmPVcUFTMZP8Z7LXDuK+9XpLL6XRZgErKkzX/zSJl2hb4HTl+to+Sz4YTBg1Nek0ASrV/t1E44JycvkYeW5jfaaRPLsSXzq8iAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH8PR11MB9535.namprd11.prod.outlook.com (2603:10b6:510:39f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Mon, 2 Feb
 2026 21:07:46 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 21:07:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Mike Galbraith <umgwanakikbuti@gmail.com>, Mario Kleiner
 <mario.kleiner.de@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, Sebastian
 Andrzej Siewior <bigeasy@linutronix.de>
Subject: RE: [i915-rt v5 10/21] drm/i915: Use preempt_disable/enable_rt()
 where recommended
Thread-Topic: [i915-rt v5 10/21] drm/i915: Use preempt_disable/enable_rt()
 where recommended
Thread-Index: AQHcit1q0s2ln48E8k+hfmPAklB6RbVv+dKQ
Date: Mon, 2 Feb 2026 21:07:46 +0000
Message-ID: <DM4PR11MB6360421D5A52A155799B6B6BF49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-11-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-11-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH8PR11MB9535:EE_
x-ms-office365-filtering-correlation-id: e56e6c04-6fde-4c51-a821-08de629f1d34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ipPMlYwJCI7o9pW3aWxgaVj1OjiCgy1eGNcuJw58FMRNSx4ZZKKF8dsy3VmK?=
 =?us-ascii?Q?4BG/9vL5we6ldht7FaR5L/9zXNoDPkG9d0cp5PpBx05TwNQqkEWG2qxi5tmp?=
 =?us-ascii?Q?WUrXI4+dsbxoCvoof54d6J+T+xFKercQLSYGkniVE7XOZHqsdTwCzYUjg19o?=
 =?us-ascii?Q?oIRxOty4ryvCJCami5MJj6vz4ATXnex9MN6wSOjyWAkSCZlF6Gz4JLrmYL+I?=
 =?us-ascii?Q?RgfTE6Q11STNeJaqaJd1PMngNLLsMr8K5EPb4dO42uMlcOHsLFAY5WB4NJcr?=
 =?us-ascii?Q?3d2PvO25hCWyAadnAQrXrmbViodKDK9ny9vfnCKds23/jNyv4M1bxQ7qcR8Y?=
 =?us-ascii?Q?ZYU6dYRlgIFU8uCoGmG5I/DavEpujkIfunCJAfVDDQcavi4hnaQ4JXWYXnk7?=
 =?us-ascii?Q?/xEscCOipK6r6DX7nm0QwVwuv5q4RsnICxh4DnHRN5cUwBcPgx8q1up9OZY0?=
 =?us-ascii?Q?zqPQj4sltiFUqBtuhBFXoFNv83KY+SaSjYU3m5MJPs3koxa1C71BOxCjiYmk?=
 =?us-ascii?Q?INcpN4IjwcrYyZlRN7lkXBoLll5AQYb6NueK5EDXNlL2jQ447H7mTBaBXn6p?=
 =?us-ascii?Q?f/jed9wC+LEugUb/2SbepqlEnYcXzFbqhNRh3D3dFOVhx8MLCy/Cf4qTUppc?=
 =?us-ascii?Q?ceFWeBXW6tz4to58g4mUQqXtuDbQE10Ves3oIa4FOZh1h71opD9aBEHTMEVO?=
 =?us-ascii?Q?YrWZ7Era2IoVWQYljMQraRKlH5BhlaDDOytwtAL26UIXNJscOnoy7bK5HiVF?=
 =?us-ascii?Q?0wQVm6q9aewDeWUeJjWkp92XmW9SHM4e1nrHPeUmjzK8oqWnIrBds0TNcSJU?=
 =?us-ascii?Q?8sD+7Xv3NBBNYP1nwdJ5o5yiv4nGzfHZHNh7zPr1HpaCEGkjb+wT+aAaIFWE?=
 =?us-ascii?Q?3MxMnLffYYp4/tpeDLuPENmljBawsnFJKf3iFoXlNlGhQVnYtupwpvN/sN07?=
 =?us-ascii?Q?dr7vfPlhqnpxm7sELxn0NvRvD3x/3suGnW8mYx5KbZI5KBEghRjAqMUjnoyg?=
 =?us-ascii?Q?B8AGp1cB0hy6d01Xt2w1WNkFmxTHjWV7xeJK5Z9olHLVXf6UlkKV68TLqoTe?=
 =?us-ascii?Q?IzdXCWvfseylk9JCcvZPswF3JbTVke3+nQHvDL6xZkYXZ7WGJpxpVCAtcyMA?=
 =?us-ascii?Q?+DzhSxCqz3zm6iDG4xcyzJzw7ewK2yFczHdr6+5b+2D9ITvfw1QNnt2foI82?=
 =?us-ascii?Q?aE4VKP15VcPVNlBvk/RGFC6CqEFnyfH5cktf5cXYkALarzjqGc6RmY/4B7Pf?=
 =?us-ascii?Q?d1yktQEi9l660Ihh/QmSUJpIAOd5eJFw3NerGoQCWXX31ohUQf230sgbZ93Z?=
 =?us-ascii?Q?VUe8GmV14L7koF3sKY/RfV5nf69SINYzUwn15Tvi9fbsehjdsvhTSxpXUd4O?=
 =?us-ascii?Q?NHTADiE9/VGZTOF2QvnCRtq5c4rfBvuOlkDufe/vYXLkz2+OUxIXtLXwrUzX?=
 =?us-ascii?Q?yqAZ7jqbLBpmLy1HtYrHX//0u3SBOxIbh2uTi0j39hfd5H+VgKUTLBpBQ9cQ?=
 =?us-ascii?Q?XQZxbpjGL+ca7WpUobVc4E1DQwuDv7gCtjK+5pjkpmBmTm5pl5PbIk+XnKDP?=
 =?us-ascii?Q?gV3cKCDuV4ctQvv/nqPCIXRqcA95J+d6QntklUUf2hj9woQrVEv6taZkWvJr?=
 =?us-ascii?Q?1Qu2D93icWz+Ovrvw47GXrI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qGwQhxTRwKOIVNgUCjlo97RrpFFFIoUUufA7TH5WfYxcoeB0iERDORuUl6e2?=
 =?us-ascii?Q?XJ4cAmfAgHF3xYtKm7mmxiExAglMORHWphbaVEaZaWFVYAcPG/QI6bepCP1M?=
 =?us-ascii?Q?89qkMlKmPhcBtzrSjVUmdboLUnldBJlqkO1aDs2muxzzDMsnzXSy2FaNKaJW?=
 =?us-ascii?Q?OW23rE7Sx4vHhjB4FpALb5hWdMb+W5dgPc296386K60rQ5JnYgJRqRLE/JXR?=
 =?us-ascii?Q?Gg2GtsGPAG0VYm+XNevc34mNC2nzbzRJ6WKgkwPt00mJCOFcWnOpeziGVMup?=
 =?us-ascii?Q?PMTuBCGNdWmJMZZfJU5IhqtoUoe62lFiZMBpM48Snzp7xK5lLCAbwp7aG589?=
 =?us-ascii?Q?fwSfWXaqXzMSKaro8Fqtak2nYH6cRJy+uZm0OeNUPFM88/8vEwZFsHrWlcg5?=
 =?us-ascii?Q?IA3Dmo43QfE6S/mpnmAc8VFpYb/xnN+7//hd1OYJ/Bi/RAmAZALCqc6kJT9H?=
 =?us-ascii?Q?UKZsE1OITkYQwJlRJI1aPbwEEFeZ7L1MNkISVOQo6cLj0rKff1XtCa1hW5TQ?=
 =?us-ascii?Q?QMg+0Xrnt7l2APw7ezN7QUfsUIwjD3PJrNagZ1reaKjsLX3Oqhm7xvbOTGKX?=
 =?us-ascii?Q?Y9/7hpEeuB/sCUzdMOHkzgqfkoDOj2FezSTEWHqKgTNbOXKfALfcgLfwxmig?=
 =?us-ascii?Q?L5sx6X4t2Ziyk9lTB9zCvLKhMJi5j/J6YYQNL+teBMUDThxyuD1oeKDC1RUn?=
 =?us-ascii?Q?pI257bc/U4jtBhUzO/foBCLg5wHhJNro7qksExOujaZlyjGrAC8uzXopztfZ?=
 =?us-ascii?Q?1QpV1yL5EcRzIrV5izUTKLKkJHpYZsL1ef3U1DZnlghrkW9wTuvJyKGK6lWY?=
 =?us-ascii?Q?l+1Qdb2MH8kfG6HgU+0fy7Va4SmAHIYio/NemuD6gbMSGJw6//5+BMpUB2NT?=
 =?us-ascii?Q?G7ye5SKkUXnfO09Egt5vSMBzDzH4zC2pX4ZkxX9f+k+T/fdQljoXpwmqBcng?=
 =?us-ascii?Q?f0N2Q09KpsodGZg4fVDxzZSXrZFHtFSRSbKAPUFxUH0vTsM1t9/TTqK9dK0z?=
 =?us-ascii?Q?MNmlL9VF7Osmy0NGJoCeeiOnkaNzbfkSvrmnf4/8fXHUrzyJiJO2/xH91WY/?=
 =?us-ascii?Q?ASi7o44yMuf5VpZTyAP1h04M7jIUaJDYBNLASem+CvqvHyQQlzUqEtH77gUB?=
 =?us-ascii?Q?dwNaVf1r/N20/FK6n+aJ+vhMo4ti7KCA3Je7ESb/sIFWWYVw5D6O4CpGC71a?=
 =?us-ascii?Q?s/3myWxzV1SGTBrJAWtGvN3iwy7FwFOqjxU6/9Yh4+AH2WfE90XsXLANHvNb?=
 =?us-ascii?Q?Ocx/YZUiwpKLSn2Kn/+E82DhpFDwFbsNpoXTPiZ/xCICZ+t4XzOnioHddR8m?=
 =?us-ascii?Q?bpQv41c3ivPycTSlw6x60mgPJeOfYmBVsii6kXo8MqSg4eC9RD6f1YKGK27g?=
 =?us-ascii?Q?4ldd+dllZ7JwietTe03HNLvvuKq7gdYiiRf7+74qrY3zaeRp5Xl+dtisyXQT?=
 =?us-ascii?Q?rKPHJZ2S61tEfKfodAaT4PvJuQZGZV7rDJIGoKXlC+sNfoHdWtbUivfq75e6?=
 =?us-ascii?Q?NUxJsE3T2y9ZbjzYxMO1gEI7gQKMVdXgRg9VNzsbNOZtmzc2sqpuSun6Zt35?=
 =?us-ascii?Q?Tgjbm8key07SCCgAHtfyUBrSjLxjUsh2b0nqfwTp/qwTZ7RSf96Ppy+hemyn?=
 =?us-ascii?Q?OwP3bnE1rb/0GmZyyCGj2/oLK+vlmpwbLu9PfyC3zaM1KAvGp2jL/me9LABS?=
 =?us-ascii?Q?asQb2EJdGWcnY1mRu6/SVaMeTawP72F1/M2XCIMOog2ifI2jJSGiAY2nZbFm?=
 =?us-ascii?Q?/bzjqNGY9w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e56e6c04-6fde-4c51-a821-08de629f1d34
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 21:07:46.2385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jAW01fIkE7MEjHwM66RC3L4SW0lMqnaRtjXlAe01VRDIaeAxe0Xq11ylwKAVIZFH/nRLI8VR374r+G5GQMm+HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9535
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,linutronix.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,linutronix.de:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lankhorst.se:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1E578D1811
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
arten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Mike Galbraith <umgwanakikbuti@gmail.com>; Mario Kleiner
> <mario.kleiner.de@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebas=
tian
> Andrzej Siewior <bigeasy@linutronix.de>; Maarten Lankhorst
> <dev@lankhorst.se>
> Subject: [i915-rt v5 10/21] drm/i915: Use preempt_disable/enable_rt() whe=
re
> recommended
>=20
> From: Mike Galbraith <umgwanakikbuti@gmail.com>
>=20
> Mario Kleiner suggest in commit
>   ad3543ede630f ("drm/intel: Push get_scanout_position() timestamping int=
o kms
> driver.")
>=20
> a spots where preemption should be disabled on PREEMPT_RT. The difference=
 is
> that on PREEMPT_RT the intel_uncore::lock disables neither preemption nor
> interrupts and so region remains preemptible.
>=20
> The area covers only register reads and writes. The part that worries me
> is:
> - __intel_get_crtc_scanline() the worst case is 100us if no match is
>   found.
>=20
> - intel_crtc_scanlines_since_frame_timestamp() not sure how long this
>   may take in the worst case.
>=20
> It was in the RT queue for a while and nobody complained.
> Disable preemption on PREEPMPT_RT during timestamping.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> [bigeasy: patch description.]
>=20
> Cc: Mario Kleiner <mario.kleiner.de@gmail.com>
> Signed-off-by: Mike Galbraith <umgwanakikbuti@gmail.com>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 43 ++++++++++++++++-----
>  1 file changed, 33 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 6bc784563a7c1..e204c260b9aef 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -316,6 +316,20 @@ static void intel_vblank_section_exit(struct intel_d=
isplay
> *display)
>  	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>  	spin_unlock(&uncore->lock);
>  }
> +
> +static void intel_vblank_section_enter_irqf(struct intel_display *displa=
y, unsigned
> long *flags)
> +	__acquires(i915->uncore.lock)
> +{
> +	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> +	spin_lock_irqsave(&uncore->lock, *flags); }
> +
> +static void intel_vblank_section_exit_irqf(struct intel_display *display=
, unsigned
> long flags)
> +	__releases(i915->uncore.lock)
> +{
> +	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
> +	spin_unlock_irqrestore(&uncore->lock, flags); }
>  #else
>  static void intel_vblank_section_enter(struct intel_display *display)  {=
 @@ -324,6
> +338,17 @@ static void intel_vblank_section_enter(struct intel_display *d=
isplay)
> static void intel_vblank_section_exit(struct intel_display *display)  {  =
}
> +
> +static void intel_vblank_section_enter_irqf(struct intel_display
> +*display, unsigned long *flags) {
> +	*flags =3D 0;
> +}
> +
> +static void intel_vblank_section_exit_irqf(struct intel_display
> +*display, unsigned long flags) {
> +	if (flags)
> +		return;
> +}
>  #endif
>=20
>  static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc, @@ -360,10
> +385,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  	 * timing critical raw register reads, potentially with
>  	 * preemption disabled, so the following code must not block.
>  	 */
> -	local_irq_save(irqflags);
> -	intel_vblank_section_enter(display);
> +	intel_vblank_section_enter_irqf(display, &irqflags);
>=20
> -	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
> +	if (IS_ENABLED(CONFIG_PREEMPT_RT))
> +		preempt_disable();
>=20
>  	/* Get optional system timestamp before query. */
>  	if (stime)
> @@ -427,10 +452,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crt=
c
> *_crtc,
>  	if (etime)
>  		*etime =3D ktime_get();
>=20
> -	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
> +	if (IS_ENABLED(CONFIG_PREEMPT_RT))
> +		preempt_enable();
>=20
> -	intel_vblank_section_exit(display);
> -	local_irq_restore(irqflags);
> +	intel_vblank_section_exit_irqf(display, irqflags);
>=20
>  	/*
>  	 * While in vblank, position will be negative @@ -468,13 +493,11 @@ int
> intel_get_crtc_scanline(struct intel_crtc *crtc)
>  	unsigned long irqflags;
>  	int position;
>=20
> -	local_irq_save(irqflags);
> -	intel_vblank_section_enter(display);
> +	intel_vblank_section_enter_irqf(display, &irqflags);
>=20
>  	position =3D __intel_get_crtc_scanline(crtc);
>=20
> -	intel_vblank_section_exit(display);
> -	local_irq_restore(irqflags);
> +	intel_vblank_section_exit_irqf(display, irqflags);
>=20
>  	return position;
>  }
> --
> 2.51.0

