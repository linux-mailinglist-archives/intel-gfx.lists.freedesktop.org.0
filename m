Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JgTEb3Kc2mQygAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:23:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B397A219
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 20:23:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D869E10EBC2;
	Fri, 23 Jan 2026 19:23:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lQO5U9OR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F53010EBC2;
 Fri, 23 Jan 2026 19:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769196217; x=1800732217;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=zn+aA1M6DoWlU5vKQ0TavUQRQiSnYHUt0NZF0ffhanQ=;
 b=lQO5U9ORvNbpxDLtsqst11VmKa9C0chQj7wXSokPMJhKw6QkaC+ReFvL
 r4xuR5vXySxjoTC9f6VVxf0W8A+vZ8rsMxDr+fPXn/8ceV/S98MP95hyM
 yBSe5zLXbB84SpunKSFOXYjCgZwT+ZYNI9t58uOrWQBnw8qZhlst+SmE0
 40q9fQWo/B2rgV2oFmlaZAerwDhLjCrARlpDPYsa6UCazrlgOI2/2OAp4
 HVH4IuXrSkQbM7d/w/6RW6C2U1kxp0reupy1cJ0j9vxa/kXOkTJQWmFl0
 msl5VgzibxBxt0K6xC1yKBJLAWZAO8EukLLxPjgA7IwShmQX57mDEu8dk A==;
X-CSE-ConnectionGUID: lwPW/ZtNR62dRhA10MGi3w==
X-CSE-MsgGUID: WjMscMO4RrSl/p8ZTvm8Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="81171226"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81171226"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:23:37 -0800
X-CSE-ConnectionGUID: Ucwri1ZGQ4GXImxjIjp+Pw==
X-CSE-MsgGUID: v4fFm1tLTHmtGXg+xJA0hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207142226"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 11:23:37 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:23:36 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 11:23:36 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 11:23:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jLiaAeVVBrBNDG7BOP13BTuPMk7nK9vyNSPt5FS5COgGcKHZLlkfMqf0udxVpybvG2TIsL3Tjj8mhL6OUbVaplshObV9u8a+SxZfyZ+fMMb5nArBTB0gEydQSohTj6YwXoJcRAFjivux8vwyf+UouwPvfIvZClFhxBpko5+Us+vnjT41FIBTRd6nPE+J30qlzMMzOGjj1I0pQw+AXwqoJdcUrtIRdOdmEsEvF6jIfJ+743F1HwmWeED8p7lZSwIFNCQAF9K0syoHYZ9F2I7UYqcxsf6cxGTjOQrFyDX3MBAAX2FtEEeuoaUn3btsrwNEJ0KHrLHpOCt8H2TEzy6tLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EeJW0iPpoweI7GaP+q9TFV9h4NiY7gND+A5qd5FuvP8=;
 b=IlUdF1wyJ3XJ+RotwSsKtCp1LyGn5aWh39EjW3HK02sZ1ttHkzCOcJ/Ine34AKr6137tMC8Pw+IWledz/m0fJHy8M8pv82pJn5Oy8+99jI7rEDBPwyLws0A2P2utEnlhlo0DDy4/yKH9BWhFRBvmWXg7co2e/qTLlriQDqZKxqBCqCWqbZTH2IC9Qf8PiE2b1LFZSTWFsAZDbD+g0l5d+N6M1EKSlS9erjnkp8W1+3MDPS4p93CU0tr8cAPvzJfc7D4EBa/Hog2BVVtv0AxW4omk9+c+9YzehKjV83WSLCsk0yg7bAEDMKuHzhL6lmMx7xTocHJ+XDxg34UB5B66VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM3PPF733C3E759.namprd11.prod.outlook.com (2603:10b6:f:fc00::f2c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Fri, 23 Jan
 2026 19:23:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 19:23:26 +0000
Date: Fri, 23 Jan 2026 21:23:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 09/14] drm/i915/dp_mst: Extract helper to compute link
 for given joiner config
