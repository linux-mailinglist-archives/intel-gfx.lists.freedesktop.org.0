Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C4E525706
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 23:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3EBD10F9C9;
	Thu, 12 May 2022 21:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAAE710F9E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 21:30:19 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id v11so5952594pff.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 14:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:user-agent:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=BIPrJxqbXAd+295s29/rrMW5CvpwBx6wdUxINV63DAg=;
 b=Zg5truXSUHQKziPjOTc4E2O6KDJH+6qHbxL+9Law57qzVH6SVKpT2voeDHzzyvzj5b
 uggFLFxEqgtXYEb9pQplsYNKt0VUIvBSB/e/jlS+B4YlmJCuXVMoilgQjYogEfO1ShEk
 8oRI17+p6b147utmqg5HMg+CqdgII9RBkSRNc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:user-agent:in-reply-to
 :references:message-id:mime-version:content-transfer-encoding;
 bh=BIPrJxqbXAd+295s29/rrMW5CvpwBx6wdUxINV63DAg=;
 b=sMoBmQnFBSzSxcEyQHhKCtMzuVnZUnOYVy3RlEmSX21j0q0IttVeJguZ+O5P6vGJjI
 kCIRpkld/w7Xyf0PQKB9iwU7W3+nhYpnkWah2qJwVeLrynbwdjAxIZBUp3wu/QMg8ayA
 dnE1rXVW1y0F7Ovr2OvM7M/JvuOtFkJD05tmysNcG3rwFoBXz0hN4W2+VjkhyUz4UZ8P
 FiLmNDOINc1snT0jFYZ7lFSC3UKaLNxrsdkxo+Ehui99sRaR55qsqp1+fgNwZlt1pipW
 ywhcMSm/kEefNU4Z39G9MaN18M278JyguuPo/q1yTIvrVt7IJ8iIpLfo8+w1I2CZcYBd
 57Sw==
X-Gm-Message-State: AOAM531ft2dY3Q8/qYAAZXqpJeN2xinwKYO+r8S7epiJ97BqOUKwbaeY
 gqMHDVPO2sMLDGO2h2OJkZ/zdA==
X-Google-Smtp-Source: ABdhPJzDDlG5ka/o2WcllRfswJSM7NjDXKFvt55zHZ+GNjiCVBiiEna26O0pZFz3O+Zji3jW2c7Ibw==
X-Received: by 2002:a05:6a00:c8f:b0:510:60cf:55fa with SMTP id
 a15-20020a056a000c8f00b0051060cf55famr1314141pfv.37.1652391019468; 
 Thu, 12 May 2022 14:30:19 -0700 (PDT)
Received: from [127.0.0.1] (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 q16-20020a170902edd000b0015f3d8759e4sm350899plk.167.2022.05.12.14.30.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 May 2022 14:30:19 -0700 (PDT)
Date: Thu, 12 May 2022 14:30:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <20220512211704.3158759-1-nathan@kernel.org>
References: <20220512211704.3158759-1-nathan@kernel.org>
Message-ID: <DEB6A9AC-845E-4656-A596-E6341D3C287F@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix CFI violation with
 show_dynamic_id()
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
Cc: Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 llvm@lists.linux.dev, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 patches@lists.linux.dev, Sami Tolvanen <samitolvanen@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On May 12, 2022 2:17:04 PM PDT, Nathan Chancellor <nathan@kernel=2Eorg> wr=
ote:
>When an attribute group is created with sysfs_create_group(), the
>->sysfs_ops() callback is set to kobj_sysfs_ops, which sets the ->show()
>callback to kobj_attr_show()=2E kobj_attr_show() uses container_of() to
>get the ->show() callback from the attribute it was passed, meaning the
>->show() callback needs to be the same type as the ->show() callback in
>'struct kobj_attribute'=2E
>
>However, show_dynamic_id() has the type of the ->show() callback in
>'struct device_attribute', which causes a CFI violation when opening the
>'id' sysfs node under drm/card0/metrics=2E This happens to work because
>the layout of 'struct kobj_attribute' and 'struct device_attribute' are
>the same, so the container_of() cast happens to allow the ->show()
>callback to still work=2E
>
>Change the type of show_dynamic_id() to match the ->show() callback in
>'struct kobj_attributes' and update the type of sysfs_metric_id to
>match, which resolves the CFI violation=2E
>
>Fixes: f89823c21224 ("drm/i915/perf: Implement I915_PERF_ADD/REMOVE_CONFI=
G interface")
>Signed-off-by: Nathan Chancellor <nathan@kernel=2Eorg>

This matches my own investigation into the error=2E Thanks for putting the=
 patch together! :)

Reviewed-by: Kees Cook <keescook@chromium=2Eorg>


--=20
Kees Cook
