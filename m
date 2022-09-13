Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB09E5B6481
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 02:23:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78DC810E4AC;
	Tue, 13 Sep 2022 00:23:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3787C10E4AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 00:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663028615; x=1694564615;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3G9PwXBz0hFg4Kxvn+wEVNUiIYikE9FfrzEXg9/v41s=;
 b=nAwtDUnT4hgX2o+dWtz+ftiKY6HQmHEfUVbfsB5FmAaazfstUr/TJKl5
 XYJTTGpjxOGbm6DHkKXrCfPbqOYc6UwqC5gZnK/CYN7XvawK1B64cWOmg
 YemUQ3UG/0xhtnxW9MjGdQE6eSkixY39oakUR88MIYmFBUPntizp5b+cT
 UUvPSkvxsk/QWqaKCH4BFs+xOUCHGGpAOQUVm1J2dg1O7/5gWxPAJ2FNI
 G9gjcPv6p9ARtOhRi8KJNCmYyGO1QuhZvm3lzZI7NqyuCXP3ws5ZqAuPN
 RJEVEIyFFv6KqNX6W7V72NXDIwqJzuIZSMKV89jcbd4LRG5xseHGDa2iw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="298004234"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="298004234"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 17:23:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="646696693"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 12 Sep 2022 17:23:34 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 17:23:33 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 17:23:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 17:23:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 17:23:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OyMSVGY0yosTzCK8Hx7TGXZ/3zo15qICWoJ8xaCcUTxzooN0BPnYlEpTY0WUVh0zZ7YN5wWJXOTg2t/CY9G96Nga7R1bWr6PEGvkahf1Sf417yOMHhiCHD7MAgwVHks3s4Gnn6GbCSO77BMY2roT3rmW1+1KqjYgNCyMjr/u5AMOxgWr3AbtDCeTPk5WDaJOC3DcWT95Y0eyeDtQKkkm5pDchyXVdI+tDYY/8O4xxo0I/KEUAhrIbhn7I7ttoFCVa8Jht9UdcScqkwNYrFaaNitvf7RY93orxGAhNjmfvkTwawDVi/aUFZjr23wSfGAvJKbZMc9BKEPNpBX1Ty47xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WruA5q6Iaj1542Qz0Mc2sQpQmu1oIUe4vjgmM66wIsA=;
 b=LH5N3BSsa8sVaRQv3LN2lcLMeQ+1BLVVm+abvG0PaH5/K+METL/1D/ZDydCWJJIfjw/ubzv+nh84B8R+hWINBSi7TIpjTDXQaz++3QRRxtwqpyV2IhzfIBr92KSro7h4WLobmUZXnaOsuq+vGYAMIFARy0Le0g92uTl63URNT/znTYLxS8PC+4fXtnGs3CCPNpT7nU+Gm96pnSMW0i1Q6a2ZcC8hbQKXG6Mqj4QUK2ChoSwDCFAfOCub2t3yw6CmmEvhgN/3pj083ETTGXtshqDVxcIfuwrPJQ4XH2x7m+3Gqp8TfGWI27u/n7aVl0JoEmtmUDQEhXh8HGXf4ug2sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB6569.namprd11.prod.outlook.com (2603:10b6:303:1e1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Tue, 13 Sep
 2022 00:23:31 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 00:23:31 +0000
Date: Mon, 12 Sep 2022 17:23:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20220913002329.ia4m33z5sqnds2ll@ldmartin-desk2.jf.intel.com>
References: <20220906230147.479945-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220906230147.479945-1-daniele.ceraolospurio@intel.com>
X-ClientProxiedBy: BYAPR05CA0015.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::28) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB6569:EE_
X-MS-Office365-Filtering-Correlation-Id: a1e8d021-64cf-4b36-6532-08da951e2fe8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v/DmdiVNKiwKUOR0oWHV1HkEdljIRUnHiBiwV6c6+9sULcrg/Tw26a55lCmD/8SW03Gt78g5mNmbkX2csVpJMYhcSd4Hg0fVTJFb5fgizVbPIWn+tBVKJnzPfTgrVpBGyuxTAeZ3126AGoN1JXlZ0gaiPMEVTR+VoCLya/SLBj+PjWdNUNDhQ5M1/7RR2ajKc0FIvncp+IrLjQRFrhV5OWe85aKndgSSWOK/yTfro4y7kSO/nez5Ek0Tz/Wg+6pot6MIP7F/PySsqgpQhtKr07lk6UsjjsH67vK/rtpL82XXAfHG18XWgQMCqajPA1UUrH/Lr0ocYFtYDypUqHwN8hwPSlLkQZAiy5sEWmm0vJxYdbDKIeqUwQJQ48uDsk4GnFEu2/aJ0RGK1zOvRMHZh9Wu+9Owt87pzhdSwzzRhIywr8aaRXHWp34rfmzedywvhqS48orTFYKeC1kMCGmHt9SJFBhfRYy0iDsxFNdDRBtkq9kC5ODOU7XqKpYiWzpfGUHbEJDAhQUXNsWs+8B07aYnnajOD99bmvF+MJWoKayZ/dYeenslt7AmozkJbK+cBJFmdHHhgn6Rdp5ysybNHWCMKkNA4Fl5TMPCvw8aLw1YhWRga/BeJvh64mtOpvrjdnC1/73drLvKyBpROmmlxKFoBzieZFCLk2Ah0ukkJGliFp7t2FJ6QDu6OkjkyqhhS2h1t1kFMulIWrRLX+9uBA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(346002)(376002)(396003)(136003)(451199015)(8936002)(1076003)(6862004)(6512007)(316002)(66476007)(107886003)(478600001)(2906002)(41300700001)(86362001)(83380400001)(38100700002)(4326008)(6486002)(6506007)(82960400001)(5660300002)(26005)(186003)(8676002)(66556008)(6636002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mznSGhwFUlvr5iNMO81QvgaY+dCNznhUYvpwLyR10VgdLS572zXjViVfc9QD?=
 =?us-ascii?Q?p0E6PjEKsdKhQQkKis3fm9UDZaT6USUvYbiOOf0oFXy/l8XaAmDqh0w9sLJS?=
 =?us-ascii?Q?N+4C8esibtRoqBw/ZUzcUUEZ2PFBo2OhagK+GbwMEAgoSmLvK611TIfYGgkT?=
 =?us-ascii?Q?Ov5LbS/5ipdPLv+6ozXHz3T2CtilvdZceTAKnA6ppQ5fYh5fv0BCdd/iagEK?=
 =?us-ascii?Q?FWfbMPt7uZdIJ5eLyk5bxutR6L0KM+MnGbciXyg+1vRA3H7T5i/MrB3JdTQB?=
 =?us-ascii?Q?DcHYdaUbAL5C7b/smYR8LMOakN2cKYV8qBfGf4Ucmyot3kKwnRezTEsHX3Qa?=
 =?us-ascii?Q?5MpefiaGaICCQSBEGwJ3Y7WVYxG4mRQBrWJsN08jaq1nwna6CTGtFyrxbrgF?=
 =?us-ascii?Q?FEqx6Zdqhl7LEFWdnvnVlD8kjA5QcnzNIFPaX88yICF/a/jwt2HXlTPBLSOq?=
 =?us-ascii?Q?mZNwhJLX1F8bV3Geurk5ZCOphJOCkp9yY0NZOERwuTGVhXQnvf6La4sXL68r?=
 =?us-ascii?Q?s54w78GX5T/EtgqL9+MkcG903l+UvkL1f/SfaLxYR6qBcyrhP34IoTu4MuYG?=
 =?us-ascii?Q?9CTsIFE1vDJNFRTLxpxrihvM6AuqMwUTQCmBvK4OZzXis49GWm/jWUeMmOZS?=
 =?us-ascii?Q?e+JRl37jcfK4f0u1Vlr1E5Qn/9maJE+csRsFa42+0arDesgxsJYC25z3r7RG?=
 =?us-ascii?Q?DNzu4S5GzxhrqvQkO/nfGwfRdKlgRoNrH5l9PzdDvf7nBp9YttZYhXQeFvW0?=
 =?us-ascii?Q?fseKy2xtUEwYTgPBi0eejYm08LbCwidNCVVtjwXPEhjvhQtwJUcQbipd3Kbl?=
 =?us-ascii?Q?SwjBRh3AEqsivD8RZ9IqemQUbQ5TryjoXLJAKoLHQWIK2yQbogEkvCX+Llc+?=
 =?us-ascii?Q?A8G4J+9yO7FnFU166IYs3DsjBZgIiuAyMMxXT/3CE2pc7nKcZdTSrbwKTksC?=
 =?us-ascii?Q?MaZAPQdqEHYkrx7W/53H8MbpykTbwIBWIVCehFxeio6454kmghFnttO8whnd?=
 =?us-ascii?Q?BmpXzJ8H8Tg5aqLxL5XrmDxwU8cMe+QBDf/CWO8Qrv/W7rjQ2UIzYEtiz+jy?=
 =?us-ascii?Q?IRvjOfLBDieDWUqmNjWFwNQdMco5qk4iEC38WJjtLwof5/NkS3Q72QN+/Lh1?=
 =?us-ascii?Q?g5uTL6TUfkdT+0ZgTzMSs4K9rz5MYpbchY9DXwjuPnLi+HMgUY+GYB8ioj0C?=
 =?us-ascii?Q?esRAR+il+bo8d8pZcqgPnxQVDTyDmtj5iWkla93BOnSxwJjEg3/991lt/sfk?=
 =?us-ascii?Q?g5LWgImnZYDeQ7nL/dRNgLCIh9RFhtITFY2ZNde90teipiuskg0k50m4Vgq0?=
 =?us-ascii?Q?978cFXSnMJo4tAeTcwkDE0wF8/WwikcLQk/sWxWyGeRMn0J1oqlDravH6gtV?=
 =?us-ascii?Q?pTEB9BjuFNFpJiz+F6jG9DXpT6mkijUHZkzUHgm7+h1slYCSn/NOOpgZt22m?=
 =?us-ascii?Q?WJrA6Y9Q3e4KSpZuxF35mpkv9EogrGAmSrWXzJsy+t3iKkNOnzMY36/Fu10K?=
 =?us-ascii?Q?j+bEFjAcFJXZuvANaIKqjEEJS8s4y8VVVu+pT+dgVwGAIDscl8E3y5Bd2iS2?=
 =?us-ascii?Q?M6mv3KBzrCqtQNLS2LLXwG4GeIGzhlJjYcNIKPW9nvvf8/rXlzISblJg+83q?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1e8d021-64cf-4b36-6532-08da951e2fe8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 00:23:31.3225 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M02tX9XN2DF1MSlcg3lHP+x6oYiOp9ZNbL9VrsvdUOK0C+c8dd6SFKUPuJ/g+NPNe8rW47otY4dbeomlMxVwQzA7FkoZuvYvpzK+IkDddbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6569
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/uc: Support for version reduced
 and multiple firmware files
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 06, 2022 at 04:01:46PM -0700, Daniele Ceraolo Spurio wrote:
>@@ -184,49 +247,94 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
> 	fw_count = blobs_all[uc_fw->type].count;
>
> 	for (i = 0; i < fw_count && p <= fw_blobs[i].p; i++) {
>-		if (p == fw_blobs[i].p && rev >= fw_blobs[i].rev) {
>-			const struct uc_fw_blob *blob = &fw_blobs[i].blob;
>-			uc_fw->path = blob->path;
>-			uc_fw->wanted_path = blob->path;
>-			uc_fw->major_ver_wanted = blob->major;
>-			uc_fw->minor_ver_wanted = blob->minor;
>-			break;
>-		}
>-	}
>+		const struct uc_fw_blob *blob = &fw_blobs[i].blob;
>
>-	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC) {
>-		const struct uc_fw_platform_requirement *blobs = blobs_guc_fallback;
>-		u32 count = ARRAY_SIZE(blobs_guc_fallback);
>+		if (p != fw_blobs[i].p)
>+			continue;
>
>-		for (i = 0; i < count && p <= blobs[i].p; i++) {
>-			if (p == blobs[i].p && rev >= blobs[i].rev) {
>-				const struct uc_fw_blob *blob = &blobs[i].blob;
>+		if (rev < fw_blobs[i].rev)
>+			continue;
>
>-				uc_fw->fallback.path = blob->path;
>-				uc_fw->fallback.major_ver = blob->major;
>-				uc_fw->fallback.minor_ver = blob->minor;
>-				break;
>-			}
>+		if (uc_fw->file_selected.path) {
>+			if (uc_fw->file_selected.path == blob->path)
>+				uc_fw->file_selected.path = NULL;
>+
>+			continue;
> 		}
>+
>+		uc_fw->file_selected.path = blob->path;
>+		uc_fw->file_wanted.path = blob->path;
>+		uc_fw->file_wanted.major_ver = blob->major;
>+		uc_fw->file_wanted.minor_ver = blob->minor;
>+		break;
> 	}
>
> 	/* make sure the list is ordered as expected */
>-	if (IS_ENABLED(CONFIG_DRM_I915_SELFTEST)) {
>+	if (IS_ENABLED(CONFIG_DRM_I915_SELFTEST) && !verified) {
>+		verified = true;
>+
> 		for (i = 1; i < fw_count; i++) {
>+			/* Next platform is good: */
> 			if (fw_blobs[i].p < fw_blobs[i - 1].p)
> 				continue;
>
>+			/* Next platform revision is good: */
> 			if (fw_blobs[i].p == fw_blobs[i - 1].p &&
> 			    fw_blobs[i].rev < fw_blobs[i - 1].rev)
> 				continue;
>
>-			drm_err(&i915->drm, "Invalid FW blob order: %s r%u comes before %s r%u\n",
>-				intel_platform_name(fw_blobs[i - 1].p),
>-				fw_blobs[i - 1].rev,
>-				intel_platform_name(fw_blobs[i].p),
>-				fw_blobs[i].rev);
>+			/* Platform/revision must be in order: */
>+			if (fw_blobs[i].p != fw_blobs[i - 1].p ||
>+			    fw_blobs[i].rev != fw_blobs[i - 1].rev)
>+				goto bad;
>+
>+			/* Next major version is good: */
>+			if (fw_blobs[i].blob.major < fw_blobs[i - 1].blob.major)
>+				continue;
>+
>+			/* New must be before legacy: */
>+			if (!fw_blobs[i].blob.legacy && fw_blobs[i - 1].blob.legacy)
>+				goto bad;
>+
>+			/* New to legacy also means 0.0 to X.Y (HuC), or X.0 to X.Y (GuC) */
>+			if (fw_blobs[i].blob.legacy && !fw_blobs[i - 1].blob.legacy) {
>+				if (!fw_blobs[i - 1].blob.major)
>+					continue;
>+
>+				if (fw_blobs[i].blob.major == fw_blobs[i - 1].blob.major)
>+					continue;
>+			}
>+
>+			/* Major versions must be in order: */
>+			if (fw_blobs[i].blob.major != fw_blobs[i - 1].blob.major)
>+				goto bad;
>+
>+			/* Next minor version is good: */
>+			if (fw_blobs[i].blob.minor < fw_blobs[i - 1].blob.minor)
>+				continue;
>
>-			uc_fw->path = NULL;
>+			/* Minor versions must be in order: */
>+			if (fw_blobs[i].blob.minor != fw_blobs[i - 1].blob.minor)
>+				goto bad;
>+
>+			/* Patch versions must be in order: */
>+			if (fw_blobs[i].blob.patch <= fw_blobs[i - 1].blob.patch)
>+				continue;
>+
>+bad:
>+			drm_err(&i915->drm, "\x1B[35;1mInvalid FW blob order: %s r%u %s%d.%d.%d comes before %s r%u %s%d.%d.%d\n",

what is this \x1B[35;1m? Probably something that went bad while
writing/pasting this?

Lucas De Marchi

>+				intel_platform_name(fw_blobs[i - 1].p), fw_blobs[i - 1].rev,
>+				fw_blobs[i - 1].blob.legacy ? "L" : "v",
>+				fw_blobs[i - 1].blob.major,
>+				fw_blobs[i - 1].blob.minor,
>+				fw_blobs[i - 1].blob.patch,
>+				intel_platform_name(fw_blobs[i].p), fw_blobs[i].rev,
>+				fw_blobs[i].blob.legacy ? "L" : "v",
>+				fw_blobs[i].blob.major,
>+				fw_blobs[i].blob.minor,
>+				fw_blobs[i].blob.patch);
>+
>+			uc_fw->file_selected.path = NULL;
> 		}
> 	}
> }
>@@ -259,7 +367,7 @@ static void __uc_fw_user_override(struct drm_i915_private *i915, struct intel_uc
