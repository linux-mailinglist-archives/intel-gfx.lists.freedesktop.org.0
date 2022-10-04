Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B925F43AA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 14:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6473710E00A;
	Tue,  4 Oct 2022 12:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E856010E630
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 12:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664888086; x=1696424086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=axpCy/cvmkX/nPyW7nDkGmLqafnYae9FB/kU22RDNvs=;
 b=mzbbrw8v+BZOp3W0rcw0O60YLPs93EgXIBRDd9ZHUHMdjvhDmFpTv+Bq
 TVGMeTpobqPEnZ2hofKezU/663dd0krSLmWqQWarwVOHnqXaVSpKL/bFQ
 XBN6IshGwdf4Z36z1LuIwBJVEVpz92VIIIGsRr10IQipbwilHSBmIpcIC
 S6XcMrvI5PECGc0iK6Gvtzfpx+iOseh47qcnYB8BtqdX3hIfwiT2wWutP
 aQkUa7Is1QSwdfrfOlDjAyEnMEuAb7AFudlcOV8W5v8HWG5vfY7TsqoPo
 H8Wl1RPH/qkLSsJmdCSTS3RG5b8GOh4Aq5h4+IAh+w9LNVol9bWdF5fVa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="283268334"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="283268334"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 05:54:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="692478231"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="692478231"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 04 Oct 2022 05:54:46 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:45 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 05:54:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 05:54:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hhRQm+ZsFOrxTbphUbT7/VeZ5H1DgLpLdv7Q4iSVSLCJ/KO/upZDP5uzu852WJxSLqIdLUodXIBlbHTV8OnW7iNw7jfaB0FZE3J6qZY3RhOo0zcJ41k5Ml3DLWcE2yRD+0UU2cPApUOOUr5ALclQAp7kbr+qiLhzv2nLL9s2Nbko0O9+hXfItNSWi2JxUE/ggFWjWC1RWNje8+jkhUCkr7yfBCrAAj42gjHRZvchsjqJj8Y/dhOUKesYx4640L4vlhR5r+p6D9xYzWHZ26l52kYHNStAXOc6by29zVuSwluh9ESX/leF5TuQ9yVN33avGtti+8y+2XpG9AqVGjwSRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRMBqPWpEV4xajyxjb92OC1osBEUvd+wrmDWaXKHyDw=;
 b=lx5e1nc2jJtfBa0VssmLeyJuT4KJ1pwra7Jh9NvWtQPn9C1qSroIGuCUfftsjRNzmEeuUy1e1tJz/99XiLcXincFHOX3AnvTEWvFjj580BujRfJuOZ8f54algVF9+K4+IVfzHoeeXmZ4Ho25TaJUUANDlv8n34VL3q2RAdD4DNYbKfk8iVCqYBaxn9duEgYAvhPFFbignOZ7MD7X2nJQgWHeJBGzuFX1Y6zmbDgOWiuM3HmSyyR24rfKmwJ4CwsstXBnItf+MUZ7D0DmMPL41sbkrf1at1jacnSIb50bwOyias71RE7mtD5KsH6f8MM5GxRwxLVQL37KdC6ofKqRjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Tue, 4 Oct 2022 12:54:43 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 12:54:43 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Oct 2022 18:23:43 +0530
