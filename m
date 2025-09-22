Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19938B8ED29
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 04:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D9310E008;
	Mon, 22 Sep 2025 02:50:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZuxQ/Cae";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 777DD10E008
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Sep 2025 02:50:42 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id
 d9443c01a7336-279e2554c8fso1761925ad.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Sep 2025 19:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758509442; x=1759114242; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=71P3yjSvlsRNaitv6i3BCZndUZ9mqOZcMmCGCFKI3Zw=;
 b=ZuxQ/CaeiIK72ZRnObLX1CeqZm8/3O8Rrf6+4l+56/NBW3gqeEVftT3PsDsGid1UAY
 vOd9l/EGiuZ5GOQz6ajjgY8AK0LhPjbbm5g0Q/V4qdmQ4abR/zn/gHBCsnGGM/t43Ksx
 TWcO7787KjjDuHJkOhHH8Yf1zInDJfpnH2ELjmRVPlOXKXOfegxv0fbAfYeg7NEJspuk
 vhX1byOYFjCqbb5OIVs37yjmNTLWRIdJznNessg+COrKzs2uII+toC3pj4UlhqcmTy6y
 N1AKKGSWJ5jiFEnpLAQYIqcye2PMqANKR6kaD1o5Ps9RDguBaw4J3JFfkVeH3/i4J4J+
 MP8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758509442; x=1759114242;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=71P3yjSvlsRNaitv6i3BCZndUZ9mqOZcMmCGCFKI3Zw=;
 b=OpRcHvlgquo7c388OQqkRmxm57G8DRlTKt1Zw/NTlb4cyH2V+ErJFJr+dk8CBF7qDL
 gIXnojpNKyiXI0O/dhgMG3iKN8P/tRpndf/BT2eH0eTcFMrYBelLAqPeAwLZu67KfLSM
 3s/02fnv/mQ7Wz/a/MEmBxxNZ5qnUOA1N0nXgqTzXvUQzd82om6sg6C/aH5Zb7R5z8/4
 J2iIotcRvM2aSB2lQJPSUbdM16IGqB63CFnzlpQC4wF/yARFkj/CXYDZ+T/HMJkn2jhu
 X35EPsrlV0N+sgvWz2b6u8eDkUL4ENfwgAqM94KvuKmd4xAsNL8dzE3yGrOcNPcf9tu9
 +r4A==
X-Gm-Message-State: AOJu0YzCityVKdj8TTTP8mw/cNb+TlJ+Vru21sjBivqBrJBKlSFJ91s8
 2bBp3pnZqEJ4JSuKDSyjQ9Dcp8Yjz9EKETh3Aq0D12f+jeOUXkzdkVHh
X-Gm-Gg: ASbGncvzM0XMZudUbKG8x+CwF2R6iUOF5aMAUDLaO3jzG4pskRFUS04DwshKPPWG8mV
 NakbqlevwfdTXQZTWPrBSalU3edS9ISk43fXHNKnOb6eMZNRhGxsib35baXDEHeJwcjPnug+qPz
 fRjl+++OwcpzHrFibHeWCdm1u7bqByxGxYF01GjLS/4I3mNk57yXZFt9DoCHImbyKBRs/YxlK8f
 SaCUF4RiA/RgUnGuGmVi6r7h8FLH6eDUwNn/U7tQNJPZo2mxR2b3RsB9+wXAhkLsyohW0fGYzmf
 nvp2LLi4+bg7zuaGhmx9Mr3WFVZuySfk0Pessie7QOui5LVA/nyGjEjaVc29LiL7juPIkYoL/79
 CoY942cOu8+O7XBdNTpoNknQvSxB8
X-Google-Smtp-Source: AGHT+IGefVUetHQWeYI1b3B859IUVYsKGj4SLx4+oeYcULo2phWUAjZl3ugm+FWUrgLe11nucT+tSg==
X-Received: by 2002:a17:902:d2cf:b0:268:baa6:94ba with SMTP id
 d9443c01a7336-269ba58ec9emr126713505ad.53.1758509441843; 
 Sun, 21 Sep 2025 19:50:41 -0700 (PDT)
Received: from localhost ([2400:2650:24e0:bf00:6647:e402:ac7:7283])
 by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-26b59d6538bsm81111795ad.82.2025.09.21.19.50.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Sep 2025 19:50:41 -0700 (PDT)
Date: Mon, 22 Sep 2025 11:50:39 +0900
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 alex.zuo@intel.com, andi.shyti@linux.intel.com
Subject: Re: [PATCH] drm/i915/gvt: Simplify case switch in intel_vgpu_ioctl
Message-ID: <aNC5f_W1q3JBtIlI@dell-wzy>
References: <20250918214515.66926-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918214515.66926-2-jonathan.cavitt@intel.com>
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

On Thu, Sep 18, 2025 at 09:45:16PM +0000, Jonathan Cavitt wrote:
> We do not need a case switch to check cap_type_id in intel_vgpu_ioctl
> for various reasons (it's impossible to hit the default case in the
> current code, there's only one valid case to check, the error handling
> code overlaps in both cases, etc.).  Simplify the case switch into a
> single if statement.  This has the additional effect of simplifying the
> error handling code.
> 
> Note that it is still currently impossible for
> 'if (cap_type_id == VFIO_REGION_INFO_CAP_SPARSE_MMAP)'
> to fail, but we should still guard against the possibility of this
> changing in the future.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> ---

Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>
