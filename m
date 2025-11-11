Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C7FC4CE9E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 11:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0789410E53C;
	Tue, 11 Nov 2025 10:11:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y61g47ij";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCDBF10E53A;
 Tue, 11 Nov 2025 10:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762855900; x=1794391900;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=cTw3UNVmQVXe6Mg9iqicqdbauspSx8ByUx8jEk+34NQ=;
 b=Y61g47ij4NL0ef2PkX9RqGy6H/Bnq3+i/G2WAx+5T7hUaBscRMdjT+gT
 VItMRE3A6ts/GDC+zmcqbgRM4YxtP7JGoq2kWWP9V1kMPff3jp2h2vZ7E
 GA1o1XwZB071KypKg5ubk3gJvi6XaMgIwCu2N1zh/HnUvTxxVMYqN/LKz
 8faYrEMYgJxUjXBvyPVoLf2AOPKM59UCvktfihbZOSKLVxRn24g8UIpmX
 wKcTj7lZq1zPcPMOg0RqKX7J6WbN58PhgXpy6WFAARhJwTP15YlVY/gAK
 4nO8XqgiJQtPSLsk1VYkXjoR3yoJI7z/1tHgalewTRtRnHQBRXXWGC/pq Q==;
X-CSE-ConnectionGUID: TCicLV2iR5COWwG20LTbiw==
X-CSE-MsgGUID: 72x452jgRiqN9jRd6xYSPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="90386378"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="90386378"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 02:11:39 -0800
X-CSE-ConnectionGUID: ISVzz3BDStGDIRAMOrqStA==
X-CSE-MsgGUID: 21cGOfsPTaujs7LcCazGOg==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 02:11:39 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 02:11:38 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 02:11:38 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.19) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 02:11:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mVr9I461cB9pQLNmlJ4CwLUsM5umJfZBC1SJLLSZr3lV4JyFeH7y5G2/OwmGwbYbQ9+EEukb8sv1ZqEqxhjYVwTi0A8pyTl4vaHQdU7FzwtDqyfzhZFczDlmNfhKb2Im9C6RcU46xFpiSOSO79cwZM3Z8AKQil+ehQyRHuGFelqiyhq02/EmnDpt/U5reW7EZdOz82LklcBXbR06wKBx3BviZvaEIL9gdwJ74Wy6H/quNZJhJmDYm7oJHLOnDyW6jHwDeaVLLtsS48zgQBp6aY3ppBdBqPBSQU61UIYGnCHuVwOM3+8L+IHvwP8lVCUG606fevnWjFnM8/6o+PJF+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jnJ4LgKnDBfL8eJXoRV3Zbc1VwVrpa2WACfbn0rx9MY=;
 b=eY6fiDIeTvUsmBo3aU95LkSo4MFyH+uIzcGHyvIolnLbL/aXqrbuNWjKlfZL0/1BD3rWsfbARrDuiR2Cutt34n2AvLEgTpxXRqfdiwy3VRqJxccJPc6RzqNvsCEi5hXlvmkEr1L7DsQjZxaM3PRDF/Hm9tJCGi+VVVhxo9JTwOFyXlz7wM43R3+pAg2zHfer/8QQhTEqGDix1C74orYDdmzi1TqibUZlQBqo6dCw7n/3Ni7YcDKAhvwePhX69DZKVzg6LYmmpq5Ikfpa7JoDeP1PXh93i67Oy25a5LMLkjdtHfd41K3sdEc/qDs7a3cjhpEBud6Gh+BeB65+X5tEsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPFB8E59DF50.namprd11.prod.outlook.com (2603:10b6:518:1::d44)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Tue, 11 Nov
 2025 10:11:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Tue, 11 Nov 2025
 10:11:36 +0000
Date: Tue, 11 Nov 2025 12:11:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: Mika Kahola <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [CI 11/32] drm/i915/display: Determine Cx0 PLL DP mode from PLL
 state
Message-ID: <aRML00uJoXeoHj8J@ideak-desk>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-12-mika.kahola@intel.com>
 <IA3PR11MB893752DEB841A09898BEB562E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB893752DEB841A09898BEB562E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO4P265CA0069.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2af::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPFB8E59DF50:EE_