Message-ID: <20221004125344.228294-7-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::6) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6053:EE_
X-MS-Office365-Filtering-Correlation-Id: 703e825b-467f-4d46-e87a-08daa6079bb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KHuAdwqCC/6EtqmJ0KR2P52HAvQBoAOtlZwvLpf9q0ssNwUep0vtuiIJxo2+/lCzoiU9B+sd5cxmTv0l74BseH+YTmR3RITrZJSQwBgT6m2/pLQfsFS6LLf5H5ojI4KeT1ZLm1MCCCdOOz1TNsi4j45uAicPLh8oCLW8i9FZSIei8HIb/vA93J9f9r+q6OEd+RvIFA4nDePWGFnOPiWPbx2DpEqTAoI/cez20Hd31pwQBH5zThFxqbDKO0S3DLdnk8HTh6diMPVIDuxJDO03sqbKuzvDxXdeA2gUYO5WjplK1L3BPsmngZtd24uAzFjdnPXNPRwpJPVBc2CDVDwDB+SajpVUp9+5uKxPyQ800BESDV87hBShzMZ9c/CmR7gpJ52tM+IZnCs8DCyMGMcGL5S6ltuj3k/UiD31SrNJUVYX/0xP8gJR0uxOJx6fqlUciYy9UdBybMjFDEsCbiIycwLUTTSwZTWh+dcObTC9Vc0TXep2aO2aLThmdAQTScQ3dqZah8e/BFHoXzwoTyH8+jmCGuQRgS3s6Kdbutd911FUc8NyeHQ3NC+i9nSL5SiyBBm0FXLGAO7WuYAU4PPK9W99+TDGsMAoQ3HKdzuCv5jFNDknSQX+0sdZ/wt1ntbJ8uNDnhDEeD874hZorsnefQNbEaeYQUsRRDcq/YdCzzXnnarHeV+4Edcc0FcncD988ve2+WFJyQyWoZEiETdleg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199015)(186003)(38100700002)(6506007)(44832011)(26005)(2616005)(1076003)(82960400001)(5660300002)(2906002)(41300700001)(8936002)(478600001)(6512007)(4326008)(8676002)(6486002)(66556008)(66476007)(66946007)(316002)(36756003)(6916009)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SVKOJ3L3GbHhaViW8Z/cgameCOP2qpK5QURG1GQLkFcePavm7OMdPw6F5abo?=
 =?us-ascii?Q?XtEUEMPA03yfD8oD4QOTsneWbaLT1khEqmVfIU4pkuiwJE1/sQ1l21ipoora?=
 =?us-ascii?Q?Bb/Ntq4/1E3US0VpXCJeYFCFAueS0gglOIzGCdnce3OOlP3OPoc8j51GhmTy?=
 =?us-ascii?Q?fanQgQnTSFdvK/pq5j5uDQt3vfdvAcnzM2RNrkTpNgUDpYsLsbm1DqU5GqP6?=
 =?us-ascii?Q?Id1WPfe3RgVwZUMmz/O/vbGT/i2z80AEu+iDSHnfWJmmnboEL5ndSR08YfUq?=
 =?us-ascii?Q?ho+FLIW6+XBwdJoMuztaTbAy0L8V+2RpWkGX3E6/UiuwGKG/OD+yI5NuLf0J?=
 =?us-ascii?Q?bFM0iZgqxSVDx8RYL9HvS7DefLpwTIkjZzYcXsu17lsjX9OIQxdUYtiIdh6g?=
 =?us-ascii?Q?D86TiJeelJD+tEPZH6jl8jfrmM7I5g+FBrsR3vGUxtRpd2vRClWGdOhkyHss?=
 =?us-ascii?Q?i4Q5i0COvc9AYKO5d9xqM2pqOXt4N7cXJxJqu6IzYCzoHMks4JLL0klvhrjp?=
 =?us-ascii?Q?aLCfS3fZhalaX3a/P0qdbewEpCqj61IF+/4MCb1MPfURqZPVNAaDVFsPZA/0?=
 =?us-ascii?Q?plftvEUIvTT8d1XIxVJiUCYq8xJcWoipiPe1uD+nDZRAsX17uSCX9Q76wudn?=
 =?us-ascii?Q?pdAnuFK2CWZpvloCkc3wyL1cJS29CbPVCgGhyIhTdxbonQh5vwu+wfaQ1ZWY?=
 =?us-ascii?Q?HEv+4Nva7YAxN5LmzQrG6EzaAviHlEZBuxgDto4v/GnO2SeNfpn3ViCBc7MI?=
 =?us-ascii?Q?2AZa4OvONAHIGDyKO81WN9uF9u7aM8LB75UgWAy9L0dPc1vCeeO8olTgieSk?=
 =?us-ascii?Q?R+4aRqzfQ7JGuDYKPE2AjRsxGIHpiytPWRx1agp3nnny4rSiM8yQC0SpVjy+?=
 =?us-ascii?Q?LrkTrEemCERfAoOIa24H1FAr9Z8atkPjUXL65ox3bjPixe9kFQHKw5HHxyZK?=
 =?us-ascii?Q?GxPoSlPAlJAVG5Ino+TKnyld8chzULEwithkPiZFie93R7+eOcPoNcecCxEe?=
 =?us-ascii?Q?NLGg8tQMbPLbHRgoKEj6upsMKM2eox+fnFcAZwMJhomy3v7MyYG0Pd9gWN7g?=
 =?us-ascii?Q?hFIZQ6Rii1lJ4W3mCRZvnBdfCPnkzL5cRS7eiA/cKyyutIvA5gLoedUPQZkY?=
 =?us-ascii?Q?1KGnQIzImfxpt+3lz+47kw5DDSm4R1Ee+MbQ5APOetSHLd2+9mVzgqg/1z0L?=
 =?us-ascii?Q?XPrE02RhGOnvCKlqG/gf9KTCGBFjFufDFw+NMeXRlpVcjaVKnMZ0Ztz3GqrX?=
 =?us-ascii?Q?gJQFD+Z2F013FizERd+8OtisCIGiiC42FX3GIKsIjdQhZNMPaFbKROlKnae2?=
 =?us-ascii?Q?qXXKpWE12cdEtIA/6m6nOkWPaaDraouWceCKYOlmLyPmrqDtHn2KBrSC3qEf?=
 =?us-ascii?Q?avYMuPR80qNslnB2yYxGsYurIOJ8aXLhcSdyml5fAA5XjbQj6HkPSuPWTgzb?=
 =?us-ascii?Q?+G7vRHCRuEZbQXOwXybmX8LU4PMR4HdigFhxuDAXe0AhGqMugxZCli9aqXLu?=
 =?us-ascii?Q?pcYfxfGLrBOoJ3zdoy5tjuLUvevVFn1BPDAe/+NYSkMWuJFtIC4xtFtRaaGS?=
 =?us-ascii?Q?zjYN/gHN0bFyTM8DpDeKkD4EtNbQc1W2njp7DxpLuV/JFPAJ3szBDA2J8sDT?=
 =?us-ascii?Q?ISBra5vMExhqZSkfsRxysLI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 703e825b-467f-4d46-e87a-08daa6079bb7
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 12:54:43.5099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i1xbdHjiYx72y2jfutdvkiUs06f2qfxGwt0xsWiKZdzw0l4bwvKzcIZJNz9AGjkE3sSdBVUpiW/X7EfbsXTZ3nxDeZdgSiFrSSkCaKQd1DsK9QpdU0oqycdb2dh50yyt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6053
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v6 6/7] drm/i915/display: Fix port_identifier
 function
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

port_identifier function was broken when TypeC ports were using enum
aliases. It would return wrong string for TypeC ports.
With unique enums for DDI ports now, fix port_identifier to cover all
ports.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 62604cadf0b8..4a5f7df7492b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -250,6 +250,18 @@ static inline const char *port_identifier(enum port port)
 		return "Port H";
 	case PORT_I:
 		return "Port I";
+	case PORT_TC1:
+		return "Port TC1";
+	case PORT_TC2:
+		return "Port TC2";
+	case PORT_TC3:
+		return "Port TC3";
+	case PORT_TC4:
+		return "Port TC4";
+	case PORT_TC5:
+		return "Port TC5";
+	case PORT_TC6:
+		return "Port TC6";
 	default:
 		return "<invalid>";
 	}
-- 
2.34.1

