Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 218598553AF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 21:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADDEA10E2CF;
	Wed, 14 Feb 2024 20:08:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hnikLEof";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FE7710E2CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 20:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707941338; x=1739477338;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=PcPX+JHEdOTv40v18qPIkwd+FWT7/av/wnRkLOrwfkA=;
 b=hnikLEof7pRNYzYce+55dmzEoyBpPiIFdPs08LPhFQ0wEkl8yilJvK7F
 iI+iGF8Qq5nqUOuaYuDeamAnVlB422LN9RV1niXSeTM3LGtMFMAOmczg+
 3ttSXgmoLFjN1IADfQs43pF++9HSBBHrvoM5OOdiUMsiInYJGNdCXabhl
 /ZKl75ZV8923pXHnWtdd9czBV0GpF1gHUFaQFb/axTX7UHxv2urj+7PgN
 LWVU7aWm6h68hfTOs10/Y5c17rdkA9ShaW3F4rgwNradyLpUuoj09/5m+
 ikh/+LIYJIN1bYODRrP8uxoiIpmPegFSi5drfSDA4ee54k3eh728z6qZr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="1885435"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="1885435"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 12:08:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3584285"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 12:08:58 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 12:08:56 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 12:08:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 12:08:56 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 12:08:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXCZhLcT7IiI/twyVMPJtpiK5uv0GPnVkbRYgUImR+XYxQR9B8SXz8JFOimt/FzgiZZGe1osowaWSX60KQJwsrYIYZoOuVf549fnbtZnYh1Tk7xlCq5+09Z19jfL0MArYY6Fa4ifUDiTgUBmIjANvd65/yb9xU6/NJtKwM/Q6fDJ3ZNEptckl13c4ejjyFDlC8jICez+P0AX8imbeoKkI2MVbI58SeZFrHw9B/+MSyok47VB1ozdRSF+cP5EhiRA92LrFwcXiTmb1vHYcNgse5mSAeAy5ZT+Yu4/qjY1+TYVgCUnQF9oZKDZvjbUHyQCaWTpa2pyGCyLS9EXsqk//Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fx2w3DiB/AB3GgKZygVq39d4EL2//5Ad8UvTALC64mQ=;
 b=Q5oXNJ7P5RjNe9hG5z8HgGbehPDDSakiN7lk/RXiXbngqIYzHsD+bZu9/WaiwkTNx53l5i7KlAAqAJtB+yxNd3ucMQG/06DO3NPGGM1SKnxfOk1vOu3ZL3WJeIRk/aPuGNabNwroxloDIS2ijMcSop2kCetG1yoAq+iL3kVCFotD0vVyojMxjXENgsaelvcLm2OTjh4//4CsoSqISUxEZZpxno1MxBGUEBCh7ifZvwGSnaoIdG4zerktAM6o1k4jlZNaqGrgPi47uYNR6fIJ7NAIn32ssUaEPLkfKOHJYjzAfVUBRzI80kQumV/z+G2eH+JHVgeIqdReDdoq6mkNWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6563.namprd11.prod.outlook.com (2603:10b6:510:1c2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.32; Wed, 14 Feb
 2024 20:08:53 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 20:08:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <170696713830.1816.14943301562714458724@gjsousa-mobl2>
References: <20240202131208.453298-1-gustavo.sousa@intel.com>
 <Zb1JbZlhjxXQKhTq@intel.com> <Zb1LKnsADQI_i2a2@intel.com>
 <170696713830.1816.14943301562714458724@gjsousa-mobl2>