Message-ID: <aXPKqnmK_tNzJuIh@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-10-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-10-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO2P265CA0234.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::30) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM3PPF733C3E759:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e0aa5fb-0f1d-4a37-467c-08de5ab4e1fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Y/+D7sUtBXUlQSq6mukFmt+F5NVRtrTmxPb1hx0kuzGUQuB3FqqyMmDAvclG?=
 =?us-ascii?Q?2wBKp7R57lEeGnFjEbPi2/Xf8T/3Bokf4FsGsVHxJcygHqu47MqkcQV/P5t4?=
 =?us-ascii?Q?hDX/1WjNHUFUgViJwbUt+O+xsBFzd41boi3jHmrcqom32I81xGI/zKsCPCLq?=
 =?us-ascii?Q?fPNCiAIMvgEbFtLpvnhvOdxhKUQ/3i5a0vZYObxKEIk8W7wSg5GGG/3vX375?=
 =?us-ascii?Q?OuSSQwTY8HjbooU0ArfLbdJ2uibTBR7I/RyPnHpwgVfCTiUXTFA0DhWyInIw?=
 =?us-ascii?Q?+8QuCCI+EJ1VU7FlqiO7GxlXEzcRj7IpUaOKY1MneINCo5ly1Nf5OZKolzHe?=
 =?us-ascii?Q?D2KY7oqLCN5maUjsINXzIZ+804s713ezK8bgLg5U39T2iX0rlZVyp8+YAFPM?=
 =?us-ascii?Q?bw1SBYjSKw+WflduKiilTNgrC+S1d4j6lYFMlf+Q5Rfz8mgxMTolrXdpvMGt?=
 =?us-ascii?Q?cSHrpvwFsuVSvglfX0SvvRMwotCvFVji7Ni92YAZ8dea/nfFdNXtGrYSaEfQ?=
 =?us-ascii?Q?+l+KxiE/uZtH04Fw/U1xAs6ieiQLSSpz2EEglS99FTRO6a9b4dCOlwdt+UhS?=
 =?us-ascii?Q?yUXJNBztZ8BhwaIzwKRrX7SLGyuJpVFGEwQgAfWo9kLB/ipS02cOJb5mXWPh?=
 =?us-ascii?Q?h37C+zTuk2qLPrposoGTJ15OTnikEqHcEwpCrlc3pxfTuMhsRpnVAVn3EvLF?=
 =?us-ascii?Q?AqBPnwgm69Uq5CsfEpVYW76kkGgoVK23WBIGxVvvgHEMWTDS130dkpln+U2P?=
 =?us-ascii?Q?StuZE4UbDYiWLq4PqGBB1FQQ/7Yu7KGW74Vel/fwD4V2SJRDvMg5hxTo7usY?=
 =?us-ascii?Q?+PJa1b9vTAszx0lA27ZtDqMffLjWQ43KAvDvDFUj/EZyccgiFav3rUuN8pLp?=
 =?us-ascii?Q?WiNCnFFyMC9PxJThhpVB5e6Ov449gOofNh20XTykcHTaHV4b3geQp3ITTl6m?=
 =?us-ascii?Q?y2jeEUt+h0SCxPOapfKE+n2lDJX6bIlvVxYKP0UYRVngPhzP553K9FqjwSio?=
 =?us-ascii?Q?MtlsYlP92Tiwtv9GiN/jy+E8R9Xa3hhyRg+a8ZsSACo9TnDq9wPlHi93CJLi?=
 =?us-ascii?Q?5jx79EQ8vG3yHCSwjeUHd0wxAjGa4HpB3KRo3uk9ff03PBky1fw2BYgj6coG?=
 =?us-ascii?Q?ytoEDgdNVDZCNZd3SeGsplC35S+mUra80hPsUxTv+T7qRMn07flcyl+XZIrJ?=
 =?us-ascii?Q?8kJTu6LAkGcTroeHePH4ryNb768iOkejQows0pj94fFwaOv+v0eV7PeLpZve?=
 =?us-ascii?Q?/dz5UeXEvLxqx+NPviyOj5aUtXBaxr4Hjp8gyNKbw8tiyVzp85q85sRohaLa?=
 =?us-ascii?Q?JES6bcQGJ+I5B6FZP6S6boLjZ3/ONXdVSjLgi71XDxgVysNI0uPXqR6TAsDG?=
 =?us-ascii?Q?OZpY9nyBxhheX9GPTtRYPrBU9RXquNPrTtMszRyOPiHonsjIOTTeN6Wnybrl?=
 =?us-ascii?Q?U75iiNZcHgCOhFFg7XjmXSJVVj5+flNjVX2u7xwQ1s718uXOOJPIHvrNtAgD?=
 =?us-ascii?Q?Z7CfxUqSACz9thfZBtFjZQYNr7z/ry4/EGSlEgMTw3VBDBoJFvaPNvd5yw?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KwqegSFj85EPcKu1XtwPCIFKWNrCGkOcrPGoFj7fCl10qaCNGiUzeZnBDqvX?=
 =?us-ascii?Q?jvdZr5bQgfc5L21UoXxMDmvWXQ8/fyp2LL/f3zHNt4/q9w3yhpwkriUFg7Um?=
 =?us-ascii?Q?+rOQQ+xABZe4P9DNNrdioPGy49fgp7RNSafCwje5vREHCE1FsY2cQb+EXQ8Q?=
 =?us-ascii?Q?hrI2pRS1MmDFJBIDg6AvNLHKroTOt1zlF3FzL53+A7GIN8ZjfQjZMGJcau8H?=
 =?us-ascii?Q?hFMhQ0RORY9fQfEl0+2VoKNcEIrWibyo3+qPMrl0wGBhfVD1wscQSGJu7vLg?=
 =?us-ascii?Q?BZH2bMWMINDVWbVaIgZPCKbX3BAQacUYVuwMFb2f0uIygW5m/nIkA2nZwvYl?=
 =?us-ascii?Q?wqkyjkI3wthGSArpgUxbsiJqBb88m6Cg/SYiLleoZmKw/l90GJ2H2VH5kChL?=
 =?us-ascii?Q?ZYsqeX+nGwwGIob2KjaTEBWhwcyAsth23Fz2CDsA1gzBUPkiAMe74497K8Ul?=
 =?us-ascii?Q?8FX9ffNKuyLgGOvMzE6NHKAwQW91RSuKUn2GLi+00mr7RmcC98VOOMQnIIev?=
 =?us-ascii?Q?PSHoGGaaThTg99cedRJo3TrCQIbfUBmYg4HTrI4WFbUXpIuXRwuMsPEfNfBh?=
 =?us-ascii?Q?sju0FvNQr0aZUH/0zCVHGZq9iY67qjetxHWDpHRqY84+9neUYYeae9fzHBxY?=
 =?us-ascii?Q?Db3fWeFqQZeJO9YGSj0h85Sp1+cDboVsOKBpoeTflZyg7+Qm1wCVlnwbfnJ0?=
 =?us-ascii?Q?7x+lF4ZyhnZr196UpOkOQEKQKRXHTIrrwHbsRyy8wHbTFVtYgqEhaVi8zAvp?=
 =?us-ascii?Q?KpuKzvGZkwu+y0T3I6jQ0c86GkE0KhgxNAZKR5dn+4opSFaD2soszfdsFaxI?=
 =?us-ascii?Q?9iLacHiKw2krxYv7p08zdUHzUcmDx51UyFIDxt9pKtUHhF0Bgkgynilta+PW?=
 =?us-ascii?Q?vCj33mqGl47hwKdz0mHwpIIBTTPE4ua2irMYr0T7D+erOh5cJkbFOqyE5PlH?=
 =?us-ascii?Q?ZL8sgwcCboZw3KD70iOEYfCTaf8KL3D2JSxKn5+03Nsf8yh4XhBd+x89FOgD?=
 =?us-ascii?Q?VnVCW2a2UfJWmvx/nY6R27NGB2RamvAi/T0np5ijleFlITDqlWsbs5WuY+in?=
 =?us-ascii?Q?CfBE0IzEibs7YPkCp09m4BvyZb7KrTHpdbvZWNylAtnouXQB2HYy8nbTcoYJ?=
 =?us-ascii?Q?TTdjRj6VyEFu67eAI53oAx+tCK6huqaCX5PT8ok9ClHloHwQFmXO8Ojv6vQj?=
 =?us-ascii?Q?ShE7zPtvuCd+kslkHAiL7dojCPOioeLINzH1c6JSpogMN+Lt1WzrI+tDZJ6V?=
 =?us-ascii?Q?QA1LKUVodbl8cVw+cK5r6Zigc0AFKB+ssUcASC645gFw5S/99jJVJcjCDc9s?=
 =?us-ascii?Q?h055VuJDXkBAWHugmUzhnH1+Rbf+f4cXw3sKVuNghr9b/CWupctBIRqpqrk5?=
 =?us-ascii?Q?VmBlYBf5NIPJsuAl7qyHx4aJ4BKfpyeJtpUaM/YDgLz83Jlc2MwcDuJzO/rD?=
 =?us-ascii?Q?NNXhTNF3p1wxDH37mTGFR9JmPiceXTjx/WK9oozzEGxVdqYKSDaMdIf5zXzE?=
 =?us-ascii?Q?KaE/M1Ii5Wvl0MLHGQAGMsldzY0orDGVJHj0mO4YLJspOOnh2HkqTuEFAldg?=
 =?us-ascii?Q?NfYKmAtQLhUUwyuL9HUilmjkTgqB4v1eP+Zcl7osU69cNj3gTRi3SRE08gLE?=
 =?us-ascii?Q?JUFjdbjc/SiYMxlhtjcmlHOfC1hBe3V1flpZFcU490N6l2cuUDqByZUK3EgN?=
 =?us-ascii?Q?Ok3eVXOstbUCrJC1TcDX48xPPhA6Oo6vWeZV2iW2ZNvaw0EcGFKyyd6dbwu0?=
 =?us-ascii?Q?zIWPf+mOBA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e0aa5fb-0f1d-4a37-467c-08de5ab4e1fb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 19:23:26.6107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5y+7dVOC2wK2N0Q4VIHN67ulXp07wRrwpUtqMNFLJoMQJtqwEnaWJiWUUSmwIWHCTuuRojwXb1phWr/S0OSwhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF733C3E759
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.941];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 61B397A219
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:25AM +0530, Ankit Nautiyal wrote:
> Move the joiner-dependent portion of mst_stream_compute_config() into
> mst_stream_compute_link_for_joined_pipes(), which computes the MST link
> configuration for a specific num_joined_pipes.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 72 ++++++++++++++-------
>  1 file changed, 47 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 3b1825161d18..e9cfce00efcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -602,40 +602,19 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
>  							    dsc);
>  }
>  
> -static int mst_stream_compute_config(struct intel_encoder *encoder,
> -				     struct intel_crtc_state *pipe_config,
> -				     struct drm_connector_state *conn_state)
> +static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encoder,
> +						    struct intel_crtc_state *pipe_config,
> +						    struct drm_connector_state *conn_state,
> +						    int num_joined_pipes)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
> -	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_dp *intel_dp = to_primary_dp(encoder);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> -	const struct drm_display_mode *adjusted_mode =
> -		&pipe_config->hw.adjusted_mode;
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> -	int num_joined_pipes;
>  	int ret = 0;
>  
> -	if (pipe_config->fec_enable &&
> -	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
> -		return -EINVAL;
> -
> -	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> -		return -EINVAL;
> -
> -	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> -	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> -	pipe_config->has_pch_encoder = false;
> -
> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> -						     adjusted_mode->crtc_hdisplay,
> -						     adjusted_mode->crtc_clock);
> -	if (num_joined_pipes > 1)
> -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
> -
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> @@ -699,6 +678,49 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> +	return 0;
> +}
> +
> +static int mst_stream_compute_config(struct intel_encoder *encoder,
> +				     struct intel_crtc_state *pipe_config,
> +				     struct drm_connector_state *conn_state)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
> +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +	struct intel_dp *intel_dp = to_primary_dp(encoder);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
> +	const struct drm_display_mode *adjusted_mode =
> +		&pipe_config->hw.adjusted_mode;
> +	int num_joined_pipes;
> +	int ret = 0;
> +
> +	if (pipe_config->fec_enable &&
> +	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
> +		return -EINVAL;
> +
> +	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> +		return -EINVAL;
> +
> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +	pipe_config->has_pch_encoder = false;
> +
> +	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
> +						     adjusted_mode->crtc_hdisplay,
> +						     adjusted_mode->crtc_clock);
> +
> +	if (num_joined_pipes > 1)
> +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
> +
> +	ret = mst_stream_compute_link_for_joined_pipes(encoder,
> +						       pipe_config,
> +						       conn_state,
> +						       num_joined_pipes);
> +	if (ret)
> +		return ret;
> +
>  	pipe_config->limited_color_range =
>  		intel_dp_limited_color_range(pipe_config, conn_state);
>  
> -- 
> 2.45.2
> 