X-MS-Office365-Filtering-Correlation-Id: fbf45f11-b782-4498-f19a-08de210ab268
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?br/qOyKgCjmmjXM3zhvI4BJULyrLgOPg783uBMcrUxrnDl36M87yVVeY0Lq8?=
 =?us-ascii?Q?mT3vJz0Msud0ITnKpBU3kA7hCAy75CVZWE2cpSW/3+aOusLUgp5P550mcks8?=
 =?us-ascii?Q?pLlhSlfhO24ZFTTXrXTRgpVeORwNBF78SRY1QGXese7zoaqozcgz72aEImxr?=
 =?us-ascii?Q?uhi4wpeY9oxhjC0LmRiyobZWohQjJEle1sEVapNOQr1/qFKNjHPIJisDUuOR?=
 =?us-ascii?Q?H7GyRgeV0c6iBn5O7MBVCxTWva9eAA3r7bWw6/j+OnhvJHiYCzn88KtDaQ7E?=
 =?us-ascii?Q?Oa3XTo/jZWz1gFKiNEiOkVHtApfrWX15k71OE6oxL2G0lwQM5pBeYVcSwKlz?=
 =?us-ascii?Q?u4t21MgnUu2RAcpwr2+3NPktDxXcAXhRBNZuU59TZLAvzuevikMqKlYx6NWd?=
 =?us-ascii?Q?kO/YOMzmurOsz7WWk7tjGZsJ9nNDHQwZOVi+yRXcIQL5M3orHc3fPn9s/m4V?=
 =?us-ascii?Q?cqms7rpalIPP/6lx0VsmxtgbBKQFnRUbk7DNFihFfZ26Te/gZbj5he1Sbia9?=
 =?us-ascii?Q?pfZuD9Jc1eYHPDG2NNeGzET6voCyUyM5jajNpcm+rO5dqcHxsFtx4ZwgJE1G?=
 =?us-ascii?Q?fNCE5r9aduiw4MaRnHy4es4DyRyw+UxF6mgI4JH2/e4GcX88PZNawUZwRpbf?=
 =?us-ascii?Q?prE8Gmghgr1ePG83PTMQuDZUjEr4e44hzuXu5DOJwikKJTxYDKxF3SV0bzDz?=
 =?us-ascii?Q?LAvejP8K+QCR3+SFpjEHb6HDvQ5E+EvlH1tPH2NQA4orO0L4yFe3Nk62nXII?=
 =?us-ascii?Q?V830pCcwTgZvf1N1KAbqAZftOpJ5vIXjniFD1RiAxQY81o3CZfiyy0j9cNGp?=
 =?us-ascii?Q?Zqoi+F4vSjNC5R7pwft0iivg1Ay+zT4TCiMGfmP8B8bo930nsH/v0YbuICfA?=
 =?us-ascii?Q?xZY4rP1LwBAGXpOEhfeot8otvR+vEM9x5h1jMyxqw0ahBcRRO+2AWneBllBe?=
 =?us-ascii?Q?nYGbhWSlUfKq8wkkjXYVrNMYf84q2bAcGh2hqOzvsMUCax/oDMuLjSLvBp1+?=
 =?us-ascii?Q?nsGCyB8VPxbg4Xffmwqhl675OS4Tq9ZPkAhwroIvJk/f/ptE2rPmQvySujW2?=
 =?us-ascii?Q?GUYCMSE+P38TOBgDFM+KrGraAYKlEbnLLVtm7+X2svD3wCR/T7t9cXbWVU83?=
 =?us-ascii?Q?553tARR0aBgAnwHd2dGmGnekBiwasqNhT39KBWH1HeesNnIuOfcD5d/dvdRu?=
 =?us-ascii?Q?ff4xo7nqJVO5ZNCP5CdWTixV3as5l92DDs0ZLB8o/lTyGwOMmu12cjzh1FaQ?=
 =?us-ascii?Q?0uZKqxgSDMQqdJlPlIuf2GIzohXLLNAJfHVNrQNOgIyL8o6gOd8/ZdVNONWh?=
 =?us-ascii?Q?tIUuTu+AG6ibJ/C462O75P+j/L7Xia8Dz+nRR77VKwMdX+RxcHoqv51ksXRi?=
 =?us-ascii?Q?LvacC6lcKIudJvkCO7slENqHjNI+KXgIpObp8ATrUw9PlWT94qDNAERkqpk4?=
 =?us-ascii?Q?yuQu2Ah9NtT1Nhct1rVMVoLxTYjTICKi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0rTLWom6ZxmeD4823RwPiUx3plnqwKpCKv9VMYnTP/t3PCdLaDKayAr73+Jn?=
 =?us-ascii?Q?4J3bzDIxdFA2YRCpJco0Vc27ysjIyrt+9UVJRuQbgxgdWjIMYmjG0TatHWSN?=
 =?us-ascii?Q?IzD8VnMaSKicufvtl8foKN9uG5OU6eE8aMlVVYUuHKE2ewhQCEo67AwquzWF?=
 =?us-ascii?Q?vqt6Q2DQoNJVSBJBEtVg6ug6JRHwOaxhCQxXPNvj5O9Gzodpfo7kyBHaNVr4?=
 =?us-ascii?Q?AO/0ZoRKpFtbPtPBzXHLUkwTfJl87vVZ0y+wKUiaodnzWyze7YEDHxZY7duo?=
 =?us-ascii?Q?nhUe5zbO4s29+DzFzF9HWViD9LObaWG+S0sgtzRs6RLsGwte+BxhxWjdf+X3?=
 =?us-ascii?Q?z0XZdlbDLi3mZrmN5fN7oqpzgvcK6DJi6kp1RWnW2WRx/M/ld+Kq90bID0l6?=
 =?us-ascii?Q?UO9EjVUWtyGbhBdElNjUfpB0FVe8lNjzpHR13c5IcnuQpi4b8qYi7BQL6/Hw?=
 =?us-ascii?Q?N0BZjKYvh1i7wEdPvEOm929sai6+Q/SiHWcwsPcXQKYx+bbgQeO6zooqAkpC?=
 =?us-ascii?Q?/MoPF2mmdjEmi5OceUFDnzWqaeiWGprdvl/AsQRuXQSC/IipHEd79WJjEmOR?=
 =?us-ascii?Q?i3XIX9V8GQk9iFe/0wY8mNpP9QhsNypEDI4AFkqOKte/71g7wIzmdmJYl7QH?=
 =?us-ascii?Q?2bCXiNvZLf1UxgwlaMsUgAzfQvuVA7/fhPTFGBV1z5mttc1dZf0BpP+7T34V?=
 =?us-ascii?Q?uBRc2r55gUf/uzwv/MyjWo+0kXHTsPZ66xzxAgMI3gXZPD4xTWLHTkNb1W83?=
 =?us-ascii?Q?+zkJpPZy286S5X7qzPq3cmYzvYXSe+qnUHb1OPOqVFOdAH5nq+yyS1/W8/I2?=
 =?us-ascii?Q?AmrjEgWSDTKusMPWv9YD6F76+DYZg+nw2aOIXOS0pkZAvnndcGCDGZMN/S22?=
 =?us-ascii?Q?+FV4xR6szTY9fkg+SrV9qk8rYX8Cyf5TwiSkinlVtoJsXQlImZgICipEvU6n?=
 =?us-ascii?Q?iVir393TYgV/a0Mo+SQbHjkdoMBZbtf1PtgqC+fgTnVbIcV7jcatl+aG8XCn?=
 =?us-ascii?Q?3DEbaaRpGYzNM2E23XBZKI8nvuc3E5FlkrtJR8XZZonqaPZmBmJGvfWw3+7i?=
 =?us-ascii?Q?pNtGUyph0VL7lYo5s+w40cUFI3xdUpJBDSJeKu057ebZGqAVyuZ54lhmm1Wn?=
 =?us-ascii?Q?JVsbHECn+O0vHyn8G+6ofLdXhgDxYv4mZoh9i3is3usAT2SJrnIAIa9J+fVs?=
 =?us-ascii?Q?1fBvDT/ykNPMikrMueDqhESY2zG2CS0t9LAv8brAiuw+9IbDsj+L9/mErKx0?=
 =?us-ascii?Q?Jqo7/v/H/rfzISWN+PCeO9MQgxmsIBDM9gjBg9p00hjhAlSRKl1Ntn9A97lE?=
 =?us-ascii?Q?XED+DX2SgsIej1MNO0x7S36yLEWURV0A06qAU1XQ+MMApIpXqHPcOrqy9nLu?=
 =?us-ascii?Q?V8SBBekdcEbuFRgDfDnprLMoDWTHn6aOrTYkRzRBalp/h8GEs98wKqtCb4fE?=
 =?us-ascii?Q?HK3BDu8xD4dgH2o/fztgjHJMpB1zxuzUXhfY+XFRyOB8fQx6+2VphwY2FniT?=
 =?us-ascii?Q?G47yE8He2xaCo5gT8gs7nRAyNadZCsngTwuBoOLpRvBA6QvmuoogoLVuXoBn?=
 =?us-ascii?Q?R0zkNutZTqEmBfWAVD9YMFNeOTlNnTco2/xI9d09a8fF74I++uNGaeKqCwwW?=
 =?us-ascii?Q?9JABHQ25QLEuSr/gzEjcc5sNcBBplD8pWsCmg3HJ7iZT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbf45f11-b782-4498-f19a-08de210ab268
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 10:11:36.1326 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 119THGy5PxLO6fKQxv5/d5pbZt3+HBOzIitDnlLbQEKI8uhbwjF0qhPcPp/VgrbEIj5Z4atGkDLmuvCrfKzn7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFB8E59DF50
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

On Tue, Nov 11, 2025 at 08:08:34AM +0200, Suraj Kandpal wrote:
> [...]
> > @@ -2929,10 +2958,11 @@ static void intel_c20_pll_program(struct
> > intel_display *display,
> > 
> >  static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
> >  					 const struct intel_cx0pll_state *pll_state,
> > -					 bool is_dp, int port_clock,
> > +					 int port_clock,
> >  					 bool lane_reversal)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> > +	bool is_dp = cx0pll_state_is_dp(pll_state);
> 
> Wouldn't a simple check of drm_encoder's type tell us if it is dp or not ?

For a DDI encoder drm_encoder::encoder_type is DRM_MODE_ENCODER_TMDS,
from which you can't determine if the encoder is used for a DP or HDMI
output. This also applies to intel_encoder_is_dp(), which will return
true if for instance a DDI encoder wired to a DP++ connector is used for
an HDMI output.

> Regards,
> Suraj Kandpal