Subject: Re: [PATCH] drm/i915/cdclk: Rename intel_cdclk_needs_modeset to
 intel_cdclk_params_changed
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 14 Feb 2024 17:08:48 -0300
Message-ID: <170794132876.56490.13604292375176413950@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P220CA0024.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6563:EE_
X-MS-Office365-Filtering-Correlation-Id: e67e872c-7def-41db-1d77-08dc2d98c448
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WSP0B2r9fgUXtsmV+IsKUrMWprQ64OmKyBlw+GRhFec6yak72ig0CMP7rNvHJEBUPpoi1TVsh20a9lLmTxctFr0IEaLSBuCdRRoBG+pAUk5TMvXbnrEMZGTsV5yZcKodT3MV/V0sIIjJ8OgmavxAmdtrUrxndUyfDBB4bKkNb6sA7jh1MxNM7YxBauNxThUE1QPjERVBm/xmWlT6zWU+g8kF6aBDxPieo5Rlk3EB5pghgCHkVHc9fD7wjSRRBQRMftIKiTQuGd+zYPlMIAhwhBFKSEtIAaPWNmeLeWscqM7e5/MrZSs46pF65lo48wItYP7ccpgRoUC/QgEct7C9m2tA/QCPKB5vPl3Ybt7R1MX3r7LUDdz/zjW9E3gnBiFL6ZX6Ccdmfs1Wqtkb7uS3/ykZbA7cKFayF8m+Wyrgp3ru2zaGNgMaKhuRrs1o1iL0vDtlcVoZwtaceWgKkc8ieA/gvwHOnUa2sCU05TeSyjIwrkm5RGx+rWsmuJYgK4Vm6uiPpPLxsc83q7oNS5XWDgSfFivzcAA7yRTWxfexJVbzNy+Wc2ds3TYCmoXiMWoN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(136003)(346002)(376002)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(9686003)(478600001)(6512007)(33716001)(6486002)(41300700001)(4326008)(8936002)(8676002)(44832011)(2906002)(5660300002)(6506007)(6916009)(66556008)(6666004)(66476007)(66946007)(316002)(83380400001)(66574015)(82960400001)(86362001)(26005)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2JRWExyTGVTOE14cHptRzQ4QWc4TytEandhZzJON2k2SzJtUjliRytETk9a?=
 =?utf-8?B?V0ZEOHJ3UVBUR2YzaWh6U3dKMlkxNHFwQ1hVS3lWYkl6dGpDR3ladTBZVGNp?=
 =?utf-8?B?aHVtMkg3aER4NlpqNnFrUDBvSkJQNTBRaVJoMU8xNUhjM1pxd2pyWHpaT3dv?=
 =?utf-8?B?Ykwzc055Lzh5QUptTHpmMUFFTk5zWGVKRDRGbjNMai9pNzdHSTU2UHBBTnF3?=
 =?utf-8?B?N0J0aU01RGtMcDNVUUZlcjhkRnU3NlZxdVdIQXJ6akRLZHMxSWN2MTFPeGx6?=
 =?utf-8?B?YzZ4VWdIaC9ieGNZOVNkWElqRTZOd0RLc0U0UUE1cng3RHkvZlVnUnNPRU9M?=
 =?utf-8?B?Y0tTR0J4ZmRNS3hOekphaDB3VklHR2lPMk1ZWUdMUXpzcHVJbGV0a2g2Z0tM?=
 =?utf-8?B?UHAxQTErbFJubjhjcWtPVTN0aFhJdEZVWEp2Z1JsK0IrNEFtKzBHcThKUW5G?=
 =?utf-8?B?bk93UHN0ekx4Rmlld25uTkt6amhFRVo2bys4V0J0QVp2L01PM1NkdU5GK0dL?=
 =?utf-8?B?VDE5akVOcDBVamJBeGlScW5CTmoxdDducEttcldvWm9jRHlJZXZoRTBsdndT?=
 =?utf-8?B?Wkp6SEdBNWNuZzdkbWN1eHphN3BMOGpVb2RDbXBkcHBmU3VYeGdIMk11a29X?=
 =?utf-8?B?RWd0MkRGbVZFWnFwWjQwUkhrYUl4T2VEYnJBcFVPZ3d5RFpnQlN5L3pmdUVy?=
 =?utf-8?B?bWNVcWtiRnV6Z1BtTHFHZEpjOFhsTjV5K1FndWFBSmtNMWdsVE5Ud2lmMElV?=
 =?utf-8?B?b0FjQm5ycng3cGlwcVJibmNvY2xtc3hyR0UzY2NQSk5OdWs2N2tvVUpZSldP?=
 =?utf-8?B?eHdjZnBORVJBTWwvR1h6T2hySHBCVDM2ZW9EbndHWVlaMW5ONzJmMVg1U2RE?=
 =?utf-8?B?NUhxVlUxSnBBWDhpeEREb1E3cmlvUC96WG4waHRKT2VDTWFlMjJuMnE2NkN4?=
 =?utf-8?B?aldKbTZDd1ZNNXVLVjVTSklya3JUZHp6cVhUZGVzUUtOU3BvMHRZd0tkeGZ3?=
 =?utf-8?B?d05TVmZuNzhuVHNtVFNRbFJyQkpWRHIzMHlzVG44aFJtZlpqeVREVzJjdTFl?=
 =?utf-8?B?N3ZJemQzQldxbTcwcUFsR1NnUy9BNGcxSXZVdHhZZDFOZVRyWFBTa29odk1m?=
 =?utf-8?B?VGpNbDlkUEkwT0t4SGw0Vkx0OTJVRUxWdkEzUUZhVHdYdHJqTTdXTThBdWV0?=
 =?utf-8?B?QWZDWUVOQzRFTW9vaHJHbTZxMWdBUnpNL3dTeFpRUkp1azFaTWt6cVpBbVdJ?=
 =?utf-8?B?L2x2bHlYRFgwMHA1VGQ5ZjhzZzBIOW5RbVJQdHBoRjdZRGh2Q1R6OFNRaE50?=
 =?utf-8?B?U2RQM1F1cXplWlMwNkREYWZMM0liRkhSVTNQM0JObGZiek0wUmk2bkVySS9V?=
 =?utf-8?B?NURkNEZXbE9RRmF0c25lZjJWYy9DY3Yza21ueTEwNkY0c01wWWs5RExNVXNS?=
 =?utf-8?B?Tmg4YkxmRzcvR2lOdU05VDhoMTJybi9zdzk2Ly9hSnY0WDEycGxkRDRER0hv?=
 =?utf-8?B?MWJTK3M0YkV3M2tXdWVsYXpycVMyVXk2WHJ6Tyt6TXlGcVhZZFA5ZW8xcS9V?=
 =?utf-8?B?SEFwRkhJcVVteTlISXdNSUdvVnI4N0hGdzJlWVJiWnMrKzJHYW5PY0FqMG1K?=
 =?utf-8?B?Yml2WjZpZ2pYakFUSHNKczcyVHVZTlhOaXdQSytud05ySVVmQUZaUXhJSGg5?=
 =?utf-8?B?WjJpR0NrYjNjWTFzYTZpMmNKUXBjNHlIYkdMMmZJVEpOOHJyTjB0T2w3VFEr?=
 =?utf-8?B?dndMZmJJaXVLdVhyRXpCNFl1ZnBmU3NPY2JDaE0vNzhROGx0Y0ZqamUyekNF?=
 =?utf-8?B?Q1pKV1lFeHdqYzBwS3pmV0hVMnIwWnErTnFkalRrWXJoUytsOVkwcUpvVk1R?=
 =?utf-8?B?Y0NkbUgvRDdacDVTU0QxSFZ3UGJyRzRwaHhuNUV3RUsyMmVTbytnUUJNWmFK?=
 =?utf-8?B?Tk01QzdOMGo1ckhNUG1kb2FmVjBLZU11b2lNaDlTaDZWSnFNaGhrcUdnYnIz?=
 =?utf-8?B?eXRMbkZTMDQyV0hFdVVhSVh3cVE3UGVPK1hUaE5yWXVHSDJDbU91WWtZRXBi?=
 =?utf-8?B?NkV4dUxVTk9IdGhxTHFxSlBrajEzTDdBYWltQzB5UUpLTzhaSnpTTFZhOXZ3?=
 =?utf-8?B?R1huOGwzT0N3QmVqQkt0TXVlOTM2dmVqRHp2TTRCdW5OOGN3QVgzWFUrcDE4?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e67e872c-7def-41db-1d77-08dc2d98c448
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 20:08:53.3471 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NtnbBJV2RkZXjs0mS8gvweXDI9UndtXd5vQjxT/gPiJjgRfY8fLWyVZrkJpVenyqMgYs8b3vYfIox8GwPpaSvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6563
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

