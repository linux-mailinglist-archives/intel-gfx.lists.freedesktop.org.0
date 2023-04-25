Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533FD6EE20B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 14:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680DC10E20B;
	Tue, 25 Apr 2023 12:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F324410E20B
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 12:44:18 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id
 e9e14a558f8ab-316d901b2ecso68635ab.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 05:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1682426658; x=1685018658;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=te/AU6YD3Nrp06W+/L24htOInvAS1q7FQ+X/iKWkuds=;
 b=K1ZWUUchq0Erw5U3Nvwwr6Mo6pQI0pLwySLG1iZlTS2NlkiPcqJL6ZJGTahZwp2eQL
 /fH5bojhLzWVrV5CCJg0gCzeyrpiaOiezhLx5FwHPvf5uARnYifDwuR2i54acxR2k9hg
 nfpIzgS+HrrFFAdD6nCGFJQXjJp9C//n46xY6fUNcuh8TXGFbjHw+O1v9F8NGO1xdXtw
 rrqR50Cf3+cRIVwbCVQtuAKHYwlfdtvhwG7yHD8loc3QydQOS3HSokGELGvZ5RO2ijuq
 lvKUiasZ9Iei9+KGhP9vcZaopFFCpvWhg3RuFBfr12ca4l6sfB7Mq+seYpX2lm48sA+d
 eAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682426658; x=1685018658;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=te/AU6YD3Nrp06W+/L24htOInvAS1q7FQ+X/iKWkuds=;
 b=lAP/qakpAiBpcmNHwGb0kF5s3t+Ny2ZfRO7QR7qNHPWFNThcRsikC0t0nHB03G+Gg2
 iEnCjTCf8SROiC8l7s9uxOpBZSo+jlHMFJzqWPUMkhMkjFxlRTKSVQLgHFCOuwH1S8dZ
 U3jve+rEjltSHX0fCow4zxmCejIwrNDvVofP388sjzlvAIcqYO93CmT+eN5G9SY8OPc5
 Iv0tqXXw2n2oe1hcUeP4eAjlZa29MPmkiqqC+9q6w2V9iSLLTntMVfHWl/rKP1Qo5B4O
 IhpuBHyK6VpkcwvA4rtyQC/Fh/4w+95TKKCk5MiuPFkEpEw3FJ5ZQMEGcYrKvlGTZNZ9
 WalA==
X-Gm-Message-State: AC+VfDwAgNDJE3z7mMp1rtwYEcR3F5TIjodvXuiua41c3tPOWr+ofJnW
 B6NJe2akE8WKwsjt7+KGCxBURuWHa09W0AiwK8QDtg==
X-Google-Smtp-Source: ACHHUZ74AQK+Hh0UHK0Buv7tEFBp2Kr/Sz+rPOmb/ycOMlzaR8VN8UEyIksEFlfuHPAoisNNupP/MT4jPxfZHdEgMuk=
X-Received: by 2002:a05:6e02:1aaf:b0:313:93c8:e71f with SMTP id
 l15-20020a056e021aaf00b0031393c8e71fmr174663ilv.19.1682426657965; Tue, 25 Apr
 2023 05:44:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230224-track_gt-v8-0-4b6517e61be6@intel.com>
 <20230224-track_gt-v8-3-4b6517e61be6@intel.com>
In-Reply-To: <20230224-track_gt-v8-3-4b6517e61be6@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Tue, 25 Apr 2023 14:44:06 +0200
Message-ID: <CANn89iLE5fVEom+VgcOtc4DdceYDNj0ftfkd4NjjmTi1LpaDzQ@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v8 3/7] lib/ref_tracker: add printing to
 memory buffer
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 David Airlie <airlied@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 25, 2023 at 12:06=E2=80=AFAM Andrzej Hajda <andrzej.hajda@intel=
.com> wrote:
>
> Similar to stack_(depot|trace)_snprint the patch
> adds helper to printing stats to memory buffer.
> It will be helpful in case of debugfs.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Eric Dumazet <edumazet@google.com>
