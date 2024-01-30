Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC247843103
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:17:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CCFA1136E4;
	Tue, 30 Jan 2024 23:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40AFE1136E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:17:50 +0000 (UTC)
Received: by mail-qv1-f54.google.com with SMTP id
 6a1803df08f44-68c4fb9e7e0so19316836d6.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656609; x=1707261409;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WGQ9qpOMEkLTW9USLNVODh1ycl8Id+7V4btTXALeTjc=;
 b=i6ZeAXFTLbnNCS/iJcMC6kBXfL8cEbJQcfiQtof9npiRlKntZRBQ65+bmj9VxYR7Iu
 qzOLtwvQIcfcw6k3p4ySXLIokDLvpROEU9nfdsBdiXeNLgQCg4nDRtjlk+sg0vjsbZ69
 /4viYBNP7ER05FrPCCbPvIoCw6EM4Uwa6dtcw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656609; x=1707261409;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WGQ9qpOMEkLTW9USLNVODh1ycl8Id+7V4btTXALeTjc=;
 b=R3TqnWiInlHgOp6ygHSvQnNmY+nIge8qxD4b8ddyRZ3Gf3+j7Bg1hIUpRepk5HopPE
 dehUmzMgm22oGzvsx9+RpnUqAYXyxo90DO3CkbcjQcwaB1/AQ0OWoVyWzrkEDLnVC+DZ
 N5ITph87Kv6I8u0JA+/fQ6hbd5ixFmV2rFgb/p9s4xeguOgc02TwkGuGfGFilKmb2FTa
 1DrPD22p59B38bwU89zpiaooJI89iUuIFBN+QxFtcoTMkONBggz4aFSWSdAdKujHoaWJ
 oyIJzfpgs2hXPdkHMRyLsBwMeEZgtbhlyVLTBHucFp+jFhzdlpXv1gIVNEs/OTTzifRK
 rn3Q==
X-Gm-Message-State: AOJu0YzyOCelaIt1CkCGJoaeMjLxvIL2HXxtN++18DLZ/OrqiimTpLpS
 KH5EMBBf+j4JB4oJ5JH3Mt4/5kY3iRPp76wNhL+/FMo9fohuFc2psXUEEmtlB6Y4BXq9/PG3SB2
 s3A==
X-Google-Smtp-Source: AGHT+IEs5kEJ9yciM/k7fJ0PxaQEBwJepAzWhAJE4pZM2+vMvXnS1DI6d9pjLX7ZnjiN7BkCZbf3hg==
X-Received: by 2002:a05:6214:daf:b0:68c:5d50:1b32 with SMTP id
 h15-20020a0562140daf00b0068c5d501b32mr10200qvh.47.1706656609465; 
 Tue, 30 Jan 2024 15:16:49 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 op9-20020a056214458900b0068c4b6000ccsm2902903qvb.121.2024.01.30.15.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:16:49 -0800 (PST)
Date: Tue, 30 Jan 2024 23:16:48 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Nirmoy Das <nirmoy.das@linux.intel.com>
Subject: Re: [PATCH v3 02/16] drm/i915: Print memory region info during probe
Message-ID: <ZbmDYGb9SEcbDndB@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-3-ville.syrjala@linux.intel.com>
 <22e16744-0eb5-49f3-a18c-0009c860bab2@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <22e16744-0eb5-49f3-a18c-0009c860bab2@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 11:20:37AM +0100, Nirmoy Das wrote:
> 
> On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Dump the details about every memory region into dmesg at probe time.
> > Avoids having to dig those out from random places when debugging stuff.
> > 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>