Quoting Gustavo Sousa (2024-02-03 10:32:18-03:00)
>Quoting Ville Syrj=C3=A4l=C3=A4 (2024-02-02 17:06:02-03:00)
>>On Fri, Feb 02, 2024 at 09:58:37PM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>>> On Fri, Feb 02, 2024 at 10:12:08AM -0300, Gustavo Sousa wrote:
>>> > Looks like the name and description of intel_cdclk_needs_modeset()
>>> > became inacurate as of commit 59f9e9cab3a1 ("drm/i915: Skip modeset f=
or
>>> > cdclk changes if possible"), when it became possible to update the cd=
clk
>>> > without requiring disabling the pipes when only changing the cd2x
>>> > divider was enough.
>>> >=20
>>> > Later on we also added the same type of support with squash and crawl=
ing
>>> > with commit 25e0e5ae5610 ("drm/i915/display: Do both crawl and squash
>>> > when changing cdclk"), commit d4a23930490d ("drm/i915: Allow cdclk
>>> > squasher to be reconfigured live") and commit d62686ba3b54
>>> > ("drm/i915/adl_p: CDCLK crawl support for ADL").
>>> >=20
>>> > As such, update that function's name and documentation to something m=
ore
>>> > appropriate, since the real checks for requiring modeset are done
>>> > elsewhere.
>>> >=20
>>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> > ---
>>> >=20
>>> > One thing worth noting here is that, with this change, we are left wi=
th an
>>> > awkward situation where two function names related to checking change=
s in cdclk:
>>> >=20
>>> >   intel_cdclk_params_changed() and intel_cdclk_changed()
>>> >=20
>>> > ,
>>> >=20
>>> > and I find it weird that we have intel_cdclk_changed(), which checks =
for the
>>> > voltage level as well. Shouldn't the voltage level be a function of c=
dclk and
>>> > ddi clock? Why do we need that?
>>> >=20
>>> >  drivers/gpu/drm/i915/display/intel_cdclk.c        | 15 +++++++------=
--
>>> >  drivers/gpu/drm/i915/display/intel_cdclk.h        |  4 ++--
>>> >  .../drm/i915/display/intel_display_power_well.c   |  4 ++--
>>> >  3 files changed, 11 insertions(+), 12 deletions(-)
>>> >=20
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu=
/drm/i915/display/intel_cdclk.c
>>> > index 26200ee3e23f..caadd880865f 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> > @@ -2233,17 +2233,16 @@ static bool intel_cdclk_can_squash(struct drm=
_i915_private *dev_priv,
>>> >  }
>>> > =20
>>> >  /**
>>> > - * intel_cdclk_needs_modeset - Determine if changong between the CDC=
LK
>>> > - *                             configurations requires a modeset on =
all pipes
>>> > + * intel_cdclk_params_changed - Check whether CDCLK parameters chang=
ed
>>> >   * @a: first CDCLK configuration
>>> >   * @b: second CDCLK configuration
>>> >   *
>>> >   * Returns:
>>> > - * True if changing between the two CDCLK configurations
>>> > - * requires all pipes to be off, false if not.
>>> > + * True if parameters changed in a way that requires programming the=
 CDCLK
>>> > + * and False otherwise.
>>> >   */
>>> > -bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>>> > -                               const struct intel_cdclk_config *b)
>>> > +bool intel_cdclk_params_changed(const struct intel_cdclk_config *a,
>>> > +                                const struct intel_cdclk_config *b)
>>>=20
>>> The new name isn't very descriptive either.
>>>=20
>>> Outside the cd2x/crawl/squash cases we stil have to consider
>>> two cases:
>>> 1. cdclk frequency/pll changes (voltage level can change or not)
>>> 2. cdclk frequency/pll doesn't change, but voltage level needs to chang=
e
>>>=20
>>> And that difference is what intel_cdclk_needs_modeset() is trying
>>> convey. And intel_cdclk_changed() tells us whether anything at all
>>> is changing.
>>
>>intel_cdclk_clock_changed() is perhaps the best name I can
>>think of, off the top of my head. But I'm notoriously bad at
>>naming things so take that with a pinch of salt.
>
>Sounds better indeed. And I think intel_cdclk_changed() would be more
>concise, but that one is already taken internally.

Hm... On second thought, I'm not sure intel_cdclk_clock_changed() would
be very accurate, at least with the current implementation. We are
checking not only on the resulting cdclk frequency, but also on
ref and vco values.

Although I'm not sure if that could happen in real life, but the current
implementation gives me the interpretation that, in theory, a change in
ref or vco could happen even if the cdclk value did not change. Or are
we safe to say that checking on cdclk should be enough and looking at
vco and ref is actually redundant?

--
Gustavo Sousa
